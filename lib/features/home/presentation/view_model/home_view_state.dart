import 'package:budget_tracker/features/operations/domain/entities/operation.dart';

import 'package:budget_tracker/features/check/domain/entities/check.dart';

sealed class HomeViewState {}

class HomeViewLoadingState extends HomeViewState {}

class HomeViewErrorState extends HomeViewState {}

class HomeViewDataState extends HomeViewState {
  HomeViewDataState({
    required this.dataAccount,
    required this.dataOperations,
  });

  final List<Check> dataAccount;
  final List<Operation> dataOperations;
}
