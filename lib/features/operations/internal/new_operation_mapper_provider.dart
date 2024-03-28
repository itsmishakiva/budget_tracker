import 'package:budget_tracker/features/operations/data/mappers/new_operation_mapper.dart';
import 'package:budget_tracker/features/operations/data/mappers_impl/new_operation_mapper_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final newOperationMapperProvider = Provider<NewOperationMapper>(
  (ref) => NewOperationMapperImpl(),
);
