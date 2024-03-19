import 'package:budget_tracker/features/operation_list/data/dto/operation_dto.dart';

abstract interface class IOperationListService {
  Future<List<OperationDTO>> getOperationList();
}
