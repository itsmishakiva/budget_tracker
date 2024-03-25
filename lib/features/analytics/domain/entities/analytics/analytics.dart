import 'package:budget_tracker/features/analytics/domain/entities/bar/bar.dart';
import 'package:budget_tracker/features/analytics/domain/entities/category_anajytics/category_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics.freezed.dart';

@freezed
class Analytics with _$Analytics {
  factory Analytics({
    required List<Bar> bars,
    required List<CategoryAnalytics> categories,
  }) = _Analyticsr;
}
