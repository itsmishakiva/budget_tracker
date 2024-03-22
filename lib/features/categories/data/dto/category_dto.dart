import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
class CategoryDTO with _$CategoryDTO {
  factory CategoryDTO({
    required int id,
    required bool isIncome,
    required String title,
    required String icon,
  }) = _CategoryDTO;

  factory CategoryDTO.fromJson(Map<String, Object?> json) =>
      _$CategoryDTOFromJson(json);
}
