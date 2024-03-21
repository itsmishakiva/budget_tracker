enum BiometryTypes { none, fingerprint, faceId }

sealed class PinCodeViewState {
  PinCodeViewState({
    this.biometryTypes = BiometryTypes.none,
  });

  BiometryTypes biometryTypes;
}

class PinCodeDefaultViewState extends PinCodeViewState {
  PinCodeDefaultViewState({
    this.input = '',
    super.biometryTypes,
  });

  final String input;
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
