import 'package:budget_tracker/features/operations/data/repositories_impl/new_operation_repository_impl.dart';
import 'package:budget_tracker/features/operations/domain/repositories/new_operation_repository.dart';
import 'package:budget_tracker/features/operations/internal/new_operation_mapper_provider.dart';
import 'package:budget_tracker/features/operations/internal/new_operation_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final newOperationRepositoryProvider = Provider<NewOperationRepository>(
  (ref) => NewOperationRepositoryImpl(
    ref.watch(newOperationServiceProvider),
    ref.watch(newOperationMapperProvider),
  ),
);
