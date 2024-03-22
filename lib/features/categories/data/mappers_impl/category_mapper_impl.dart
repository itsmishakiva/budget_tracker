import 'package:budget_tracker/features/categories/data/dto/category_dto.dart';
import 'package:budget_tracker/features/categories/data/mappers/i_category_mapper.dart';
import 'package:budget_tracker/features/categories/domain/entities/category.dart';

class CategoryMapperImpl implements CategoryMapper {
  @override
  Category fromDto(CategoryDTO dto) {
    return Category(
      id: dto.id,
      isIncome: dto.isIncome,
      title: dto.title,
      icon: dto.icon,
    );
  }

  @override
  CategoryDTO toDto(Category entity) {
    return CategoryDTO(
      id: entity.id,
      isIncome: entity.isIncome,
      title: entity.title,
      icon: entity.icon,
    );
  }
}
