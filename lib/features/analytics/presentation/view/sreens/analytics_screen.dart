import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:budget_tracker/core/internal/logger_provider.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/analytics/domain/entities/category_anajytics/category_analytics.dart';
import 'package:budget_tracker/features/analytics/presentation/view/components/categoty_analytics_screen.dart';
import 'package:budget_tracker/features/analytics/presentation/view_model/analytics_view_model.dart';
import 'package:budget_tracker/features/analytics/presentation/view_model/analytics_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:logging/logging.dart';

@RoutePage()
class AnalyticsScreen extends ConsumerWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      backgroundColor: context.colors.accent,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
            child: Row(
              children: [
                Text(
                  'Stats',
                  style: context.textStyles.bodyTextSurface,
                ),
                const Spacer(),
                const _IntervalButton(interval: TimeInterval.week),
                const _IntervalButton(interval: TimeInterval.month),
                const _IntervalButton(interval: TimeInterval.year),
              ],
            ),
          ),
          Expanded(child: _Body()),
        ],
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(analyticsModelProvider).analyticsData;
    final chart = ref.watch(analyticsModelProvider).chart;
    PageController pageController =
        PageController(initialPage: chart == Chart.liner ? 0 : 1);
    switch (state) {
      case AnalyticsDataLoadingState _:
        ref.read(loggerProvider).log(Level.INFO, 'Hello!');
        return Center(
          child: CircularProgressIndicator(
              color: context.colors.backgroundPrimary),
        );
      case AnalyticsDataErrorState _:
        return const Center(
          child: Icon(Icons.error),
        );
      case AnalyticsDataReadyState _:
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: 250,
                // width: 480,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (int page) {
                    if (page == 0)
                      ref
                          .read(analyticsModelProvider.notifier)
                          .changeChart(Chart.liner);
                    if (page == 1)
                      ref
                          .read(analyticsModelProvider.notifier)
                          .changeChart(Chart.pie);
                  },
                  children: [
                    _LineChartWidget(),
                    const _PieChartWithLegend(),
                  ],
                ),
              ),
            ),
            // const _BottomBar(),
            _NavigationPoints(),
            Padding(
              padding: const EdgeInsets.only(top: 19.0),
              child: Container(
                height: 415,
                decoration: BoxDecoration(
                  color: context.colors.backgroundPrimary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20,
                      ),
                      child: Row(
                        children: [
                          _categoryButton(context, Category.expenses, ref),
                          _categoryButton(context, Category.income, ref),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 320,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.8,
                        ),
                        itemCount: state.dataAnalytics.categories.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GridTile(
                            child: CategoryAnalyticsScreen(
                                categoryAnalytics:
                                    state.dataAnalytics.categories[index]),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
    }
  }
}

class _IntervalButton extends ConsumerWidget {
  final TimeInterval interval;

  const _IntervalButton({required this.interval});

  String get intervalName => interval.name;

  String get categoryNameCapitalized =>
      intervalName.substring(0, 1).toUpperCase() + intervalName.substring(1);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var state = ref.watch(analyticsModelProvider);

    return TextButton(
      onPressed: state.analyticsData is AnalyticsDataLoadingState
          ? null
          : () {
              ref
                  .read(analyticsModelProvider.notifier)
                  .changeInterval(interval);
            },
      child: Text(
        categoryNameCapitalized,
        style: state.interval == interval
            ? context.textStyles.subtitle4
            : context.textStyles.subtitle5,
      ),
    );
  }
}

Widget _categoryButton(BuildContext context, Category category, WidgetRef ref) {
  final notifier = ref.watch(analyticsModelProvider.notifier);
  var categoryState = ref.watch(analyticsModelProvider).category;

  String categoryName = category.name;
  String categoryNameCapitalized =
      categoryName.substring(0, 1).toUpperCase() + categoryName.substring(1);

  return InkWell(
    onTap: () {
      notifier.changeCategory(category);
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: categoryState == category
            ? context.colors.accent
            : Colors.transparent,
        // color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        categoryNameCapitalized,
        style: categoryState == category
            ? context.textStyles.bodyTextSurface3
            : context.textStyles.subtitle3,
        // style: context.textStyles.subtitle3,
      ),
    ),
  );
}

