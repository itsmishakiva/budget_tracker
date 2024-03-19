import 'package:budget_tracker/features/operation_list/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operation_list/data/i_mappers/i_operation_mapper.dart';
import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';

class OperationMapper implements IOperationMapper {
  @override
  Operation fromDto(OperationDTO dto) {
    return Operation(
      id: dto.id,
      title: dto.title,
      sum: dto.sum,
      description: dto.description ?? '',
      companyName: dto.companyName ?? '',
      companyAssetUrl: dto.companyAssetUrl,
    );
  }

  @override
  OperationDTO toDto(Operation entity) {
    return OperationDTO(
      id: entity.id,
      title: entity.title,
      sum: entity.sum,
      description: entity.description,
      companyName: entity.companyName,
      companyAssetUrl: entity.companyAssetUrl,
    );
  }
}
