import 'package:budget_tracker/features/operations/domain/repositories/operation_repository.dart';
import 'package:budget_tracker/features/operations/internal/operation_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:budget_tracker/features/account/domain/repositories/account_repository.dart';
import 'package:budget_tracker/features/account/internal/repository_provider.dart';
import 'package:budget_tracker/features/home/presentation/view_model/home_view_state.dart';

final accountListViewModelProvider =
    StateNotifierProvider<HomeViewModel, HomeViewState>(
  (ref) => HomeViewModel(
    HomeViewLoadingState(),
    ref.read(accountRepositoryProvider),
    ref.read(operationRepositoryProvider),
  )..loadData(),
);

class HomeViewModel extends StateNotifier<HomeViewState> {
  final AccountRepository _repositoryAccount;
  final OperationRepository _repositoryOperation;

  HomeViewModel(
    HomeViewState state,
    this._repositoryAccount,
    this._repositoryOperation,
  ) : super(state);

  Future<void> loadData() async {
    try {
      state = HomeViewDataState(
        dataAccount: await _repositoryAccount.getAccountList(),
        dataOperations: await _repositoryOperation.getOperationList(),
      );
    } catch (e) {
      state = HomeViewErrorState();
    }
  }
}
