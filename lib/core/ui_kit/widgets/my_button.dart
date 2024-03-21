import 'package:budget_tracker/core/ui_kit/constraints_constants.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyButton extends ConsumerWidget {
  const MyButton({super.key, this.onTap, required this.title});

  final String title;
  final Function? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constraints = ref.read(constraintsConstantsProvider);
    return Center(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: context.colors.accent,
            borderRadius: BorderRadius.circular(constraints.tileBorderRadius)),
        child: TextButton(
          onPressed: () => onTap,
          child: Text(title,
              style:
              context.textStyles.textButton.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}