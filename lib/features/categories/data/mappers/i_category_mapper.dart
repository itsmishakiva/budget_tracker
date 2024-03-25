import 'package:budget_tracker/features/categories/data/dto/category_dto.dart';
import 'package:budget_tracker/features/categories/domain/entities/category.dart';

abstract interface class CategoryMapper {
  Category fromDto(CategoryDTO dto);

  CategoryDTO toDto(Category entity);
}
