import 'package:budget_tracker/features/categories/domain/entities/category.dart';

sealed class OperationCreationTypeViewState {}

class OperationCreationTypeViewLoadingState
    extends OperationCreationTypeViewState {}

class OperationCreationTypeViewErrorState
    extends OperationCreationTypeViewState {}

class OperationCreationTypeViewDataState
    extends OperationCreationTypeViewState {
  OperationCreationTypeViewDataState({
    required this.data,
    required this.sum,
    required this.selectedCategory,
    required this.isIncome,
  });

  final List<Category> data;
  final double sum;
  final Category selectedCategory;
  final bool isIncome;
}
