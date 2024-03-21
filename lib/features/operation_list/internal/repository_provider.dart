import 'package:budget_tracker/features/operation_list/data/repositories_impl/operation_repository_impl.dart';
import 'package:budget_tracker/features/operation_list/domain/repositories/operation_repository.dart';
import 'package:budget_tracker/features/operation_list/internal/mapper_provider.dart';
import 'package:budget_tracker/features/operation_list/internal/service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final repositoryProvider = Provider<OperationRepository>(
  (ref) => OperationRepositoryImpl(
    ref.watch(serviceProvider),
    ref.watch(mapperProvider),
  ),
);
