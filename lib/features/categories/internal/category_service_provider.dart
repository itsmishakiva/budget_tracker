import 'package:budget_tracker/features/categories/data/requests/category_list_request.dart';
import 'package:budget_tracker/features/categories/data/services/category_list_service.dart';
import 'package:budget_tracker/features/categories/data/services_impl/mock_category_list_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryServiceProvider = Provider<CategoryListService>(
  (ref) => CategoryListRequest(),
  // (ref) => MockCategoryListService(),
);
