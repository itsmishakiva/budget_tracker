import 'package:budget_tracker/core/ui_kit/constraints_contants.dart';
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_view_state.dart';
import 'package:budget_tracker/features/pin_code/presentation/widgets/numeric_keyboard_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PinCodeKeyboard extends ConsumerWidget {
  const PinCodeKeyboard({
    super.key,
    required this.biometryType,
    required this.onTap,
    required this.onBackButtonTap,
    this.onBiometryTap,
  });

  final BiometryTypes biometryType;
  final void Function(String) onTap;
  final void Function() onBackButtonTap;
  final void Function()? onBiometryTap;

  Row _generateNumberButtonsRow(int startNumber) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        3,
        (index) => NumericKeyboardButton(
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
                  NumericKeyboardButton(
                    svgAssetName: biometryType == BiometryTypes.faceId
                        ? 'assets/svg/face_id.svg'
                        : 'assets/svg/fingerprint.svg',
                    onTap: onBiometryTap!,
                  ),
                if (biometryType == BiometryTypes.none)
                  const SizedBox(width: 74),
                NumericKeyboardButton(
                  text: '0',
                  onTap: () => onTap('0'),
                ),
                NumericKeyboardButton(
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
