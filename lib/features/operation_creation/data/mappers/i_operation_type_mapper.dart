import 'package:budget_tracker/features/operation_creation/data/dto/operation_type_dto.dart';
import 'package:budget_tracker/features/operation_creation/domain/entities/operation_type.dart';

abstract interface class OperationTypeMapper {
  OperationType fromDto(OperationTypeDTO dto);

  OperationTypeDTO toDto(OperationType entity);
}
