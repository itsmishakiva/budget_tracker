import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bar_dto.freezed.dart';
part 'bar_dto.g.dart';

@freezed
class BarDTO with _$BarDTO {
  factory BarDTO({
    required String label,
    required double sum,
  }) = _BarDTO;

  factory BarDTO.fromJson(Map<String, Object?> json) => _$BarDTOFromJson(json);
}
