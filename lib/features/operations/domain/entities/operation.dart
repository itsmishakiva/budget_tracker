import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation.freezed.dart';

@freezed
class Operation with _$Operation {
  factory Operation({
    required int id,
    required bool incoming,
    required double sum,
    required DateTime date,
    required Category category,
    required int checkId,
  }) = _Operation;
}
