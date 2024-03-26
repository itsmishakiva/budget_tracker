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
      emoji: dto.emoji,
      color: Color(dto.color),
    );
  }

  @override
  CategoryDTO toDto(Category entity) {
    return CategoryDTO(
      id: entity.id,
      title: entity.title,
      emoji: entity.emoji,
      color: entity.color.value,
    );
  }
}
