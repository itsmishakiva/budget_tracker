import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bar.freezed.dart';

@freezed
class Bar with _$Bar {
  factory Bar({
    required String label,
    required double sum,
  }) = _Bar;
}
