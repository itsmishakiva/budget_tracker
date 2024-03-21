import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_dto.freezed.dart';
part 'operation_dto.g.dart';

@freezed
class OperationDTO with _$OperationDTO {
  factory OperationDTO({
    required int id,
    required String title,
    required String sum,
    String? companyName,
  }) = _OperationDTO;

  factory OperationDTO.fromJson(Map<String, Object?> json) =>
      _$OperationDTOFromJson(json);
}
