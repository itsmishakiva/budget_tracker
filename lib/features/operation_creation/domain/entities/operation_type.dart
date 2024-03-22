import 'package:freezed_annotation/freezed_annotation.dart';
part 'operation_type.freezed.dart';

@freezed
class OperationType with _$OperationType {
  factory OperationType({
    required int id,
    required bool isIncome,
    required String title,
    required String categoryIconAsset,
  }) = _OperationType;
}
