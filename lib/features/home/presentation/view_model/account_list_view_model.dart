import 'package:budget_tracker/features/home/internal/repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/repositories/account_repository.dart';
import 'account_list_view_state.dart';

final accountListViewModelProvider =
StateNotifierProvider<AccountListViewModel, AccountListViewState>(
      (ref) => AccountListViewModel(
        AccountListViewLoadingState(),
    ref.read(repositoryProvider),
  )..loadData(),
);

class AccountListViewModel extends StateNotifier<AccountListViewState> {
  final AccountRepository _repository;

  AccountListViewModel(
      AccountListViewState state,
      this._repository,
      ) : super(state);

  Future<void> loadData() async {
    try {
      state = AccountListViewDataState(
        data: await _repository.getAccountList(),
      );
      print("666666666666");
      print(state);
    } catch (e) {
      state = AccountListViewErrorState();
    }
  }
}
