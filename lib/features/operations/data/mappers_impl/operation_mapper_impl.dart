import 'package:budget_tracker/features/operations/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operations/data/mappers/operation_mapper.dart';
import 'package:budget_tracker/features/operations/domain/entities/operation.dart';

class OperationMapperImpl implements OperationMapper {
  @override
  Operation fromDto(OperationDTO dto) {
    return Operation(
      id: dto.id,
      title: dto.title,
      sum: double.parse(dto.sum.substring(0, dto.sum.length - 1)),
      currencySymbol: dto.sum[dto.sum.length - 1],
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
      sum: entity.sum.toString() + entity.currencySymbol,
      description: entity.description,
      companyName: entity.companyName,
      companyAssetUrl: entity.companyAssetUrl,
    );
  }
}
