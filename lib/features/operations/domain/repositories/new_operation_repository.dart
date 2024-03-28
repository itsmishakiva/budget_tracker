import 'package:budget_tracker/features/operations/domain/entities/new_operation.dart';

abstract interface class NewOperationRepository {
  Future<int> setOperation(NewOperation newOperation);
}
