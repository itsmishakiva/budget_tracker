import 'package:budget_tracker/features/check/domain/entities/check.dart';
import 'package:budget_tracker/features/check/data/dto/check_dto.dart';
import 'package:budget_tracker/features/check/data/mappers/check_mapper.dart';

class CheckMapperImpl implements CheckMapper {
  @override
  Check fromDto(CheckDTO dto) {
    return Check(
      id: dto.id,
      title: dto.title,
      sum: dto.sum,
      expenses: dto.expenses,
      income: dto.income,
    );
  }

  @override
  CheckDTO toDto(Check entity) {
    return CheckDTO(
      id: entity.id,
      title: entity.title,
      sum: entity.sum,
      expenses: entity.expenses,
      income: entity.sum,
    );
  }
}
