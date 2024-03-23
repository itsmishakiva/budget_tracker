import 'package:budget_tracker/features/categories/domain/entities/category.dart'
    as entity_category;
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_dto.freezed.dart';
part 'operation_dto.g.dart';

@freezed
class OperationDTO with _$OperationDTO {
  factory OperationDTO({
    required int id,
    required bool incoming,
    required String sum,
    required int date,
    required entity_category.Category category,
  }) = _OperationDTO;

  factory OperationDTO.fromJson(Map<String, Object?> json) =>
      _$OperationDTOFromJson(json);
}
