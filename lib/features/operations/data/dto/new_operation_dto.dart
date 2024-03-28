import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_operation_dto.freezed.dart';
part 'new_operation_dto.g.dart';

@freezed
class NewOperationDTO with _$NewOperationDTO {
  factory NewOperationDTO({
    int? id,
    @Default(false) bool incoming,
    @Default(0.0) double sum,
    int? date,
    @Default(1) int checkId,
    int? categoryId,
  }) = _NewOperationDTO;

  factory NewOperationDTO.fromJson(Map<String, Object?> json) =>
      _$NewOperationDTOFromJson(json);
}
