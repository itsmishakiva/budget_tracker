import 'package:budget_tracker/features/check/domain/entities/check.dart';
import 'package:budget_tracker/features/check/data/dto/check_dto.dart';

abstract interface class CheckMapper {
  Check fromDto(CheckDTO dto);

  CheckDTO toDto(Check entity);
}
