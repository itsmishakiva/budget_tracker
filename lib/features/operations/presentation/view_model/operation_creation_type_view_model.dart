import 'package:budget_tracker/features/categories/domain/repositories/category_repository.dart';
import 'package:budget_tracker/features/categories/internal/caretory_repository_provider.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_type_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operationCreationTypeViewModelProvider = StateNotifierProvider<
    OperationCreationTypeViewModel, OperationCreationTypeViewState>(
  (ref) => OperationCreationTypeViewModel(
    OperationCreationTypeViewLoadingState(),
    ref.read(categoryRepositoryProvider),
  )..loadData(),
);

class OperationCreationTypeViewModel
    extends StateNotifier<OperationCreationTypeViewState> {
  final CategoryRepository _repository;

  OperationCreationTypeViewModel(
    OperationCreationTypeViewState state,
    this._repository,
  ) : super(state);

  Future<void> loadData() async {
    try {
      state = OperationCreationTypeViewDataState(
        data: await _repository.getCategories(),
      );
    } catch (e) {
      state = OperationCreationTypeViewErrorState();
    }
  }
}
