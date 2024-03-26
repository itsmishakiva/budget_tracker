import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_dto.freezed.dart';
part 'check_dto.g.dart';

@freezed
class CheckDTO with _$CheckDTO {
  factory CheckDTO({
    required int id,
    required double sum,
    required double outcomingSum,
    required double incomingSum,
  }) = _CheckDTO;

  factory CheckDTO.fromJson(Map<String, Object?> json) =>
      _$CheckDTOFromJson(json);
}
