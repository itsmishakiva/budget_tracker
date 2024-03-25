import 'package:budget_tracker/features/analytics/data/dto/analytics_dto/analytics_dto.dart';
import 'package:budget_tracker/features/analytics/data/mappers/bar_mapper.dart';
import 'package:budget_tracker/features/analytics/data/mappers/category_analytics.dart';
import 'package:budget_tracker/features/analytics/domain/entities/analytics/analytics.dart';

class AnalyticsMapper {
  Analytics fromDto(AnalyticsDTO dto) {
    return Analytics(
      categories: dto.categories
          .map((e) => CategoryAnalyticsMapper().fromDto(e))
          .toList(),
      bars: dto.bars.map((e) => BarMapper().fromDto(e)).toList(),
    );
  }

  AnalyticsDTO toDto(Analytics entity) {
    return AnalyticsDTO(
      categories: entity.categories
          .map((e) => CategoryAnalyticsMapper().toDto(e))
          .toList(),
      bars: entity.bars.map((e) => BarMapper().toDto(e)).toList(),
    );
  }
}
