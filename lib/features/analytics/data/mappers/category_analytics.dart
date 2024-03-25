import 'package:budget_tracker/features/analytics/data/dto/category_analytics_dto/category_analytics_dto.dart';
import 'package:budget_tracker/features/analytics/domain/entities/category_anajytics/category_analytics.dart';
import 'package:budget_tracker/features/categories/data/mappers_impl/category_mapper_impl.dart';

class CategoryAnalyticsMapper {
  CategoryAnalytics fromDto(CategoryAnalyticsDTO dto) {
    return CategoryAnalytics(
      category: CategoryMapperImpl().fromDto(dto.category),
      sum: dto.sum,
    );
  }

  CategoryAnalyticsDTO toDto(CategoryAnalytics entity) {
    return CategoryAnalyticsDTO(
      category: CategoryMapperImpl().toDto(entity.category),
      sum: entity.sum,
    );
  }
}
