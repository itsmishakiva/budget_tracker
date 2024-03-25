import 'package:budget_tracker/core/ui_kit/constraints_constants.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppButton extends ConsumerWidget {
  const AppButton({super.key, this.onTap, this.color, required this.title});

  final String title;
  final void Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constraints = ref.read(constraintsConstantsProvider);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: color ?? context.colors.accent,
        borderRadius: BorderRadius.circular(constraints.tileBorderRadius),
      ),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          title,
          style: context.textStyles.textButton.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
