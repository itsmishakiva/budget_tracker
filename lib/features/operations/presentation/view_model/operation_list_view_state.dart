import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:budget_tracker/features/operations/domain/entities/operation.dart';

sealed class OperationListViewState {}

class OperationListViewLoadingState extends OperationListViewState {}

class OperationListViewErrorState extends OperationListViewState {}

class OperationListViewDataState extends OperationListViewState {
  OperationListViewDataState({
    required this.operations,
    required this.categories,
  });

  final List<Operation> operations;
  final Map<int, Category> categories;
}
