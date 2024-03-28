import 'package:budget_tracker/core/ui_kit/constraints_constants.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppButton extends ConsumerWidget {
  const AppButton({
    super.key,
    required this.onTap,
    required this.title,
    this.color,
    this.loading = false,
  });

  final String title;
  final void Function() onTap;
  final Color? color;
  final bool loading;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constraints = ref.read(constraintsConstantsProvider);
    return BounceButton(
      onTap: onTap,
      scaleAmount: 0.05,
      child: Container(
        width: double.infinity,
        height: 52,
        decoration: BoxDecoration(
          color: color ?? context.colors.accent,
          borderRadius: BorderRadius.circular(constraints.tileBorderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.16),
              offset: const Offset(0, 2),
              spreadRadius: 1.0,
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Center(
          child: loading
              ? CupertinoActivityIndicator(
                  color: context.colors.backgroundPrimary,
                )
              : Text(
                  title,
                  style: context.textStyles.textButton.copyWith(
                    color: context.colors.textSurface,
                  ),
                ),
        ),
      ),
    );
  }
}

class BounceButton extends StatefulWidget {
  const BounceButton({
    super.key,
    required this.onTap,
    this.child,
    this.scaleAmount = 0.1,
    this.awaitBackAnimation = false,
  });

  final Widget? child;
  final void Function() onTap;
  final double scaleAmount;
  final bool awaitBackAnimation;

  @override
  State<BounceButton> createState() => _BounceButtonState();
}

class _BounceButtonState extends State<BounceButton>
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
      onTap: () async {
        if (widget.awaitBackAnimation) {
          await awaitAnimationFunction;
        }
        widget.onTap();
      },
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform.scale(
            scale: 1 - widget.scaleAmount * _animationController.value,
            child: child,
          );
        },
        child: widget.child,
      ),
    );
  }
}
