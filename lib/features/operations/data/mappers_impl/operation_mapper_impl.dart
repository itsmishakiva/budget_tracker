import 'package:budget_tracker/features/categories/data/mappers_impl/category_mapper_impl.dart';
import 'package:budget_tracker/features/operations/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operations/data/mappers/operation_mapper.dart';
import 'package:budget_tracker/features/operations/domain/entities/operation.dart';

class OperationMapperImpl implements OperationMapper {

  final CategoryMapperImpl categoryMapperImpl;
  OperationMapperImpl({required this.categoryMapperImpl});

  @override
  Operation fromDto(OperationDTO dto) {
    return Operation(
        id: dto.id,
        income: dto.income,
        sum: double.parse(dto.sum.substring(0, dto.sum.length - 1)),
        date: DateTime.fromMillisecondsSinceEpoch(dto.date),
        category: dto.category,
    );
  }
}

  @override
  OperationDTO toDto(Operation entity) {
    return OperationDTO(
      id: entity.id,
      income: entity.income,
      sum: entity.sum.toString(),
      date: entity.date.millisecondsSinceEpoch,
      category: categoryMapperImpl.fromDTO(dto.category),
    );
  }
}
