import 'dart:io';

import 'package:budget_tracker/features/check/domain/repositories/check_repository.dart';
import 'package:budget_tracker/features/check/internal/check_repository_provider.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_sum_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final operationCreationSumViewModelProvider = StateNotifierProvider<
    OperationCreationSumViewModel, OperationCreationSumViewState>(
  (ref) => OperationCreationSumViewModel(
    OperationCreationSumViewLoadingState(),
    ref.read(checkRepositoryProvider),
  )..loadData(),
);

class OperationCreationSumViewModel
    extends StateNotifier<OperationCreationSumViewState> {
  final CheckRepository _repositoryAccount;

  OperationCreationSumViewModel(
    OperationCreationSumViewState state,
    this._repositoryAccount,
  ) : super(state);

  Future<void> loadData() async {
    try {
      state = OperationCreationSumViewDataState(
        checkData: await _repositoryAccount.getCheck(),
        sum: '0',
      );
    } catch (e) {
      state = OperationCreationSumViewErrorState();
    }
  }

  // Миша - лучший тимлид :3
  void appendNumber(String value) {
    final modelState = state as OperationCreationSumViewDataState;
    if (modelState.sum.length >= 10) {
      exit;
    }
    state = OperationCreationSumViewDataState(
      sum: (modelState.sum == '0') ? value : modelState.sum + value,
      checkData: modelState.checkData,
    );
  }

  void deleteSymbol() {
    final modelState = state as OperationCreationSumViewDataState;
    state = OperationCreationSumViewDataState(
      sum: (modelState.sum.length > 1)
          ? modelState.sum.substring(0, modelState.sum.length - 1)
          : '0',
      checkData: modelState.checkData,
    );
  }

  void appendComma() {
    final modelState = state as OperationCreationSumViewDataState;
    state = OperationCreationSumViewDataState(
      sum: ((!modelState.sum.contains(',')) && (modelState.sum.length > 1))
          ? '${modelState.sum},'
          : modelState.sum,
      checkData: modelState.checkData,
    );
  }

  String setSum() {
    return (state as OperationCreationSumViewDataState).sum;
  }
}
