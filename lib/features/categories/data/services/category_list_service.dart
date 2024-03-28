import 'package:budget_tracker/features/categories/data/dto/category_dto.dart';

abstract interface class CategoryListService {
  Future<List<CategoryDTO>> getCategoryList();
  // Future<CategoryDTO> getCategoryById(int id);
}
