import 'package:budget_tracker/core/internal/dio_provider.dart';
import 'package:budget_tracker/features/categories/data/services/category_list_service.dart';
import 'package:budget_tracker/features/categories/data/services_impl/remote_categories_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryServiceProvider = Provider<CategoryListService>(
  (ref) => RemoteCategoriesService(
    ref.watch(dioProvider),
  ),
);