import 'package:budget_tracker/features/operations/data/services/operation_list_service.dart';
import 'package:budget_tracker/features/operations/data/services_impl/service_operation_list_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operationServiceProvider = Provider<OperationListService>(
  (ref) => ServerOperationListService(),
);
