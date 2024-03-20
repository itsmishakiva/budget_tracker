import 'package:budget_tracker/features/operation_list/domain/i_repositories/i_operation_list_repository.dart';
import 'package:budget_tracker/features/operation_list/internal/repository_handler.dart';
import 'package:budget_tracker/features/operation_list/presentation/view_model/operation_list_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operationListViewModelProvider =
    StateNotifierProvider<OperationListViewModel, OperationListViewState>(
  (ref) => OperationListViewModel(
    RepositoryHandler.getOperationListRepository(),
  )..loadData(),
);

class OperationListViewModel extends StateNotifier<OperationListViewState> {
  final IOperationListRepository _repository;

  OperationListViewModel(this._repository)
      : super(OperationListViewLoadingState());

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
