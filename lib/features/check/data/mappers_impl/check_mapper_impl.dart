import 'package:budget_tracker/features/check/domain/entities/check.dart';
import 'package:budget_tracker/features/check/data/dto/check_dto.dart';
import 'package:budget_tracker/features/check/data/mappers/check_mapper.dart';

class CheckMapperImpl implements CheckMapper {
  @override
  Check fromDto(CheckDTO dto) {
    return Check(
      id: dto.id,
      sum: dto.sum,
      expenses: dto.outcomingSum,
      income: dto.incomingSum,
    );
  }

  @override
  CheckDTO toDto(Check entity) {
    return CheckDTO(
      id: entity.id,
      sum: entity.sum,
      outcomingSum: entity.expenses,
      incomingSum: entity.sum,
    );
  }
}
