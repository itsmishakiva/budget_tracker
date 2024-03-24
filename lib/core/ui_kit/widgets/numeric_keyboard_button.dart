import 'package:budget_tracker/core/ui_kit/constraints_constants.dart';
import 'package:budget_tracker/core/ui_kit/widgets/app_button.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class NumericKeyboardButton extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    return BounceButton(
      onTap: onTap,
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
              offset: const Offset(0, 1),
              spreadRadius: 1.0,
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Center(
          child: text == null
              ? SvgPicture.asset(
                  svgAssetName!,
                  width: 32.0,
                  colorFilter: ColorFilter.mode(
                    context.colors.textPrimary,
                    BlendMode.srcIn,
                  ),
                )
              : Text(
                  text!,
                  style: context.textStyles.onNumericButton,
                ),
        ),
      ),
    );
  }
}
