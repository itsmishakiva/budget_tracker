import 'package:budget_tracker/core/ui_kit/constraints_constants.dart';
import 'package:budget_tracker/core/ui_kit/widgets/numeric_keyboard_button.dart';
import 'package:budget_tracker/features/operations/internal/numpad_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NumpadController extends StateNotifier<String> {
  NumpadController() : super('0');

  void appendDigit(String digit) {
    if (state.length < 10) {
      (state == '0') ? {state = digit} : {state = state + digit};
    }
  }

  void deleteLastDigit() {
    if (state.length > 1) {
      state = state.substring(0, state.length - 1);
    } else {
      state = '0';
    }
  }

  void appendComma() {
    if ((!state.contains(',')) && (state.length > 1)) {
      state = '$state,';
    }
  }
}

class NumericRow extends ConsumerWidget {
  const NumericRow({super.key, required this.startNumber});

  final int startNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        3,
        (index) => NumericKeyboardButton(
          text: (index + startNumber).toString(),
          onTap: () => ref.read(numpadControllerProvider.notifier).appendDigit(
                (index + startNumber).toString(),
              ),
        ),
      ),
    );
  }
}

class Numpad extends ConsumerWidget {
  const Numpad({
    super.key,
  });

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
            const NumericRow(startNumber: 1),
            const NumericRow(startNumber: 4),
            const NumericRow(startNumber: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NumericKeyboardButton(
                  text: ',',
                  // svgAssetName: 'assets/svg/comma_svg',
                  onTap: () {
                    ref.read(numpadControllerProvider.notifier).appendComma();
                  },
                ),
                NumericKeyboardButton(
                  text: '0',
                  onTap: () {
                    ref
                        .read(numpadControllerProvider.notifier)
                        .appendDigit('0');
                  },
                ),
                NumericKeyboardButton(
                  svgAssetName: 'assets/svg/back_icon.svg',
                  onTap: () {
                    ref
                        .read(numpadControllerProvider.notifier)
                        .deleteLastDigit();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
