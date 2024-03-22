import 'package:budget_tracker/features/account/data/dto/account_dto.dart';

abstract interface class AccountListService {
  Future<List<AccountDTO>> getAccountList();
}
