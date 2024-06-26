import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';

sealed class OperationListViewState {}

class OperationListViewLoadingState extends OperationListViewState {}

class OperationListViewErrorState extends OperationListViewState {}

class OperationListViewDataState extends OperationListViewState {
  OperationListViewDataState({required this.data});

  final List<Operation> data;
}
