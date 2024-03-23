import 'package:budget_tracker/features/categories/data/repositories_impl/category_repository_impl.dart';
import 'package:budget_tracker/features/categories/domain/repositories/category_repository.dart';
import 'package:budget_tracker/features/categories/internal/category_mapper_provider.dart';
import 'package:budget_tracker/features/categories/internal/category_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final categoryRepositoryProvider = Provider<CategoryRepository>(
  (ref) => CategoryRepositoryImpl(
    ref.watch(categoryServiceProvider),
    ref.watch(categoryMapperProvider),
  ),
);
