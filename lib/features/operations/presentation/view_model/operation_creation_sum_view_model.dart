import 'package:budget_tracker/features/check/domain/repositories/check_repository.dart';
import 'package:budget_tracker/features/check/internal/check_repository_provider.dart';
import 'package:budget_tracker/features/operations/presentation/view/widgets/numpad.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_sum_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operationCreationSumViewModelProvider = StateNotifierProvider<
    OperationCreationSumViewModel, OperationCreationSumViewState>(
  (ref) => OperationCreationSumViewModel(
    OperationCreationSumViewLoadingState(),
    ref.read(checkRepositoryProvider),
  )..loadData(),
);

// final numpadControllerProvider = StateNotifierProvider<NumpadController, String>(
//       (ref) => NumpadController(ref.watch(operationCreationSumViewModelProvider.notifier).updateNumericInput),
// );

final numpadControllerProvider =
    StateNotifierProvider<NumpadController, String>(
  (ref) => NumpadController(),
);

class OperationCreationSumViewModel
    extends StateNotifier<OperationCreationSumViewState> {
  final CheckRepository _repositoryAccount;

  // void updateNumericInput(String input) {
  //   state = state.copyWith(inputString: input);
  // }

  OperationCreationSumViewModel(
    OperationCreationSumViewState state,
    this._repositoryAccount,
  ) : super(state);

  Future<void> loadData() async {
    try {
      state = OperationCreationSumViewDataState(
        checkData: await _repositoryAccount.getCheck(),
        sum: NumpadController()
            .state, //TODO у нас же в начале должно быть нулевое значение, так что тут ноль :/
      );
    } catch (e) {
      state = OperationCreationSumViewErrorState();
    }
  }
}
