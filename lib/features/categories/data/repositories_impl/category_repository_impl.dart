import 'package:budget_tracker/features/categories/data/mappers/i_category_mapper.dart';
import 'package:budget_tracker/features/categories/data/services/category_list_service.dart';
import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:budget_tracker/features/categories/domain/repositories/category_repository.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  CategoryRepositoryImpl(this._service, this._mapper);

  final CategoryListService _service;
  final CategoryMapper _mapper;

  @override
  Future<Map<int, Category>> getCategories() async {
    final resultDTO = await _service.getCategoryList();

    final Map<int, Category> categoriesMap = {};
    resultDTO.forEach((key, value) {
      final category = _mapper.fromDto(value);
      categoriesMap[key] = category;
    });

    return categoriesMap;
  }
}
