import 'package:budget_tracker/features/categories/data/services/category_list_service.dart';
import 'package:budget_tracker/features/categories/data/services_impl/category_list_get_request.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryServiceProvider = Provider<CategoryListService>(
  (ref) => CategoryListGetRequest(),
);
