import 'package:budget_tracker/features/operations/data/dto/new_operation_dto.dart';
import 'package:budget_tracker/features/operations/data/mappers/new_operation_mapper.dart';
import 'package:budget_tracker/features/operations/domain/entities/new_operation.dart';

class NewOperationMapperImpl implements NewOperationMapper {
  @override
  NewOperation fromDto(NewOperationDTO dto) {
    return NewOperation(
      id: dto.id,
      incoming: dto.incoming,
      sum: dto.sum,
      date: DateTime.fromMillisecondsSinceEpoch(dto.date!),
      categoryId: dto.categoryId,
      checkId: dto.checkId,
    );
  }

  @override
  NewOperationDTO toDto(NewOperation entity) {
    return NewOperationDTO(
      id: entity.id,
      incoming: entity.incoming,
      sum: entity.sum,
      date: entity.date?.millisecondsSinceEpoch,
      categoryId: entity.categoryId,
      checkId: entity.checkId,
    );
  }
}
