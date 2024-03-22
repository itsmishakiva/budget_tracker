import 'package:budget_tracker/features/categories/data/mappers/i_category_mapper.dart';
import 'package:budget_tracker/features/categories/data/mappers_impl/category_mapper_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mapperProvider = Provider<CategoryMapper>(
  (ref) => CategoryMapperImpl(),
);
