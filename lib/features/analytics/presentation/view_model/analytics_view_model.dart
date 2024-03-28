import 'package:budget_tracker/features/analytics/domain/entities/analytics/analytics.dart';
import 'package:budget_tracker/features/analytics/domain/entities/category_anajytics/category_analytics.dart';
import 'package:budget_tracker/features/analytics/domain/repositories/analytics_repository.dart';
import 'package:budget_tracker/features/analytics/interval/analytics_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:budget_tracker/features/analytics/presentation/view_model/analytics_view_state.dart';

// enum Category { all, expenses, income }

final analyticsModelProvider =
    StateNotifierProvider<AnalyticsViewModel, AnalyticsViewState>(
  (ref) => AnalyticsViewModel(
    AnalyticsViewState(
      interval: TimeInterval.week,
      category: MoneyFlow.expenses,
      chart: Chart.liner,
      analyticsData: AnalyticsDataLoadingState(),
    ),
    ref.read(analyticsRepositoryProvider),
  )..changeInterval(TimeInterval.week),
);

final currentInterval = Provider((ref) => ref.watch(analyticsModelProvider));

class AnalyticsViewModel extends StateNotifier<AnalyticsViewState> {
  final AnalyticsRepository _repositoryCategory;
  late Analytics dataAnalytics;
  late Analytics dataAnalyticsCurrent;
  TimeInterval interval = TimeInterval.month;
  MoneyFlow category = MoneyFlow.expenses;
  Chart chart = Chart.liner;

  AnalyticsViewModel(
    AnalyticsViewState state,
    this._repositoryCategory,
  ) : super(state);

  void changeCategory(MoneyFlow category) {
    this.category = category;
    dataAnalyticsCurrent = dataAnalytics;
    if (category == MoneyFlow.income) {
      List<CategoryAnalytics> incomeCategories = dataAnalytics.categories
          .where(
            (category) => category.sum > 0,
          )
          .toList();

      dataAnalyticsCurrent =
          Analytics(bars: dataAnalytics.bars, categories: incomeCategories);
    }
    if (category == MoneyFlow.expenses) {
      List<CategoryAnalytics> incomeCategories = dataAnalytics.categories
          .where((category) => category.sum < 0)
          .toList();

      dataAnalyticsCurrent =
          Analytics(bars: dataAnalytics.bars, categories: incomeCategories);
    }
    state = AnalyticsViewState(
      interval: interval,
      category: category,
      chart: chart,
      analyticsData: AnalyticsDataReadyState(
        dataAnalytics: dataAnalyticsCurrent,
      ),
    );
  }

  void changeChart(Chart chart) {
    this.chart = chart;
    state = AnalyticsViewState(
      interval: interval,
      category: category,
      chart: chart,
      analyticsData: AnalyticsDataReadyState(
        dataAnalytics: dataAnalyticsCurrent,
      ),
    );
  }

  void changeInterval(TimeInterval interval) async {
    this.interval = interval;
    try {
      state = AnalyticsViewState(
        interval: interval,
        category: category,
        chart: chart,
        analyticsData: AnalyticsDataLoadingState(),
      );

      dataAnalytics = await _repositoryCategory.getAnalytics(interval.name);
      dataAnalyticsCurrent = dataAnalytics;
      if (category == MoneyFlow.income) {
        List<CategoryAnalytics> incomeCategories = dataAnalytics.categories
            .where((category) => category.sum > 0)
            .toList();

        dataAnalyticsCurrent =
            Analytics(bars: dataAnalytics.bars, categories: incomeCategories);
      }
      if (category == MoneyFlow.expenses) {
        List<CategoryAnalytics> incomeCategories = dataAnalytics.categories
            .where((category) => category.sum < 0)
            .toList();

        dataAnalyticsCurrent =
            Analytics(bars: dataAnalytics.bars, categories: incomeCategories);
      }
      state = AnalyticsViewState(
        interval: interval,
        category: category,
        chart: chart,
        analyticsData: AnalyticsDataReadyState(
          dataAnalytics: dataAnalyticsCurrent,
        ),
      );
    } catch (e) {
      state = AnalyticsViewState(
        interval: interval,
        category: category,
        chart: chart,
        analyticsData: AnalyticsDataErrorState(),
      );
    }
  }
}
