import 'package:budget_tracker/features/operation_list/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operation_list/data/mappers/i_operation_mapper.dart';
import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';

import '../../domain/entities/account.dart';
import '../dto/account_dto.dart';
import '../mappers/account_mapper.dart';

class AccountMapperImpl implements AccountMapper {
  @override
  Account fromDto(AccountDTO dto) {
    return Account(
      id: dto.id,
      title: dto.title,
      sum: double.parse(dto.sum.substring(0, dto.sum.length - 1)),
      expenses: double.parse(dto.expenses.substring(0, dto.expenses.length - 1)),
      income: double.parse(dto.income.substring(0, dto.income.length - 1)),
      currencySymbol: dto.sum[dto.sum.length - 1],
    );
  }

  @override
  AccountDTO toDto(Account entity) {
    return AccountDTO(
      id: entity.id,
      title: entity.title,
      sum: entity.sum.toString() + entity.currencySymbol,
      expenses: entity.expenses.toString() + entity.currencySymbol,
      income: entity.sum.toString() + entity.currencySymbol,
    );
  }
}
