import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/pin_code/presentation/view_model/pin_code_view_model.dart';
import 'package:budget_tracker/features/pin_code/presentation/view_model/pin_code_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class PinCodeScreen extends StatelessWidget {
  const PinCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const Spacer(flex: 3),
            _PinCodeGraphics(),
            const Spacer(flex: 2),
            _PinCodeKeyboard(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _PinCodeKeyboard extends ConsumerWidget {
  const _PinCodeKeyboard();

  Row _generateNumberButtonsRow(int startNumber) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: List.generate(
        3,
        (index) => _PinCodeKeyboardButton(
          text: (index + startNumber).toString(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 320,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _generateNumberButtonsRow(1),
            _generateNumberButtonsRow(4),
            _generateNumberButtonsRow(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _PinCodeKeyboardButton(text: 'f'),
                _PinCodeKeyboardButton(
                  text: '0',
                ),
                _PinCodeKeyboardButton(text: 'd'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _PinCodeKeyboardButton extends ConsumerWidget {
  const _PinCodeKeyboardButton({
    this.text,
    this.svgAssetName,
    this.onTap,
  }) : assert(text != null && svgAssetName == null && onTap == null ||
            text == null && svgAssetName != null && onTap != null);
  final String? text;
  final String? svgAssetName;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: onTap ??
          () {
            ref.read(pinCodeViewModelProvider.notifier).userInput(text!);
          },
      child: SizedBox(
        width: 50,
        height: 50,
        child: Center(
          child: text == null ? SvgPicture.asset(svgAssetName!) : Text(text!),
        ),
      ),
    );
  }
}

class _PinCodeGraphics extends StatelessWidget {
  const _PinCodeGraphics();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        4,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: _PinCodeGraphicTile(index),
        ),
      ),
    );
  }
}

class _PinCodeGraphicTile extends ConsumerWidget {
  const _PinCodeGraphicTile(this.index);

  final int index;
  static const _graphicSize = 16.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pinCodeViewModelProvider);
    Color color = context.colors.backgroundSecondary;
    switch (state) {
      case PinCodeSuccessViewState _:
        color = context.colors.success;
        break;
      case PinCodeErrorViewState _:
        color = context.colors.error;
        break;
      case PinCodeDefaultViewState _:
        if (index < state.input.length) color = context.colors.accent;
        break;
      case PinCodeLoadingViewState _:
        color = context.colors.accent;
        break;
      default:
        break;
    }
    return Container(
      width: _graphicSize,
      height: _graphicSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
