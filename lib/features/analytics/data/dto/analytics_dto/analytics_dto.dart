import 'package:budget_tracker/features/analytics/data/dto/bar_dto/bar_dto.dart';
import 'package:budget_tracker/features/analytics/data/dto/category_analytics_dto/category_analytics_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'analytics_dto.freezed.dart';
part 'analytics_dto.g.dart';

@freezed
class AnalyticsDTO with _$AnalyticsDTO {
  factory AnalyticsDTO({
    required List<BarDTO> bars,
    required List<CategoryAnalyticsDTO> categories,
  }) = _AnalyticDTO;

  factory AnalyticsDTO.fromJson(Map<String, Object?> json) =>
      _$AnalyticsDTOFromJson(json);
}
