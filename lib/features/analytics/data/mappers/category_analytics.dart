import 'package:budget_tracker/features/analytics/data/dto/category_analytics_dto/category_analytics_dto.dart';
import 'package:budget_tracker/features/analytics/domain/entities/category_anajytics/category_analytics.dart';
import 'package:budget_tracker/features/operation_creation/data/mappers_impl/operation_type_mapper_impl.dart';

class CategoryAnalyticsMapper {
  CategoryAnalytics fromDto(CategoryAnalyticsDTO dto) {
    return CategoryAnalytics(
      category: OperationTypeMapperImpl().fromDto(dto.category),
      sum: dto.sum,
    );
  }

  CategoryAnalyticsDTO toDto(CategoryAnalytics entity) {
    return CategoryAnalyticsDTO(
      category: OperationTypeMapperImpl().toDto(entity.category),
      sum: entity.sum,
    );
  }
}
