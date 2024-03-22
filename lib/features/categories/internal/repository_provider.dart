import 'package:budget_tracker/features/categories/data/repositories_impl/category_repository_impl.dart';
import 'package:budget_tracker/features/categories/domain/repositories/category_repository.dart';
import 'package:budget_tracker/features/categories/internal/mapper_provider.dart';
import 'package:budget_tracker/features/categories/internal/service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final repositoryProvider = Provider<CategoryRepository>(
  (ref) => CategoryRepositoryImpl(
    ref.watch(serviceProvider),
    ref.watch(mapperProvider),
  ),
);
