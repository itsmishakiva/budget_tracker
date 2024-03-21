import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account.freezed.dart';

@freezed
class Account with _$Account {
  factory Account({
    required int id,
    required String title,
    required double sum,
    required double expenses,
    required double income,
    required String currencySymbol,
  }) = _Account;
}
