import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check.freezed.dart';

@freezed
class Check with _$Check {
  factory Check({
    required int id,
    required double sum,
    required double expenses,
    required double income,
  }) = _Check;
}
