import 'package:budget_tracker/features/account/domain/repositories/account_repository.dart';

import 'package:budget_tracker/features/account/domain/entities/account.dart';
import 'package:budget_tracker/features/account/data/mappers/account_mapper.dart';
import 'package:budget_tracker/features/account/data/services/account_list_service.dart';

class AccountRepositoryImpl implements AccountRepository {
  AccountRepositoryImpl(this._service, this._mapper);

  final AccountListService _service;
  final AccountMapper _mapper;

  @override
  Future<List<Account>> getAccountList() async {
    final resultDTO = await _service.getAccountList();
    return resultDTO.map((e) => _mapper.fromDto(e)).toList();
  }
}
