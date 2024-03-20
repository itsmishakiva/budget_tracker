import 'dart:async';
import 'dart:math';

import 'package:budget_tracker/features/pin_code/presentation/view_model/pin_code_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pinCodeViewModelProvider =
    NotifierProvider<PinCodeViewModel, PinCodeViewState>(
  () => PinCodeViewModel(),
);

class PinCodeViewModel extends Notifier<PinCodeViewState> {
  PinCodeViewModel();

  @override
  PinCodeViewState build() {
    return PinCodeDefaultViewState();
  }

  Future<void> userInput(String symbol) async {
    bool success = false;
    if (state is! PinCodeDefaultViewState ||
        (state is PinCodeDefaultViewState &&
            (state as PinCodeDefaultViewState).input.length > 4)) return;
    state = PinCodeDefaultViewState(
      input: (state as PinCodeDefaultViewState).input + symbol,
    );
    if (state is PinCodeDefaultViewState &&
        (state as PinCodeDefaultViewState).input.length == 4) {
      await Future.delayed(const Duration(milliseconds: 300));
      state = PinCodeLoadingViewState();
      //TODO send to repository

      await Future.delayed(const Duration(milliseconds: 300));
      success = Random().nextBool();

      if (success) {
        state = PinCodeSuccessViewState();
      } else {
        state = PinCodeErrorViewState();
      }
      await Future.delayed(
        Duration(milliseconds: 600),
      );
      state = PinCodeDefaultViewState();
    }
  }
}
