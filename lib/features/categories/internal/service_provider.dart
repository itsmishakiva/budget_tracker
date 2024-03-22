import 'package:budget_tracker/features/categories/data/services/category_list_service.dart';
import 'package:budget_tracker/features/categories/data/services_impl/mock_category_list_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final serviceProvider = Provider<CategoryListService>(
  (ref) => MockCategoryListService(),
);
