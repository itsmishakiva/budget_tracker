import 'dart:async';

import 'package:budget_tracker/features/pin_code/domain/repositories/pin_code_repository.dart';
import 'package:budget_tracker/features/pin_code/internal/pin_code_repository_provider.dart';
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_view_state.dart';
import 'package:budget_tracker/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_auth/local_auth.dart';
import 'package:logging/logging.dart';

final pinCodeViewModelProvider =
    StateNotifierProvider<PinCodeViewModel, PinCodeViewState>(
  (ref) => PinCodeViewModel(
    PinCodeDefaultViewState(),
    ref.watch(pinCodeRepositoryProvider),
  )..init(),
);

class PinCodeViewModel extends StateNotifier<PinCodeViewState> {
  PinCodeViewModel(super.state, this._repository);

  final PinCodeRepository _repository;
  final LocalAuthentication _auth = LocalAuthentication();

  Future<void> init() async {
    final bool canAuthenticateWithBiometrics = await _auth.canCheckBiometrics;
    final bool canAuthenticate =
        canAuthenticateWithBiometrics || await _auth.isDeviceSupported();
    if (!canAuthenticate) return;

    final availableBiometrics = await _auth.getAvailableBiometrics();
    BiometryTypes biometryTypes;
    if (availableBiometrics.contains(BiometricType.face)) {
      biometryTypes = BiometryTypes.faceId;
    } else {
      biometryTypes = BiometryTypes.fingerprint;
    }

    state = PinCodeDefaultViewState(biometryTypes: biometryTypes);
  }

  Future<void> biometryInput(String localeReason) async {
    try {
      final bool didAuthenticate = await _auth.authenticate(
        localizedReason: localeReason,
      );
      _setErrorOrSuccessState(didAuthenticate);
    } catch (e) {
      state = PinCodeErrorViewState(
        biometryTypes: state.biometryTypes,
      );
    }
  }

  Future<void> userInput(String? symbol) async {
    String input = '';
    bool isDefaultState = state is PinCodeDefaultViewState;

    if (isDefaultState) input = (state as PinCodeDefaultViewState).input;

    if (!isDefaultState || (input.length > 4)) return;

    if (symbol != null) {
      input += symbol;
      state = PinCodeDefaultViewState(
        input: input,
        biometryTypes: state.biometryTypes,
      );
    } else if (input.isNotEmpty) {
      input = input.substring(0, input.length - 1);
      state = PinCodeDefaultViewState(
        input: input,
        biometryTypes: state.biometryTypes,
      );
    }
  }

  Future<void> checkSuccess(String input) async {
    state = PinCodeLoadingViewState(
      biometryTypes: state.biometryTypes,
    );

    bool success = await _repository.checkCode(input);

    _setErrorOrSuccessState(success);
  }

  void _setErrorOrSuccessState(bool success) {
    if (success) {
      logger.log(Level.WARNING, 'SET SUCCESS');
      state = PinCodeSuccessViewState(
        biometryTypes: state.biometryTypes,
      );
    } else {
      state = PinCodeErrorViewState(
        biometryTypes: state.biometryTypes,
      );
    }
  }

  Future<void> resetState() async {
    state = PinCodeDefaultViewState(
      biometryTypes: state.biometryTypes,
    );
  }
}
