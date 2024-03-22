import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';

import '../../domain/entities/account.dart';

sealed class AccountListViewState {}

class AccountListViewLoadingState extends AccountListViewState {}

class AccountListViewErrorState extends AccountListViewState {}

class AccountListViewDataState extends AccountListViewState {
  AccountListViewDataState({required this.dataAccount, required this.dataOperations});

  final List<Account> dataAccount;
  final List<Operation> dataOperations;
}
