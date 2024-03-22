sealed class CreatePinCodeViewState {
  CreatePinCodeViewState({this.input = ''});

  final String input;
}

class CreatePinCodeDefaultViewState extends CreatePinCodeViewState {
  CreatePinCodeDefaultViewState({
    this.firstInput = true,
    super.input,
  });

  final bool firstInput;
}

class CreatePinCodeLoadingViewState extends CreatePinCodeViewState {}

class CreatePinCodeErrorViewState extends CreatePinCodeViewState {
  CreatePinCodeErrorViewState({this.errorMessage});

  final String? errorMessage;
}

class CreatePinCodeSuccessViewState extends CreatePinCodeViewState {}
