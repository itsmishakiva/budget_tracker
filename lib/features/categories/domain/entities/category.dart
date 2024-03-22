import 'package:freezed_annotation/freezed_annotation.dart';
part 'category.freezed.dart';

@freezed
class Category with _$Category {
  factory Category({
    required int id,
    required bool isIncome,
    required String title,
    required String icon,
  }) = _Category;
}
