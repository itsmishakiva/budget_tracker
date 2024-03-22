import '../../domain/entities/account.dart';
import '../dto/account_dto.dart';

abstract interface class AccountMapper {
  Account fromDto(AccountDTO dto);

  AccountDTO toDto(Account entity);
}
