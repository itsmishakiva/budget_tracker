import 'package:auto_route/annotations.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_screen.dart';
import 'package:budget_tracker/features/pin_code/presentation/create_pin_code/create_pin_code_screen.dart';
import 'package:budget_tracker/features/pin_code/presentation/root_pin_code/root_pin_code_view_model.dart';
import 'package:budget_tracker/features/pin_code/presentation/root_pin_code/root_pin_code_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class RootPinCodeScreen extends ConsumerWidget {
  const RootPinCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(rootPinCodeViewModelProvider);
    switch (state) {
      case RootPinCodeCreateViewState _:
        return const CreatePinCodeScreen();
      case RootPinCodeEnterViewState _:
        return const PinCodeScreen();
      default:
        return const AppScaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
    }
  }
}
