import 'package:budget_tracker/features/account/internal/repository_provider.dart';
import 'package:budget_tracker/features/operations/domain/repositories/operation_repository.dart';
import 'package:budget_tracker/features/operations/internal/operation_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:budget_tracker/features/account/domain/repositories/account_repository.dart';
import 'package:budget_tracker/features/account/presentation/view_model/account_list_view_state.dart';

final accountListViewModelProvider =
    StateNotifierProvider<AccountListViewModel, AccountListViewState>(
  (ref) => AccountListViewModel(
    AccountListViewLoadingState(),
    ref.read(accountRepositoryProvider),
    ref.read(operationRepositoryProvider),
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
