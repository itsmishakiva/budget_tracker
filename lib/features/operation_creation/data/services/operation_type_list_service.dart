import 'package:budget_tracker/features/operation_creation/data/dto/operation_type_dto.dart';

abstract interface class OperationTypeListService {
  Future<List<OperationTypeDTO>> getOperationTypeList();
}
