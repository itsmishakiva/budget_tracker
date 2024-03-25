import 'package:budget_tracker/features/operations/domain/repositories/operation_repository.dart';
import 'package:budget_tracker/features/operations/internal/operation_repository_provider.dart';
import 'package:budget_tracker/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:budget_tracker/features/check/internal/check_repository_provider.dart';
import 'package:budget_tracker/features/home/presentation/view_model/home_view_state.dart';
import 'package:logging/logging.dart';

import 'package:budget_tracker/features/check/domain/repositories/check_repository.dart';

final homeViewModelProvider =
    StateNotifierProvider<HomeViewModel, HomeViewState>(
  (ref) => HomeViewModel(
    HomeViewLoadingState(),
    ref.read(checkRepositoryProvider),
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
      print(dataAccount);
      final dataOperations = await _repositoryOperation.getOperationList();
      print(dataOperations);
      state = HomeViewDataState(
        dataAccount: dataAccount,
        dataOperations: dataOperations,
      );
    } catch (e) {
      logger.log(Level.WARNING, e);
      state = HomeViewErrorState();
    }
  }
}
