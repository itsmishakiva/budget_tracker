import 'package:budget_tracker/features/home/domain/repositories/account_repository.dart';
import 'package:budget_tracker/features/operation_list/data/mappers/i_operation_mapper.dart';
import 'package:budget_tracker/features/operation_list/data/services/operation_list_service.dart';
import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';
import 'package:budget_tracker/features/operation_list/domain/repositories/operation_repository.dart';

import '../../domain/entities/account.dart';
import '../mappers/account_mapper.dart';
import '../services/account_list_service.dart';

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
