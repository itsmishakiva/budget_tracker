import 'package:budget_tracker/features/operations/data/dto/new_operation_dto.dart';

abstract interface class NewOperationService {
  Future<int> setOperation(NewOperationDTO newOperationDTO);
}
