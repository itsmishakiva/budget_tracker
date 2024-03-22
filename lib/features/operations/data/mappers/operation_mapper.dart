import 'package:budget_tracker/features/operations/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operations/domain/entities/operation.dart';

abstract interface class OperationMapper {
  Operation fromDto(OperationDTO dto);

  OperationDTO toDto(Operation entity);
}
