sealed class PinCodeViewState {}

class PinCodeDefaultViewState extends PinCodeViewState {
  PinCodeDefaultViewState({this.input = ''});

  final String input;
}

class PinCodeLoadingViewState extends PinCodeViewState {}

class PinCodeErrorViewState extends PinCodeViewState {}

class PinCodeSuccessViewState extends PinCodeViewState {}
