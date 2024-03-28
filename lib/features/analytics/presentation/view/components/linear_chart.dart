import 'dart:math';

import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/analytics/presentation/view_model/analytics_view_model.dart';
import 'package:budget_tracker/features/analytics/presentation/view_model/analytics_view_state.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LineChartWidget extends ConsumerWidget {
  const LineChartWidget({super.key});

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
      pointsExpenses.add(FlSpot(i.toDouble(), barsExpenses[i].sum * (-1)));
    }

    double maxIncome = pointsIncome.isNotEmpty
        ? pointsIncome.reduce((a, b) => a.y > b.y ? a : b).y
        : 0.0;

    double minExpenses = pointsExpenses.isNotEmpty
        ? pointsExpenses.reduce((a, b) => a.y < b.y ? a : b).y
        : 0.0;

    return (pointsIncome.isNotEmpty || pointsExpenses.isNotEmpty)
        ? LineChart(
            LineChartData(
              gridData: const FlGridData(
                show: false,
              ),
              minX: 0,
              minY: 0,
              maxX: barsIncome.length.toDouble(),
              maxY: max(maxIncome, minExpenses * (-1)) * 1.2,
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
              lineTouchData: const LineTouchData(enabled: false),
              lineBarsData: [
                LineChartBarData(
                  spots: pointsIncome,
                  isCurved: true,
                  color: context.colors.linearChart1,
                  barWidth: 2,
                  dotData: const FlDotData(show: false),
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
                  barWidth: 2,
                  dotData: const FlDotData(show: false),
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
          )
        : const Text('data');
  }

  SideTitles leftTitles() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        interval: 1,
        reservedSize: 50,
        showTitles: true,
      );

  Text leftTitleWidgets(double value, TitleMeta meta) {
    int period = (meta.max - meta.min) ~/ 7 + 1;

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
