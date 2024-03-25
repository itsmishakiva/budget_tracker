import 'package:budget_tracker/features/operation_creation/domain/entities/operation_type.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_analytics.freezed.dart';

@freezed
class CategoryAnalytics with _$CategoryAnalytics {
  factory CategoryAnalytics({
    required OperationType category,
    required double sum,
  }) = _CategoryAnalytics;
}
