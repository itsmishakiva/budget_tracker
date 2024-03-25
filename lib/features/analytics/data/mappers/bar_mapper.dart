import 'package:budget_tracker/features/analytics/data/dto/bar_dto/bar_dto.dart';
import 'package:budget_tracker/features/analytics/domain/entities/bar/bar.dart';

class BarMapper {
  Bar fromDto(BarDTO dto) {
    return Bar(
      label: dto.label,
      sum: dto.sum,
    );
  }

  BarDTO toDto(Bar entity) {
    return BarDTO(
      label: entity.label,
      sum: entity.sum,
    );
  }
}
