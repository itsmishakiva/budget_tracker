import 'package:budget_tracker/features/home/domain/entities/account.dart';
import 'package:budget_tracker/features/operation_list/data/dto/operation_dto.dart';

import '../dto/account_dto.dart';

abstract interface class AccountListService {
  Future<List<AccountDTO>> getAccountList();
}
