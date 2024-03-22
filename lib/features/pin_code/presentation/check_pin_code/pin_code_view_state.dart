enum BiometryTypes { none, fingerprint, faceId }

sealed class PinCodeViewState {
  PinCodeViewState({
    this.input = '',
    this.biometryTypes = BiometryTypes.none,
  });

  BiometryTypes biometryTypes;
  final String input;
}

class PinCodeDefaultViewState extends PinCodeViewState {
  PinCodeDefaultViewState({
    super.input,
    super.biometryTypes,
  });
}

class PinCodeLoadingViewState extends PinCodeViewState {
  PinCodeLoadingViewState({super.biometryTypes});
}

class PinCodeErrorViewState extends PinCodeViewState {
  PinCodeErrorViewState({super.biometryTypes});
}

class PinCodeSuccessViewState extends PinCodeViewState {
  PinCodeSuccessViewState({super.biometryTypes});
}
