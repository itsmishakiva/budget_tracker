import 'package:budget_tracker/features/operation_creation/data/dto/operation_type_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_analytics_dto.freezed.dart';
part 'category_analytics_dto.g.dart';

@freezed
class CategoryAnalyticsDTO with _$CategoryAnalyticsDTO {
  factory CategoryAnalyticsDTO({
    required OperationTypeDTO category,
    required double sum,
  }) = _CategoryAnalyticsDTO;

  factory CategoryAnalyticsDTO.fromJson(Map<String, Object?> json) =>
      _$CategoryAnalyticsDTOFromJson(json);
}
