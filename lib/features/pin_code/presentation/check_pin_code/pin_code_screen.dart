import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_view_model.dart';
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_view_state.dart';
import 'package:budget_tracker/features/pin_code/presentation/widgets/pin_code_graphics.dart';
import 'package:budget_tracker/features/pin_code/presentation/widgets/pin_code_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class PinCodeScreen extends ConsumerWidget {
  const PinCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pinCodeViewModelProvider);
    var graphicsState = PinCodeGraphicStates.common;
    switch (state) {
      case PinCodeErrorViewState _:
        graphicsState = PinCodeGraphicStates.error;
        break;
      case PinCodeSuccessViewState _:
        graphicsState = PinCodeGraphicStates.success;
        break;
      case PinCodeLoadingViewState _:
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
              biometryType: state.biometryTypes,
              onTap: (text) {
                ref.read(pinCodeViewModelProvider.notifier).userInput(text);
              },
              onBiometryTap: () {
                ref.read(pinCodeViewModelProvider.notifier).biometryInput(
                      context.locale!.biometryReason,
                    );
              },
              onBackButtonTap: () {
                ref.read(pinCodeViewModelProvider.notifier).userInput(null);
              },
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
