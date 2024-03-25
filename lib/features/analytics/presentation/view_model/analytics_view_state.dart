import 'package:budget_tracker/features/analytics/domain/entities/analytics/analytics.dart';

enum TimeInterval { week, month, year }

enum Category { expenses, income }

enum Chart { liner, pie }

class AnalyticsViewState {
  final TimeInterval interval;
  final Category category;
  final Chart chart;
  final AnalyticsDataState analyticsData;

  AnalyticsViewState({
    required this.interval,
    required this.category,
    required this.chart,
    required this.analyticsData,
  });
}

sealed class AnalyticsDataState {}

class AnalyticsDataLoadingState extends AnalyticsDataState {}

class AnalyticsDataErrorState extends AnalyticsDataState {}

class AnalyticsDataReadyState extends AnalyticsDataState {
  AnalyticsDataReadyState({
    required this.dataAnalytics,
  });

  final Analytics dataAnalytics;
}
