import 'package:budget_tracker/features/operations/domain/repositories/operation_repository.dart';
import 'package:budget_tracker/features/operations/internal/operation_repository_provider.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_list_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operationListViewModelProvider =
    StateNotifierProvider<OperationListViewModel, OperationListViewState>(
  (ref) => OperationListViewModel(
    OperationListViewLoadingState(),
    ref.read(operationRepositoryProvider),
  )..loadData(),
);

class OperationListViewModel extends StateNotifier<OperationListViewState> {
  final OperationRepository _repository;

  OperationListViewModel(
    OperationListViewState state,
    this._repository,
  ) : super(state);

  Future<void> loadData() async {
    try {
      state = OperationListViewDataState(
        data: await _repository.getOperationList(),
      );
    } catch (e) {
      state = OperationListViewErrorState();
    }
  }
}
