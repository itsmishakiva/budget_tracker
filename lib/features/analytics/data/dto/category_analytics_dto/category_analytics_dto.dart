import 'package:budget_tracker/features/categories/data/dto/category_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_analytics_dto.freezed.dart';
part 'category_analytics_dto.g.dart';

@freezed
class CategoryAnalyticsDTO with _$CategoryAnalyticsDTO {
  factory CategoryAnalyticsDTO({
    required CategoryDTO category,
    required double sum,
  }) = _CategoryAnalyticsDTO;

  factory CategoryAnalyticsDTO.fromJson(Map<String, Object?> json) =>
      _$CategoryAnalyticsDTOFromJson(json);
}
