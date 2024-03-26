import 'package:budget_tracker/features/categories/internal/category_mapper_provider.dart';
import 'package:budget_tracker/features/check/internal/check_mapper_provider.dart';
import 'package:budget_tracker/features/operations/data/mappers/operation_mapper.dart';
import 'package:budget_tracker/features/operations/data/mappers_impl/operation_mapper_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operationMapperProvider = Provider<OperationMapper>(
  (ref) => OperationMapperImpl(
    categoryMapper: ref.watch(categoryMapperProvider),
    checkMapper: ref.watch(checkMapperProvider),
  ),
);
