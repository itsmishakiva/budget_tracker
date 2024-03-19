import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';

abstract interface class IOperationListRepository {
  Future<List<Operation>> getOperationList();
}
