import 'package:budget_tracker/features/home/domain/entities/account.dart';

abstract interface class AccountRepository {
  Future<List<Account>> getAccountList();
}
