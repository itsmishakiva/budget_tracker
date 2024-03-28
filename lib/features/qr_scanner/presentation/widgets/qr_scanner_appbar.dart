import 'package:budget_tracker/core/ui_kit/constraints_constants.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QrScannerAppbar extends ConsumerWidget {
  const QrScannerAppbar({super.key, required this.onTap});
  final Function() onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constraints = ref.read(constraintsConstantsProvider);
    return Padding(
      padding: EdgeInsets.fromLTRB(
        constraints.horizontalScreenPadding,
        0,
        constraints.horizontalScreenPadding,
        constraints.horizontalScreenPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
            onTap: () {
              onTap;
            },
          ),
          Text(
            context.locale!.scanCheck,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
