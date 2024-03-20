import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';

abstract interface class OperationRepository {
  Future<List<Operation>> getOperationList();
}
