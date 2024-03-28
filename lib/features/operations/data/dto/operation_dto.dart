import 'package:budget_tracker/features/categories/data/dto/category_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_dto.freezed.dart';
part 'operation_dto.g.dart';

@freezed
class OperationDTO with _$OperationDTO {
  factory OperationDTO({
    required int id,
    required bool incoming,
    required double sum,
    required int date,
    required int checkId,
    required CategoryDTO category,
  }) = _OperationDTO;

  factory OperationDTO.fromJson(Map<String, Object?> json) =>
      _$OperationDTOFromJson(json);
}
