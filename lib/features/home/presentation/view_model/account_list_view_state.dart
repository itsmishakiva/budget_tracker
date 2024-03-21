import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';

import '../../domain/entities/account.dart';

sealed class AccountListViewState {}

class AccountListViewLoadingState extends AccountListViewState {}

class AccountListViewErrorState extends AccountListViewState {}

class AccountListViewDataState extends AccountListViewState {
  AccountListViewDataState({required this.data});

  final List<Account> data;
}
