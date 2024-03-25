import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_operation.freezed.dart';

@freezed
class NewOperation with _$NewOperation {
  factory NewOperation({
    int? id,
    @Default(false) bool incoming,
    @Default(0.0) double sum,
    DateTime? date,
    Category? category,
  }) = _NewOperation;
}
