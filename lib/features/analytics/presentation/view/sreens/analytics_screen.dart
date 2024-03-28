import 'dart:math';

import 'package:auto_route/annotations.dart';
import 'package:budget_tracker/core/internal/logger_provider.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/analytics/domain/entities/category_anajytics/category_analytics.dart';
import 'package:budget_tracker/features/analytics/presentation/view/components/categoty_analytics_screen.dart';
import 'package:budget_tracker/features/analytics/presentation/view/components/linear_chart.dart';
import 'package:budget_tracker/features/analytics/presentation/view_model/analytics_view_model.dart';
import 'package:budget_tracker/features/analytics/presentation/view_model/analytics_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:logging/logging.dart';
import 'package:rive/rive.dart';

@RoutePage()
class AnalyticsScreen extends ConsumerWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      backgroundColor: context.colors.accent,
      statusBarBrightness: Brightness.dark,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
            child: Row(
              children: [
                Text(
                  context.locale!.stats,
                  style: context.textStyles.bodyTextSurface,
                ),
                const Spacer(),
                _IntervalButton(context: context, interval: TimeInterval.week),
                _IntervalButton(context: context, interval: TimeInterval.month),
                _IntervalButton(context: context, interval: TimeInterval.year),
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
            color: context.colors.backgroundPrimary,
          ),
        );
      case AnalyticsDataErrorState _:
        return const Center(
          child: Icon(Icons.error),
        );
      case AnalyticsDataReadyState _:
        return Column(
          children: [
            SizedBox(
              height: 250,
              // width: 400,
              child: PageView(
                controller: pageController,
                onPageChanged: (int page) {
                  if (page == 0) {
                    ref
                        .read(analyticsModelProvider.notifier)
                        .changeChart(Chart.liner);
                  }
                  if (page == 1) {
                    ref
                        .read(analyticsModelProvider.notifier)
                        .changeChart(Chart.pie);
                  }
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: LineChartWidget(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: _PieChartWithLegend(),
                  ),
                ],
              ),
            ),
            // const _BottomBar(),
            _NavigationPoints(),
            Expanded(
              child: Padding(
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
                            _categoryButton(context, MoneyFlow.expenses, ref),
                            _categoryButton(context, MoneyFlow.income, ref),
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
                                    state.dataAnalytics.categories[index],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
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
  final BuildContext context;

  const _IntervalButton({required this.context, required this.interval});

  String get name => interval.name;

  String get intervalName {
    if (name == 'week') {
      return context.locale!.week;
    } else if (name == 'month') {
      return context.locale!.month;
    } else {
      return context.locale!.year;
    }
  }

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

Widget _categoryButton(
    BuildContext context, MoneyFlow category, WidgetRef ref,) {
  final notifier = ref.watch(analyticsModelProvider.notifier);
  var categoryState = ref.watch(analyticsModelProvider).category;

  String name = category.name;
  String categoryName;

  if (name == 'expenses') {
    categoryName = context.locale!.expenses;
  } else {
    categoryName = context.locale!.income;
  }

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
        categoryName,
        style: categoryState == category
            ? context.textStyles.bodyTextSurface3
            : context.textStyles.subtitle3,
        // style: context.textStyles.subtitle3,
      ),
    ),
  );
}

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
      0,
      (previousValue, category) => previousValue + category.sum,
    );

    categoryList.sort((a, b) => a.sum.compareTo(b.sum));

    List<PieChartSectionData> sections = [];

    if (categories.length <= 4) {
      sections = categories.map((category) {
        final double value = factor * (category.sum / totalSum);
        return PieChartSectionData(
          color: context.colors.graphColors[categoryList.indexOf(category)],
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
          color: context.colors.graphColors[categoryList.indexOf(category)],
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
          color: context.colors.graphColors[4],
          value: otherValue,
          title: '${(otherValue).toStringAsFixed(1)}%',
          radius: 80,
          titleStyle: context.textStyles.bodyTextSurface2,
        ),
      );
    }

    return sections.isNotEmpty
        ? SizedBox(
            height: 240,
            child: Padding(
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
                          for (int i = 0; i < min(4, categoryList.length); i++)
                            _legendItem(
                              context,
                              color: context.colors.graphColors[i],
                              title: categoryList[i].category.title.toString(),
                            ),
                          if (categoryList.length > 4)
                            _legendItem(
                              context,
                              color: context.colors.graphColors[4],
                              title: 'Other',
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  'Нет данных для графиков',
                  style: context.textStyles.headerBold3,
                ),
              ),
              const SizedBox(
                height: 220,
                child: RiveAnimation.asset(
                  'assets/error_server.riv',
                ),
              ),
            ],
          );
  }

  Widget _legendItem(
    BuildContext context, {
    required Color color,
    required String title,
  }) {
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
          SizedBox(
            width: 70,
            child: Text(
              title,
              style: context.textStyles.bodyTextSurface2,
            ),
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
          width: 2.0,
        ),
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
