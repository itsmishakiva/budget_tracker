import 'package:budget_tracker/features/operation_list/data/repositories_impl/operation_repository_impl.dart';
import 'package:budget_tracker/features/operation_list/domain/repositories/operation_repository.dart';
import 'package:budget_tracker/features/home/internal/mapper_provider.dart';
import 'package:budget_tracker/features/home/internal/service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/repositories_impl/account_repository_impl.dart';
import '../domain/repositories/account_repository.dart';

final accountRepositoryProvider = Provider<AccountRepository>(
      (ref) => AccountRepositoryImpl(
    ref.watch(serviceProvider),
    ref.watch(mapperProvider),
  ),
);
