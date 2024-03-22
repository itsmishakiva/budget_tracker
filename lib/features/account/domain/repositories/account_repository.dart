import 'package:budget_tracker/features/account/domain/entities/account.dart';

abstract interface class AccountRepository {
  Future<List<Account>> getAccountList();
}
