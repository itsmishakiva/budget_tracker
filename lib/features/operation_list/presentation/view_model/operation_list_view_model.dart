import 'package:budget_tracker/features/operation_list/domain/i_repositories/i_operation_list_repository.dart';
import 'package:budget_tracker/features/operation_list/internal/repository_handler.dart';
import 'package:budget_tracker/features/operation_list/presentation/view_model/operation_list_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operationListViewModelProvider =
    NotifierProvider<OperationListViewModel, OperationListViewState>(
  () => OperationListViewModel(
    RepositoryHandler.getOperationListRepository(),
  ),
);

class OperationListViewModel extends Notifier<OperationListViewState> {
  final IOperationListRepository _repository;

  OperationListViewModel(this._repository);

  @override
  OperationListViewState build() {
    loadData();
    return OperationListViewLoadingState();
  }

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
