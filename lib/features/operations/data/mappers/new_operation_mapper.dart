import 'package:budget_tracker/features/operations/data/dto/new_operation_dto.dart';
import 'package:budget_tracker/features/operations/domain/entities/new_operation.dart';

abstract interface class NewOperationMapper {
  NewOperation fromDto(NewOperationDTO dto);

  NewOperationDTO toDto(NewOperation entity);
}
