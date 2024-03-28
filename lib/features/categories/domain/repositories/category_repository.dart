import 'package:budget_tracker/features/categories/domain/entities/category.dart';

abstract interface class CategoryRepository {
  Future<List<Category>> getCategories();
}
