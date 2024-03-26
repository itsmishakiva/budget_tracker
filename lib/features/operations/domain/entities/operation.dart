import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation.freezed.dart';

@freezed
class Operation with _$Operation {
  factory Operation({
    required int id,
    required bool incoming,
    required double sum,
    required DateTime date,
    required int categoryId,
    required int checkId,
  }) = _Operation;
}
