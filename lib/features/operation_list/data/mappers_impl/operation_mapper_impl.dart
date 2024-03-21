import 'package:budget_tracker/features/operation_list/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operation_list/data/mappers/i_operation_mapper.dart';
import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';

class OperationMapperImpl implements OperationMapper {
  @override
  Operation fromDto(OperationDTO dto) {
    return Operation(
      id: dto.id,
      title: dto.title,
      sum: double.parse(dto.sum.substring(0, dto.sum.length - 1)),
      currencySymbol: dto.sum[dto.sum.length - 1],
      companyName: dto.companyName ?? '',
    );
  }

  @override
  OperationDTO toDto(Operation entity) {
    return OperationDTO(
      id: entity.id,
      title: entity.title,
      sum: entity.sum.toString() + entity.currencySymbol,
      companyName: entity.companyName,
    );
  }
}
