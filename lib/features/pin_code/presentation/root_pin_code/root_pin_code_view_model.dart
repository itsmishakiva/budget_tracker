import 'package:budget_tracker/features/pin_code/domain/repositories/pin_code_repository.dart';
import 'package:budget_tracker/features/pin_code/internal/pin_code_repository_provider.dart';
import 'package:budget_tracker/features/pin_code/presentation/root_pin_code/root_pin_code_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rootPinCodeViewModelProvider =
    StateNotifierProvider<RootPinCodeViewModel, RootPinCodeViewState>(
  (ref) => RootPinCodeViewModel(
    RootPinCodeLoadingViewState(),
    ref.watch(pinCodeRepositoryProvider),
  )..checkCreated(),
);

class RootPinCodeViewModel extends StateNotifier<RootPinCodeViewState> {
  RootPinCodeViewModel(
    super.state,
    this._repository,
  );

  final PinCodeRepository _repository;

  Future<void> checkCreated() async {
    state = await _repository.checkCreated()
        ? RootPinCodeEnterViewState()
        : RootPinCodeCreateViewState();
  }
}
