import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/core/ui_kit/constraints_contants.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_view_model.dart';
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vibration/vibration.dart';

@RoutePage()
class PinCodeScreen extends ConsumerWidget {
  const PinCodeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(pinCodeViewModelProvider);
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const Spacer(flex: 3),
            _PinCodeGraphics(),
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

class PinCodeKeyboard extends ConsumerWidget {
  const PinCodeKeyboard({
    required this.biometryType,
    required this.onTap,
    required this.onBackButtonTap,
    this.onBiometryTap,
  });

  final BiometryTypes biometryType;
  final void Function(String?) onTap;
  final void Function() onBackButtonTap;
  final void Function()? onBiometryTap;

  Row _generateNumberButtonsRow(int startNumber) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        3,
        (index) => PinCodeKeyboardButton(
          text: (index + startNumber).toString(),
          onTap: () => onTap((index + startNumber).toString()),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final constraints = ref.read(constraintsConstantsProvider);
    return SizedBox(
      height: screenWidth + constraints.horizontalScreenPadding * 2,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _generateNumberButtonsRow(1),
            _generateNumberButtonsRow(4),
            _generateNumberButtonsRow(7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (biometryType != BiometryTypes.none)
                  PinCodeKeyboardButton(
                    svgAssetName: biometryType == BiometryTypes.faceId
                        ? 'assets/svg/face_id.svg'
                        : 'assets/svg/fingerprint.svg',
                    onTap: onBiometryTap!,
                  ),
                if (biometryType == BiometryTypes.none)
                  const SizedBox(width: 74),
                PinCodeKeyboardButton(
                  text: '0',
                  onTap: () => onTap('0'),
                ),
                PinCodeKeyboardButton(
                  svgAssetName: 'assets/svg/back_icon.svg',
                  onTap: onBackButtonTap,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PinCodeKeyboardButton extends ConsumerStatefulWidget {
  const PinCodeKeyboardButton({
    this.text,
    this.svgAssetName,
    required this.onTap,
  });

  final String? text;
  final String? svgAssetName;
  final void Function() onTap;

  @override
  ConsumerState<PinCodeKeyboardButton> createState() =>
      _PinCodeKeyboardButtonState();
}

class _PinCodeKeyboardButtonState extends ConsumerState<PinCodeKeyboardButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Future<void>? awaitAnimationFunction;
    return GestureDetector(
      onTapUp: (details) async {
        await awaitAnimationFunction;
        _animationController.animateBack(_animationController.lowerBound);
      },
      onTapCancel: () async {
        await awaitAnimationFunction;
        _animationController.animateBack(_animationController.lowerBound);
      },
      onTapDown: (details) {
        awaitAnimationFunction = _animationController.forward();
      },
      onTap: widget.onTap,
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.scale(
            scale: 1 - 0.1 * _animationController.value,
            child: Container(
              width: 74,
              height: 74,
              decoration: BoxDecoration(
                color: context.colors.backgroundSecondary,
                borderRadius: BorderRadius.circular(
                  ref.read(constraintsConstantsProvider).defaultBorderRadius,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    offset: Offset(0, 1),
                    spreadRadius: 1.0,
                    blurRadius: _animationController.value * 3.0 + 3.0,
                  ),
                ],
              ),
              child: child,
            ),
          );
        },
        child: Center(
          child: widget.text == null
              ? SvgPicture.asset(
                  widget.svgAssetName!,
                  width: 32.0,
                )
              : Text(
                  widget.text!,
                  style: context.textStyles.onNumericButton,
                ),
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

class _PinCodeGraphicTile extends ConsumerStatefulWidget {
  const _PinCodeGraphicTile(this.index);

  final int index;
  static const _graphicSize = 16.0;

  @override
  ConsumerState<_PinCodeGraphicTile> createState() =>
      _PinCodeGraphicTileState();
}

class _PinCodeGraphicTileState extends ConsumerState<_PinCodeGraphicTile>
    with TickerProviderStateMixin {
  late final AnimationController _inputAnimationController;
  late final AnimationController _errorAnimationController;
  late final AnimationController _successAnimationController;

  @override
  void initState() {
    super.initState();
    _inputAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: PinCodeViewModel.inputAnimationTimeMs,
      ),
    );
    _errorAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 70),
      lowerBound: -0.5,
      upperBound: 0.5,
    );
    _errorAnimationController.value = 0;
    _successAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _errorAnimationController.dispose();
    _successAnimationController.dispose();
    _inputAnimationController.dispose();
    super.dispose();
  }

  Widget _getTileUi(Color color) {
    return Container(
      width: _PinCodeGraphicTile._graphicSize,
      height: _PinCodeGraphicTile._graphicSize,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }

  (Animation<double>?, Color) _getCurrentUiData(PinCodeViewState state) {
    Color color = context.colors.disabled;
    Animation<double>? animation;
    switch (state) {
      case PinCodeSuccessViewState _:
        animation = _successAnimationController;
        Future(() async {
          await _successAnimationController.forward();
          _successAnimationController.animateBack(
            _successAnimationController.lowerBound,
          );
        });
        color = context.colors.success;
        break;
      case PinCodeErrorViewState _:
        animation = _errorAnimationController;
        Future(() async {
          Vibration.vibrate(amplitude: 255);
          _errorAnimationController.repeat(reverse: true);
        });
        color = context.colors.error;
        break;
      case PinCodeDefaultViewState _:
        animation = _inputAnimationController;
        if (widget.index < state.input.length) {
          Future(() async {
            if (state.input.length - 1 != widget.index) {
              return;
            }
            await _inputAnimationController.forward();
            _inputAnimationController.animateBack(
              _inputAnimationController.lowerBound,
            );
          });
          color = context.colors.accent;
        }
        break;
      case PinCodeLoadingViewState _:
        color = context.colors.accent;
        break;
      default:
        break;
    }
    return (animation, color);
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(pinCodeViewModelProvider);

    Future(() {
      _errorAnimationController.stop();
      _errorAnimationController.value = 0;
    });

    final uiData = _getCurrentUiData(state);
    final Color color = uiData.$2;
    final Animation<double>? animation = uiData.$1;

    if (animation == null) return _getTileUi(color);

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        switch (state) {
          case PinCodeDefaultViewState _:
            return Transform.scale(
              scale: 1 + 0.2 * animation.value,
              child: child,
            );
          case PinCodeSuccessViewState _:
            return Transform.scale(
              scale: 1 + 0.2 * animation.value,
              child: child,
            );
          case PinCodeErrorViewState _:
            return Transform.translate(
              offset: Offset(animation.value * 4, 0),
              child: child,
            );
          default:
            return child!;
        }
      },
      child: _getTileUi(color),
    );
  }
}
