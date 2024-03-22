import 'package:budget_tracker/features/operations/data/repositories_impl/operation_repository_impl.dart';
import 'package:budget_tracker/features/operations/domain/repositories/operation_repository.dart';
import 'package:budget_tracker/features/operations/internal/mapper_provider.dart';
import 'package:budget_tracker/features/operations/internal/service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final repositoryProvider = Provider<OperationRepository>(
  (ref) => OperationRepositoryImpl(
    ref.watch(serviceProvider),
    ref.watch(mapperProvider),
  ),
);
