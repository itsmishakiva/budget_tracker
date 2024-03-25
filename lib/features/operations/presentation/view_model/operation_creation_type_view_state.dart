import 'package:budget_tracker/features/categories/domain/entities/category.dart';

sealed class OperationCreationViewState {} // тут стейт страницы

class OperationCreationViewLoadingState extends OperationCreationViewState {}

class OperationCreationViewErrorState extends OperationCreationViewState {}

class OperationCreationViewDataState extends OperationCreationViewState {
  OperationCreationViewDataState({required this.data});

  final List<Category> data; // лист тайлов с категориями
}
