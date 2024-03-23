import 'package:budget_tracker/features/operations/presentation/view/widgets/numpad.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final numpadControllerProvider =
    StateNotifierProvider<NumpadController, String>(
  (ref) => NumpadController(),
);
