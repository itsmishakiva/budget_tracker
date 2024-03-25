import 'dart:ui';

import 'package:budget_tracker/features/categories/data/dto/category_dto.dart';
import 'package:budget_tracker/features/categories/data/mappers/i_category_mapper.dart';
import 'package:budget_tracker/features/categories/domain/entities/category.dart';

class CategoryMapperImpl implements CategoryMapper {
  @override
  Category fromDto(CategoryDTO dto) {
    return Category(
      id: dto.id,
      title: dto.title,
      icon: dto.icon,
      color: Color(dto.color),
    );
  }

  @override
  CategoryDTO toDto(Category entity) {
    return CategoryDTO(
      id: entity.id,
      title: entity.title,
      icon: entity.icon,
      color: entity.color.value,
    );
  }
}
