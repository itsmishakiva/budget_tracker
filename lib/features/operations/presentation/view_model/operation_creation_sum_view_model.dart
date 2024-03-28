import 'package:budget_tracker/features/check/domain/entities/check.dart';
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
      late final Check dataAccount;
      try {
        dataAccount = await _repositoryAccount.getCheck();
      } catch (e) {
        dataAccount = Check(id: 1, sum: 0, expenses: 0, income: 0);
      }
      state = OperationCreationSumViewDataState(
        checkData: dataAccount,
        sum: '0',
      );
    } catch (e) {
      state = OperationCreationSumViewErrorState();
    }
  }

  // Миша - лучший тимлид :3
  void appendNumber(String value) {
    final modelState = state as OperationCreationSumViewDataState;
    int commaIndex = -1;
    if (modelState.sum.contains(',')) {
      commaIndex = modelState.sum.indexOf(',');
    }
    if (modelState.sum.length < 10) {
      if ((!modelState.sum.contains(',')) ||
          (modelState.sum.length - commaIndex < 3)) {
        state = OperationCreationSumViewDataState(
          sum: (modelState.sum == '0') ? value : modelState.sum + value,
          checkData: modelState.checkData,
        );
      }
    }
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
      sum: ((!modelState.sum.contains(',')) &&
              ((modelState.sum.length > 1) || (modelState.sum[0] != '0')))
          ? '${modelState.sum},'
          : modelState.sum,
      checkData: modelState.checkData,
    );
  }

  String setSum() {
    return (state as OperationCreationSumViewDataState).sum;
  }

  void clearSum() {
    final modelState = state as OperationCreationSumViewDataState;
    state = OperationCreationSumViewDataState(
      checkData: modelState.checkData,
      sum: '0',
    );
  }
}
