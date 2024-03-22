import 'package:budget_tracker/features/operation_creation/data/dto/operation_type_dto.dart';
import 'package:budget_tracker/features/operation_creation/data/mappers/i_operation_type_mapper.dart';
import 'package:budget_tracker/features/operation_creation/domain/entities/operation_type.dart';

class OperationTypeMapperImpl implements OperationTypeMapper {
  @override
  OperationType fromDto(OperationTypeDTO dto) {
    return OperationType(
      id: dto.id,
      isIncome: dto.isIncome,
      title: dto.title,
      categoryIconAsset: dto.categoryIconAsset,
    );
  }

  @override
  OperationTypeDTO toDto(OperationType entity) {
    return OperationTypeDTO(
      id: entity.id,
      isIncome: entity.isIncome,
      title: entity.title,
      categoryIconAsset: entity.categoryIconAsset,
    );
  }
}
