import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:budget_tracker/features/operations/domain/entities/new_operation.dart';

sealed class OperationCreationTypeViewState {}

class OperationCreationTypeViewLoadingState
    extends OperationCreationTypeViewState {}

class OperationCreationTypeViewErrorState
    extends OperationCreationTypeViewState {}

class OperationCreationTypeViewDataState
    extends OperationCreationTypeViewState {
  OperationCreationTypeViewDataState({
    required this.data,
    required this.newOperation,
  });

  final List<Category> data;
  final NewOperation newOperation;
}
