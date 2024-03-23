import 'package:budget_tracker/features/operations/domain/repositories/operation_repository.dart';
import 'package:budget_tracker/features/operations/internal/operation_repository_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:budget_tracker/features/check/internal/repository_provider.dart';
import 'package:budget_tracker/features/home/presentation/view_model/home_view_state.dart';

import 'package:budget_tracker/features/check/domain/repositories/check_repository.dart';

final homeViewModelProvider =
    StateNotifierProvider<HomeViewModel, HomeViewState>(
  (ref) => HomeViewModel(
    AnalyticsViewLoadingState(),
    ref.read(accountRepositoryProvider),
    ref.read(operationRepositoryProvider),
  )..loadData(),
);

class HomeViewModel extends StateNotifier<HomeViewState> {
  final CheckRepository _repositoryAccount;
  final OperationRepository _repositoryOperation;

  HomeViewModel(
    HomeViewState state,
    this._repositoryAccount,
    this._repositoryOperation,
  ) : super(state);

  Future<void> loadData() async {
    try {
      final dataAccount = await _repositoryAccount.getCheck();
      final dataOperations = await _repositoryOperation.getOperationList();
      state = HomeViewDataState(
        dataAccount: dataAccount,
        dataOperations: dataOperations,
      );
    } catch (e) {
      state = HomeViewErrorState();
    }
  }
}
