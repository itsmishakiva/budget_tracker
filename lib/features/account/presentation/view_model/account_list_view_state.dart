import 'package:budget_tracker/features/account/domain/entities/account.dart';
import 'package:budget_tracker/features/operations/domain/entities/operation.dart';

sealed class AccountListViewState {}

class AccountListViewLoadingState extends AccountListViewState {}

class AccountListViewErrorState extends AccountListViewState {}

class AccountListViewDataState extends AccountListViewState {
  AccountListViewDataState({
    required this.dataAccount,
    required this.dataOperations,
  });

  final List<Account> dataAccount;
  final List<Operation> dataOperations;
}
