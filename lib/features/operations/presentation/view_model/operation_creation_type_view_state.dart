import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:budget_tracker/features/operations/domain/entities/new_operation.dart';

sealed class OperationCreationTypeViewState {
  final String sum;

  OperationCreationTypeViewState(this.sum);
}

class OperationCreationTypeViewLoadingState
    extends OperationCreationTypeViewState {
  OperationCreationTypeViewLoadingState(super.sum);
}

class OperationCreationTypeViewErrorState
    extends OperationCreationTypeViewState {
  OperationCreationTypeViewErrorState(super.sum);
}

class OperationCreationTypeViewDataState
    extends OperationCreationTypeViewState {
  OperationCreationTypeViewDataState(
    super.sum, {
    required this.data,
    required this.newOperation,
  });

  final List<Category> data;
  final NewOperation newOperation;
}
