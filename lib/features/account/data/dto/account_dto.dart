import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_dto.freezed.dart';
part 'account_dto.g.dart';

@freezed
class AccountDTO with _$AccountDTO {
  factory AccountDTO({
    required int id,
    required String title,
    required String sum,
    required String expenses,
    required String income,
  }) = _AccountDTO;

  factory AccountDTO.fromJson(Map<String, Object?> json) =>
      _$AccountDTOFromJson(json);
}
