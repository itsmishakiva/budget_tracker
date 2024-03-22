import 'package:budget_tracker/features/categories/domain/repositories/category_repository.dart';
import 'package:budget_tracker/features/categories/internal/repository_provider.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_type_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operationCreationViewModelProvider = StateNotifierProvider<
    OperationCreationViewModel, OperationCreationViewState>(
  (ref) => OperationCreationViewModel(
    OperationCreationViewLoadingState(),
    ref.read(repositoryProvider),
  )..loadData(),
);

class OperationCreationViewModel
    extends StateNotifier<OperationCreationViewState> {
  final CategoryRepository _repository;

  OperationCreationViewModel(
    OperationCreationViewState state,
    this._repository,
  ) : super(state);

  Future<void> loadData() async {
    try {
      state = OperationCreationViewDataState(
        data: await _repository.getCategory(),
      );
    } catch (e) {
      state = OperationCreationViewErrorState();
    }
  }
}
