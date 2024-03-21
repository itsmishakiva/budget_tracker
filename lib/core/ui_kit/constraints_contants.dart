import 'package:flutter_riverpod/flutter_riverpod.dart';

final constraintsConstantsProvider =
    Provider<ConstraintsConstants>((ref) => ConstraintsConstants());

class ConstraintsConstants {
  final horizontalScreenPadding = 16.0;
}
