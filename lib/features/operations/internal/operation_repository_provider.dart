import 'package:budget_tracker/features/operations/data/repositories_impl/operation_repository_impl.dart';
import 'package:budget_tracker/features/operations/domain/repositories/operation_repository.dart';
import 'package:budget_tracker/features/operations/internal/opeartion_mapper_provider.dart';
import 'package:budget_tracker/features/operations/internal/operation_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operationRepositoryProvider = Provider<OperationRepository>(
  (ref) => OperationRepositoryImpl(
    ref.watch(operationServiceProvider),
    ref.watch(operationMapperProvider),
  ),
);
