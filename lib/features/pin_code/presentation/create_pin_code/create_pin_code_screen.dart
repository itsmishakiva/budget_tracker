import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_view_state.dart';
import 'package:budget_tracker/features/pin_code/presentation/create_pin_code/create_pin_code_view_model.dart';
import 'package:budget_tracker/features/pin_code/presentation/create_pin_code/create_pin_code_view_state.dart';
import 'package:budget_tracker/features/pin_code/presentation/widgets/pin_code_graphics.dart';
import 'package:budget_tracker/features/pin_code/presentation/widgets/pin_code_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class CreatePinCodeScreen extends ConsumerWidget {
  const CreatePinCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createPinCodeViewModelProvider);
    var graphicsState = PinCodeGraphicStates.common;
    switch (state) {
      case CreatePinCodeErrorViewState _:
        graphicsState = PinCodeGraphicStates.error;
        break;
      case CreatePinCodeSuccessViewState _:
        graphicsState = PinCodeGraphicStates.success;
        break;
      case CreatePinCodeLoadingViewState _:
        graphicsState = PinCodeGraphicStates.loading;
        break;
      default:
        break;
    }
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const Spacer(flex: 3),
            PinCodeGraphics(
              pin: state.input,
              state: graphicsState,
            ),
            const Spacer(flex: 2),
            PinCodeKeyboard(
              biometryType: BiometryTypes.none,
              onTap: (text) {
                ref
                    .read(createPinCodeViewModelProvider.notifier)
                    .userInput(text);
              },
              onBackButtonTap: () {
                ref
                    .read(createPinCodeViewModelProvider.notifier)
                    .userInput(null);
              },
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
