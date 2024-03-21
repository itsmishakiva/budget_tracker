import 'package:budget_tracker/features/operation_creation/domain/entities/operation_type.dart';

sealed class OperationCreationViewState {}              // тут стейт страницы

class OperationCreationViewLoadingState extends OperationCreationViewState {}

class OperationCreationViewErrorState extends OperationCreationViewState {}

class OperationCreationViewDataState extends OperationCreationViewState {
  OperationCreationViewDataState({required this.data});

  final List<OperationType> data;                        // лист тайлов с категориями
}
