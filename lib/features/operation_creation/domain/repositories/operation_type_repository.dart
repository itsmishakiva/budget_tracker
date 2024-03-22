import 'package:budget_tracker/features/operation_creation/domain/entities/operation_type.dart';

abstract interface class OperationTypeRepository {
  Future<List<OperationType>> getOperationType();
}
