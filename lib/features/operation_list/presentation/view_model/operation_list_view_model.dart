import 'package:budget_tracker/features/operation_list/domain/repositories/operation_repository.dart';
import 'package:budget_tracker/features/operation_list/internal/repository_provider.dart';
import 'package:budget_tracker/features/operation_list/presentation/view_model/operation_list_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operationListViewModelProvider =
    StateNotifierProvider<OperationListViewModel, OperationListViewState>(
  (ref) => OperationListViewModel(
    OperationListViewLoadingState(),
    ref.read(repositoryProvider),
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
