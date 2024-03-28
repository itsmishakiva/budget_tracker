import 'package:budget_tracker/features/categories/internal/category_mapper_provider.dart';
import 'package:budget_tracker/features/check/internal/check_mapper_provider.dart';
import 'package:budget_tracker/features/operations/data/mappers/new_operation_mapper.dart';
import 'package:budget_tracker/features/operations/data/mappers_impl/new_operation_mapper_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final newOperationMapperProvider = Provider<NewOperationMapper>(
  (ref) => NewOperationMapperImpl(
    categoryMapper: ref.watch(categoryMapperProvider),
    checkMapper: ref.watch(checkMapperProvider),
  ),
);
