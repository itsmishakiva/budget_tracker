import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';

import 'package:budget_tracker/features/account/domain/entities/account.dart';

sealed class HomeViewState {}

class HomeViewLoadingState extends HomeViewState {}

class HomeViewErrorState extends HomeViewState {}

class HomeViewDataState extends HomeViewState {
  HomeViewDataState({required this.dataAccount, required this.dataOperations});

  final List<Account> dataAccount;
  final List<Operation> dataOperations;
}
