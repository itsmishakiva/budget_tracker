import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/internal/app_router_provider.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
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
    String? message;
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
      case CreatePinCodeDefaultViewState _:
        message = state.firstInput
            ? context.locale!.createPin
            : context.locale!.repeatPin;
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
            SizedBox(
              height: 32,
              child: message != null
                  ? Text(
                      message,
                      style: context.textStyles.header2,
                    )
                  : null,
            ),
            const SizedBox(height: 32),
            PinCodeGraphics(
              pin: state.input,
              state: graphicsState,
              onSuccessFinish: () {
                ref.read(appRouterProvider).replaceNamed('/pin');
              },
              onDefaultFilled: () {
                ref
                    .read(createPinCodeViewModelProvider.notifier)
                    .sendData(state.input);
              },
              onErrorFinish: () {
                ref.read(createPinCodeViewModelProvider.notifier).resetState();
              },
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