class _LineChartWidget extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bars = (ref.watch(analyticsModelProvider).analyticsData
            as AnalyticsDataReadyState)
        .dataAnalytics
        .bars;
    final barsIncome = bars.where((bar) => bar.sum > 0).toList();
    final barsExpenses = bars.where((bar) => bar.sum < 0).toList();

    List<FlSpot> pointsIncome = [];
    List<FlSpot> pointsExpenses = [];

    for (int i = 0; i < barsIncome.length; i++) {
      pointsIncome.add(FlSpot(i.toDouble(), barsIncome[i].sum));
    }

    for (int i = 0; i < barsExpenses.length; i++) {
      pointsExpenses.add(FlSpot(i.toDouble(), barsExpenses[i].sum*(-1)));
    }

    double maxIncome = pointsIncome.isNotEmpty
        ? pointsIncome.reduce((a, b) => a.y > b.y ? a : b).y
        : 0.0;

    double minExpenses = pointsExpenses.isNotEmpty
        ? pointsExpenses.reduce((a, b) => a.y < b.y ? a : b).y
        : 0.0;

    return Container(
      padding: const EdgeInsets.only(top: 50),
      child: LineChart(
        LineChartData(
          minX: 0,
          minY: 0,
          maxX: barsIncome.length.toDouble(),
          maxY: max(maxIncome, minExpenses*(-1)) * 1.2,
          borderData: FlBorderData(
            show: false,
          ),
          titlesData: FlTitlesData(
            rightTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: const AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            leftTitles: AxisTitles(sideTitles: leftTitles()),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: pointsIncome,
              isCurved: true,
              color: context.colors.linearChart1,
              barWidth: 3,
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    context.colors.linearChart1.withOpacity(0.3),
                    context.colors.linearChart1.withOpacity(0),
                  ],
                ),
              ),
            ),
            LineChartBarData(
              spots: pointsExpenses,
              isCurved: true,
              color: context.colors.linearChart2,
              barWidth: 3,
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    context.colors.linearChart2.withOpacity(0.3),
                    context.colors.linearChart2.withOpacity(0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        interval: 1,
        reservedSize: 50,
        showTitles: true,
      );

  Text leftTitleWidgets(double value, TitleMeta meta) {
    int period = (meta.max - meta.min) ~/ 7+1;

    return Text(
      (value % period == 0 && value > 0) ? (value).toInt().toString() : '',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Colors.grey.shade400,
      ),
    );
  }
}
//
// class _BottomBar extends StatelessWidget {
//   const _BottomBar();
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 10.0, right: 0),
//       child: SizedBox(
//         height: 30,
//         width: 320,
//         child: ListView(
//           scrollDirection: Axis.horizontal,
//           children: const [
//             _Dates(date: '1th week'),
//             _Dates(date: '1th week'),
//             _Dates(date: '1th week'),
//             _Dates(date: '1th week'),
//             _Dates(date: '1th week'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _Dates extends StatelessWidget {
//   const _Dates({
//     required this.date,
//   });
//
//   final String date;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 4),
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: Colors.transparent,
//           border: Border.all(
//             color: context.colors.textSecondary,
//             width: 2,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
//           child: Text(
//             date,
//             style: context.textStyles.subtitle2,
//           ),
//         ),
//       ),
//     );
//   }
// }

class _PieChartWithLegend extends ConsumerWidget {
  const _PieChartWithLegend();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.read(analyticsModelProvider.notifier).changeChart(Chart.pie);

    var categories = (ref.watch(analyticsModelProvider).analyticsData
            as AnalyticsDataReadyState)
        .dataAnalytics
        .categories;

    // List<CategoryAnalytics> expensesCategories =
    //     categories.where((category) => category.sum < 0).toList();

    var factor = 100;

    List<CategoryAnalytics> categoryList = List.from(categories);

    double totalSum = categoryList.fold(
        0, (previousValue, category) => previousValue + category.sum);

    categoryList.sort((a, b) => a.sum.compareTo(b.sum));

    List<PieChartSectionData> sections = [];

    if (categories.length <= 4) {
      sections = categories.map((category) {
        final double value = factor * (category.sum / totalSum);
        return PieChartSectionData(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              context.colors.graphColors[categoryList.indexOf(category)],
              context
                  .colors.graphDarkColors[categoryList.indexOf(category)],
            ],
          ),
          value: value,
          title: '${(value).toStringAsFixed(1)}%',
          radius: 80,
          titleStyle: context.textStyles.bodyTextSurface2,
        );
      }).toList();
    } else {
      sections = categoryList.sublist(0, 4).map((category) {
        final double value = factor * (category.sum / totalSum);
        return PieChartSectionData(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              context.colors.graphColors[categoryList.indexOf(category)],
              context
                  .colors.graphDarkColors[categoryList.indexOf(category)],
            ],
          ),
          value: value,
          title: '${(value).toStringAsFixed(1)}%',
          radius: 80,
          titleStyle: context.textStyles.bodyTextSurface2,
        );
      }).toList();

      double otherSum = 0.0;
      for (int i = 4; i < categoryList.length; i++) {
        otherSum += categoryList[i].sum;
      }
      final double otherValue = factor * (otherSum / totalSum);
      sections.add(
        PieChartSectionData(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              context.colors.graphColors[4],
              context.colors.graphDarkColors[4],
            ],
          ),
          value: otherValue,
          title: '${(otherValue).toStringAsFixed(1)}%',
          radius: 80,
          titleStyle: context.textStyles.bodyTextSurface2,
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 10),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: PieChart(
              PieChartData(
                sections: sections,
                pieTouchData: PieTouchData(
                  touchCallback: (event, response) {},
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0;
                      i < min(4, categoryList.length);
                      i++) // Перебираем первые четыре категории
                    _legendItem(
                      context,
                      color: context.colors.graphColors[i],
                      title: categoryList[i].category.title.toString(),
                    ),
                  if (categoryList.length >
                      4) // Если категорий больше 4, добавляем категорию "Other"
                    _legendItem(context,
                        color: context.colors.graphColors[4], title: 'Other'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _legendItem(BuildContext context,
      {required Color color, required String title}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            color: color,
          ),
          const SizedBox(width: 8),
          Text(
            title,
            style: context.textStyles.bodyTextSurface2,
          ),
        ],
      ),
    );
  }
}

class _NavigationPoints extends ConsumerWidget {
  Widget navigationPoint(BuildContext context, bool isFilled) {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isFilled ? context.colors.backgroundPrimary : Colors.transparent,
        border: Border.all(
            color: context.colors.backgroundPrimary,
            width: 2.0), // Цветная граница
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var chart = ref.watch(analyticsModelProvider).chart;
    return SizedBox(
      width: 50,
      child: Center(
        child: Row(
          children: [
            navigationPoint(context, chart == Chart.liner),
            const SizedBox(
              width: 10,
            ),
            navigationPoint(context, chart == Chart.pie),
          ],
        ),
      ),
    );
  }
}
