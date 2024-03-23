import 'package:budget_tracker/features/categories/data/mappers/i_category_mapper.dart';
import 'package:budget_tracker/features/operations/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operations/data/mappers/operation_mapper.dart';
import 'package:budget_tracker/features/operations/domain/entities/operation.dart';

class OperationMapperImpl implements OperationMapper {
  final CategoryMapper categoryMapper;

  OperationMapperImpl({
    required this.categoryMapper,
  });

  @override
  Operation fromDto(OperationDTO dto) {
    return Operation(
      id: dto.id,
      incoming: dto.incoming,
      sum: double.parse(dto.sum.substring(0, dto.sum.length - 1)),
      date: DateTime.fromMillisecondsSinceEpoch(dto.date),
      category: categoryMapper.fromDto(dto.category),
    );
  }

  @override
  OperationDTO toDto(Operation entity) {
    return OperationDTO(
      id: entity.id,
      incoming: entity.incoming,
      sum: entity.sum.toString(),
      date: entity.date.millisecondsSinceEpoch,
      category: categoryMapper.toDto(entity.category),
    );
  }
}
