import 'package:flutter_riverpod/flutter_riverpod.dart';

final constraintsConstantsProvider = Provider<ConstraintsConstants>(
  (ref) => ConstraintsConstants(),
);

class ConstraintsConstants {
  final horizontalScreenPadding = 16.0;
  final defaultBorderRadius = 22.0;
  final tileMargin = 5.0;
  final tileBorderRadius = 20.0;
}
