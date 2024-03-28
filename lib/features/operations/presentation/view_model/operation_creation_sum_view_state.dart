import 'package:budget_tracker/features/check/domain/entities/check.dart';

sealed class OperationCreationSumViewState {}

class OperationCreationSumViewLoadingState
    extends OperationCreationSumViewState {}

class OperationCreationSumViewErrorState
    extends OperationCreationSumViewState {}

class OperationCreationSumViewDataState extends OperationCreationSumViewState {
  OperationCreationSumViewDataState({
    required this.checkData,
    required this.sum,
  });

  final Check checkData;
  final String sum;
}
