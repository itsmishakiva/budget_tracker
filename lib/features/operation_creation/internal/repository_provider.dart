import 'package:budget_tracker/features/operation_creation/data/repositories_impl/operation_type_repository_impl.dart';
import 'package:budget_tracker/features/operation_creation/domain/repositories/operation_type_repository.dart';
import 'package:budget_tracker/features/operation_creation/internal/mapper_provider.dart';
import 'package:budget_tracker/features/operation_creation/internal/service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final repositoryProvider = Provider<OperationTypeRepository>(
      (ref) => OperationTypeRepositoryImpl(
    ref.watch(serviceProvider),
    ref.watch(mapperProvider),
  ),
);