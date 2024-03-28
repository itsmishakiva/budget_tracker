import 'package:budget_tracker/core/internal/dio_provider.dart';
import 'package:budget_tracker/features/operations/data/services/new_operation_service.dart';
import 'package:budget_tracker/features/operations/data/services_impl/new_operation_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final newOperationServiceProvider = Provider<NewOperationService>(
  (ref) => NewOperationServiceImpl(
    ref.watch(dioProvider),
  ),
);
