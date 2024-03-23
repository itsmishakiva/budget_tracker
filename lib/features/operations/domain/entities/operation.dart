import 'package:budget_tracker/features/categories/domain/entities/category.dart'
    as entity_category;
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation.freezed.dart';

@freezed
class Operation with _$Operation {
  factory Operation({
    required int id,
    required bool incoming,
    required double sum,
    required DateTime date,
    required entity_category.Category category,
  }) = _Operation;
}
