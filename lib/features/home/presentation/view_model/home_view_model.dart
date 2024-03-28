import 'package:budget_tracker/features/categories/domain/repositories/category_repository.dart';
import 'package:budget_tracker/features/categories/internal/caretory_repository_provider.dart';
import 'package:budget_tracker/features/check/domain/entities/check.dart';
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
    ref.read(categoryRepositoryProvider),
  )..loadData(),
);

class HomeViewModel extends StateNotifier<HomeViewState> {
  final CheckRepository _repositoryAccount;
  final OperationRepository _repositoryOperation;
  final CategoryRepository _categoryRepository;

  HomeViewModel(
    HomeViewState state,
    this._repositoryAccount,
    this._repositoryOperation,
    this._categoryRepository,
  ) : super(state);

  Future<void> loadData() async {
    try {
      //TODO remove when backend updated
      late final Check dataAccount;
      try {
        dataAccount = await _repositoryAccount.getCheck();
      } catch (e) {
        dataAccount = Check(id: 1, sum: 0, expenses: 0, income: 0);
      }
      final dataOperations = await _repositoryOperation.getOperationList();
      final dataCategoties = await _categoryRepository.getCategories();
      state = HomeViewDataState(
        dataAccount: dataAccount,
        dataOperations: dataOperations,
        dataCategory: dataCategoties,
      );
    } catch (e) {
      logger.log(Level.WARNING, e);
      logger.log(Level.WARNING, 'WTF');
      state = HomeViewErrorState();
    }
  }
}
