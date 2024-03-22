import 'package:budget_tracker/features/account/domain/entities/account.dart';
import 'package:budget_tracker/features/account/data/dto/account_dto.dart';

abstract interface class AccountMapper {
  Account fromDto(AccountDTO dto);

  AccountDTO toDto(Account entity);
}
