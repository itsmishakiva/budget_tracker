import 'package:budget_tracker/features/operations/data/mappers/i_operation_mapper.dart';
import 'package:budget_tracker/features/operations/data/mappers_impl/operation_mapper_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mapperProvider = Provider<OperationMapper>(
  (ref) => OperationMapperImpl(),
);
