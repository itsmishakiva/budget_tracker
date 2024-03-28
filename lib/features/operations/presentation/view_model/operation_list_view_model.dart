import 'package:budget_tracker/features/categories/domain/repositories/category_repository.dart';
import 'package:budget_tracker/features/categories/internal/caretory_repository_provider.dart';
import 'package:budget_tracker/features/operations/domain/repositories/operation_repository.dart';
import 'package:budget_tracker/features/operations/internal/operation_repository_provider.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_list_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operationListViewModelProvider =
    StateNotifierProvider<OperationListViewModel, OperationListViewState>(
  (ref) => OperationListViewModel(
    OperationListViewLoadingState(),
    ref.read(operationRepositoryProvider),
    ref.read(categoryRepositoryProvider),
  )..loadData(),
);

class OperationListViewModel extends StateNotifier<OperationListViewState> {
  final OperationRepository _operationRepository;
  final CategoryRepository _categoryRepository;

  OperationListViewModel(
    OperationListViewState state,
    this._operationRepository,
    this._categoryRepository,
  ) : super(state);

  Future<void> loadData() async {
    state = OperationListViewLoadingState();
    try {
      state = OperationListViewDataState(
        operations: await _operationRepository.getOperationList(),
        categories: await _categoryRepository.getCategories(),
      );
    } catch (e) {
      state = OperationListViewErrorState();
    }
  }
}
