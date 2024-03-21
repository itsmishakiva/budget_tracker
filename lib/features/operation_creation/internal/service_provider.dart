import 'package:budget_tracker/features/operation_creation/data/services/operation_type_list_service.dart';
import 'package:budget_tracker/features/operation_creation/data/services_impl/mock_operation_type_list_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final serviceProvider = Provider<OperationTypeListService>(
      (ref) => MockOperationTypeListService(),
);