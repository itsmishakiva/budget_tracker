import 'package:budget_tracker/features/categories/data/mappers/i_category_mapper.dart';
import 'package:budget_tracker/features/check/data/mappers/check_mapper.dart';
import 'package:budget_tracker/features/operations/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operations/data/mappers/operation_mapper.dart';
import 'package:budget_tracker/features/operations/domain/entities/operation.dart';

class OperationMapperImpl implements OperationMapper {
  final CategoryMapper categoryMapper;
  final CheckMapper checkMapper;

  OperationMapperImpl({
    required this.categoryMapper,
    required this.checkMapper,
  });

  @override
  Operation fromDto(OperationDTO dto) {
    return Operation(
      id: dto.id,
      incoming: dto.incoming,
      sum: dto.sum,
      date: DateTime.fromMillisecondsSinceEpoch(dto.date),
      categoryId: dto.categoryId,
      checkId: dto.checkId,
    );
  }

  @override
  OperationDTO toDto(Operation entity) {
    return OperationDTO(
      id: entity.id,
      incoming: entity.incoming,
      sum: entity.sum,
      date: entity.date.millisecondsSinceEpoch,
      categoryId: entity.categoryId,
      checkId: entity.checkId,
    );
  }
}
