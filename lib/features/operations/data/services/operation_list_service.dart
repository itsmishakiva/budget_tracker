import 'package:budget_tracker/features/operations/data/dto/operation_dto.dart';

abstract interface class OperationListService {
  Future<List<OperationDTO>> getOperationList();
  Future<void> setOperation(OperationDTO operationDTO);
}
