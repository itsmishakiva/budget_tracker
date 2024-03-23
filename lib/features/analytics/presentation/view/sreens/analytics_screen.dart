import 'package:auto_route/annotations.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/analytics/presentation/view_model/analytics_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';

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
                  style: context.textStyles.subtitle1,
                ),
                const Spacer(),
                _intervalButton(context, 'Day'),
                _intervalButton(context, 'Week'),
                _intervalButton(context, 'Year'),
              ],
            ),
          ),
          SizedBox(
            height: 250,
            width: 350,
            child: PageView(
              children: const [
                _LineChartWidget(),
                _PieChartWithLegend(),
              ],
            ),
          ),
          const _BottomBar(),
          Padding(
            padding: const EdgeInsets.only(top: 19.0),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                color: context.colors.disabled,
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
                        _categoryButton(context, Category.all, ref),
                        _categoryButton(context, Category.expenses, ref),
                        _categoryButton(context, Category.income, ref),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _intervalButton(BuildContext context, String interval) {
  return TextButton(
    onPressed: () {},
    child: Text(
      interval,
      style: context.textStyles.subtitle2,
    ),
  );
}

Widget _categoryButton(BuildContext context, Category category, WidgetRef ref) {
  final notifier = ref.watch(categoryProvider.notifier);
  var category0 = ref.watch(currentCategory);

  String categoryName = category.name.toString();
  String categoryNameCapitalized =
      categoryName.substring(0, 1).toUpperCase() + categoryName.substring(1);

  return InkWell(
    onTap: () {
      notifier.change(category);
    },
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color:
            category0 == category ? context.colors.accent : Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        categoryNameCapitalized,
        style: category0 == category
            ? context.textStyles.subtitle2
            : context.textStyles.subtitle3,
      ),
    ),
  );
}

class _LineChartWidget extends StatelessWidget {
  const _LineChartWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: LineChart(
        LineChartData(
          minX: 0,
          minY: 0,
          maxX: 10,
          maxY: 10,
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
              spots: [
                const FlSpot(0, 3),
                const FlSpot(3, 9),
                const FlSpot(5, 4),
                const FlSpot(8, 2),
                const FlSpot(10, 9),
              ],
              isCurved: true,
              color: context.colors.backgroundPrimary,
              barWidth: 3,
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    context.colors.backgroundPrimary.withOpacity(0.3),
                    context.colors.backgroundPrimary.withOpacity(0),
                  ],
                ),
              ),
            ),
            LineChartBarData(
              spots: [
                const FlSpot(0, 7),
                const FlSpot(3, 2),
                const FlSpot(5, 8),
                const FlSpot(8, 1),
                const FlSpot(10, 9),
              ],
              isCurved: true,
              color: context.colors.errorLight,
              barWidth: 3,
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    context.colors.errorLight.withOpacity(0.3),
                    context.colors.errorLight.withOpacity(0),
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
        reservedSize: 40,
        showTitles: true,
      );

  Text leftTitleWidgets(double value, TitleMeta meta) {
    String text = switch (value.toInt()) {
      1 => '5',
      2 => '10',
      3 => '15',
      4 => '20',
      5 => '25',
      6 => '30',
      7 => '35',
      _ => '',
    };

    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Colors.grey.shade300,
      ),
    );
  }
}

class _BottomBar extends StatelessWidget {
  const _BottomBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 0),
      child: SizedBox(
        height: 30,
        width: 320,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            _Dates(date: '1th week'),
            _Dates(date: '1th week'),
            _Dates(date: '1th week'),
            _Dates(date: '1th week'),
            _Dates(date: '1th week'),
          ],
        ),
      ),
    );
  }
}

class _Dates extends StatelessWidget {
  const _Dates({
    required this.date,
  });

  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
          border: Border.all(
            color: context.colors.textSecondary,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 10),
          child: Text(
            date,
            style: context.textStyles.subtitle2,
          ),
        ),
      ),
    );
  }
}

class _PieChartWithLegend extends StatelessWidget {
  const _PieChartWithLegend();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                    color: Colors.green,
                    value: 25,
                    title: '25%',
                    radius: 80,
                  ),
                  PieChartSectionData(
                    color: Colors.blue,
                    value: 15,
                    title: '15%',
                    radius: 80,
                  ),
                  PieChartSectionData(
                    color: Colors.red,
                    value: 30,
                    title: '30%',
                    radius: 80,
                  ),
                  PieChartSectionData(
                    color: Colors.orange,
                    value: 20,
                    title: '20%',
                    radius: 80,
                  ),
                ],
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
                  _legendItem(color: Colors.green, title: '25%'),
                  _legendItem(color: Colors.blue, title: '15%'),
                  _legendItem(color: Colors.red, title: '30%'),
                  _legendItem(color: Colors.orange, title: '20%'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _legendItem({required Color color, required String title}) {
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
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
