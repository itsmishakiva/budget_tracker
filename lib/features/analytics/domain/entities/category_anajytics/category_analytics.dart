import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_analytics.freezed.dart';

@freezed
class CategoryAnalytics with _$CategoryAnalytics {
  factory CategoryAnalytics({
    required Category category,
    required double sum,
  }) = _CategoryAnalytics;
}
