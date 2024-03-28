import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isar/isar.dart';

part 'check_dto.g.dart';

@JsonSerializable()
@collection
class CheckDTO {
  final Id id;
  final double sum;
  final double outcomingSum;
  final double incomingSum;

  CheckDTO({
    this.id = Isar.autoIncrement,
    required this.sum,
    required this.outcomingSum,
    required this.incomingSum,
  });

  factory CheckDTO.fromJson(Map<String, Object?> json) =>
      _$CheckDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CheckDTOToJson(this);
}
