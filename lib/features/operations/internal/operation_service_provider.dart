import 'package:budget_tracker/features/operations/data/services/operation_list_service.dart';
import 'package:budget_tracker/features/operations/data/services_impl/mock_operation_list_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final serviceProvider = Provider<OperationListService>(
  (ref) => MockOperationListService(),
);
