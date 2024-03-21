import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation.freezed.dart';

@freezed
class Operation with _$Operation {
  factory Operation({
    required int id,
    required String title,
    required double sum,
    required String currencySymbol,
    required String companyName,
  }) = _Operation;
}
