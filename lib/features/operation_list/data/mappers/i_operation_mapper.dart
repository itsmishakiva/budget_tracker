import 'package:budget_tracker/features/operation_list/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';

abstract interface class OperationMapper {
  Operation fromDto(OperationDTO dto);

  OperationDTO toDto(Operation entity);
}
