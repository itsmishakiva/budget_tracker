import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_type_dto.freezed.dart';
part 'operation_type_dto.g.dart';

@freezed
class OperationTypeDTO with _$OperationTypeDTO {
  factory OperationTypeDTO({
    required int id,
    required bool isIncome,
    required String title,
    required String categoryIconAsset,
  }) = _OperationTypeDTO;

  factory OperationTypeDTO.fromJson(Map<String, Object?> json) =>
      _$OperationTypeDTOFromJson(json);
}