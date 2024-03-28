import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:budget_tracker/features/check/domain/entities/check.dart';
import 'package:budget_tracker/features/operations/domain/entities/operation.dart';

sealed class HomeViewState {}

class HomeViewLoadingState extends HomeViewState {}

class HomeViewErrorState extends HomeViewState {}

class HomeViewDataState extends HomeViewState {
  HomeViewDataState({
    required this.dataAccount,
    required this.dataOperations,
    required this.dataCategory,
  });

  final Check dataAccount;
  final List<Operation> dataOperations;
  final List<Category> dataCategory;
}
