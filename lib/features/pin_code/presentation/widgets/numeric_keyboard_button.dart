import 'package:budget_tracker/core/ui_kit/constraints_contants.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class NumericKeyboardButton extends StatefulWidget {
  const NumericKeyboardButton({
    super.key,
    this.text,
    this.svgAssetName,
    required this.onTap,
  }) : assert(text != null || svgAssetName != null);

  final String? text;
  final String? svgAssetName;
  final void Function() onTap;

  @override
  State<NumericKeyboardButton> createState() => _NumericKeyboardButtonState();
}

class _NumericKeyboardButtonState extends State<NumericKeyboardButton>
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
            child: _ButtonDecoratedBox(
              blurRadius: 3.0 - _animationController.value * 3.0,
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

class _ButtonDecoratedBox extends ConsumerWidget {
  const _ButtonDecoratedBox({
    this.blurRadius = 3.0,
    this.child,
  });

  final double blurRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
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
            offset: const Offset(0, 1),
            spreadRadius: 1.0,
            blurRadius: blurRadius,
          ),
        ],
      ),
      child: child,
    );
  }
}
