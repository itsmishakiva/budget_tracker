import 'package:budget_tracker/features/check/domain/entities/check.dart';

abstract interface class CheckRepository {
  Future<List<Check>> getCheck();
}
