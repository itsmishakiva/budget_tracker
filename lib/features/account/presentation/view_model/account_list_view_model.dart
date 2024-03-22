import 'package:budget_tracker/features/home/internal/repository_provider.dart';
import 'package:budget_tracker/features/operation_list/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operation_list/domain/repositories/operation_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../operation_list/internal/repository_provider.dart';
import '../../domain/repositories/account_repository.dart';
import 'account_list_view_state.dart';

final accountListViewModelProvider =
StateNotifierProvider<AccountListViewModel, AccountListViewState>(
      (ref) => AccountListViewModel(
        AccountListViewLoadingState(),
        ref.read(accountRepositoryProvider),
        ref.read(repositoryProvider),
  )..loadData(),
);

class AccountListViewModel extends StateNotifier<AccountListViewState> {
  final AccountRepository _repositoryAccount;
  final OperationRepository _repositoryOperation;

  AccountListViewModel(
      AccountListViewState state,
      this._repositoryAccount,
      this._repositoryOperation,
      ) : super(state);

  Future<void> loadData() async {
    try {
      state = AccountListViewDataState(
        dataAccount: await _repositoryAccount.getAccountList(),
        dataOperations: await _repositoryOperation.getOperationList(),
      );
    } catch (e) {
      state = AccountListViewErrorState();
    }
  }
}