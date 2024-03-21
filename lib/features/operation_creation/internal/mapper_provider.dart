import 'package:budget_tracker/features/operation_creation/data/mappers/i_operation_type_mapper.dart';
import 'package:budget_tracker/features/operation_creation/data/mappers_impl/operation_type_mapper_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mapperProvider = Provider<OperationTypeMapper>(
      (ref) => OperationTypeMapperImpl(),
);