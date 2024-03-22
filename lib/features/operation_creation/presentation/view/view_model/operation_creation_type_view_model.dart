import 'package:budget_tracker/features/operation_creation/domain/repositories/operation_type_repository.dart';
import 'package:budget_tracker/features/operation_creation/internal/repository_provider.dart';
import 'package:budget_tracker/features/operation_creation/presentation/view/view_model/operation_creation_type_view_state.dart';
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
  final OperationTypeRepository _repository;

  OperationCreationViewModel(
    OperationCreationViewState state,
    this._repository,
  ) : super(state);

  Future<void> loadData() async {
    try {
      state = OperationCreationViewDataState(
        data: await _repository.getOperationType(),
      );
    } catch (e) {
      state = OperationCreationViewErrorState();
    }
  }
}
