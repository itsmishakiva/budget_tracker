import 'package:budget_tracker/features/operations/domain/entities/operation.dart';

abstract interface class OperationRepository {
  Future<List<Operation>> getOperationList();
}
