import 'package:budget_tracker/features/operations/domain/entities/operation.dart';

import 'package:budget_tracker/features/check/domain/entities/check.dart';

enum Category { all, expenses, income }

sealed class AnalyticsViewState {}

class AnalyticsViewLoadingState extends AnalyticsViewState {}

class AnalyticsViewErrorState extends AnalyticsViewState {}

class AnalyticsViewDataState extends AnalyticsViewState {
  AnalyticsViewDataState({
    required this.dataCategory,
    required this.dataOperations,
    required this.category,
  });

  final Category category;
  final List<Check> dataCategory;
  final List<Operation> dataOperations;
}
