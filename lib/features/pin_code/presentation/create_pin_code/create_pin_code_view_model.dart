import 'package:budget_tracker/features/pin_code/domain/repositories/pin_code_repository.dart';
import 'package:budget_tracker/features/pin_code/internal/pin_code_repository_provider.dart';
import 'package:budget_tracker/features/pin_code/presentation/create_pin_code/create_pin_code_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createPinCodeViewModelProvider =
    StateNotifierProvider<CreatePinCodeViewModel, CreatePinCodeViewState>(
  (ref) => CreatePinCodeViewModel(
    CreatePinCodeDefaultViewState(),
    ref.watch(pinCodeRepositoryProvider),
  ),
);

class CreatePinCodeViewModel extends StateNotifier<CreatePinCodeViewState> {
  CreatePinCodeViewModel(
    super.state,
    this._repository,
  );

  final PinCodeRepository _repository;

  Future<void> userInput(String? symbol) async {
    String input = '';
    bool isDefaultState = state is CreatePinCodeDefaultViewState;

    if (isDefaultState) input = state.input;

    if (!isDefaultState || (input.length > 4)) return;

    if (symbol != null) {
      input += symbol;
      state = CreatePinCodeDefaultViewState(
        input: input,
        firstInput: (state as CreatePinCodeDefaultViewState).firstInput,
      );
    } else if (input.isNotEmpty) {
      input = input.substring(0, input.length - 1);
      state = CreatePinCodeDefaultViewState(
        input: input,
        firstInput: (state as CreatePinCodeDefaultViewState).firstInput,
      );
    }
  }

  Future<void> sendData(String input) async {
    bool shouldRepeat = (state as CreatePinCodeDefaultViewState).firstInput;
    state = CreatePinCodeLoadingViewState();

    bool success = true;
    if (shouldRepeat) {
      await _repository.setCode(input);
    } else {
      try {
        await _repository.setCodeRepeat(input);
      } catch (e) {
        success = false;
      }
    }

    _setErrorOrSuccessState(success, shouldRepeat);
  }

  void _setErrorOrSuccessState(bool success, bool shouldRepeat) async {
    if (success) {
      if (shouldRepeat) {
        state = CreatePinCodeDefaultViewState(firstInput: false);
      } else {
        state = CreatePinCodeSuccessViewState();
      }
    } else {
      state = CreatePinCodeErrorViewState();
    }
  }

  Future<void> resetState() async {
    state = CreatePinCodeDefaultViewState();
  }
}
