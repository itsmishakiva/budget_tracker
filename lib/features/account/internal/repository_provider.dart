import 'package:budget_tracker/features/account/internal/mapper_provider.dart';
import 'package:budget_tracker/features/account/internal/service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:budget_tracker/features/account/data/repositories_impl/account_repository_impl.dart';
import 'package:budget_tracker/features/account/domain/repositories/account_repository.dart';

final accountRepositoryProvider = Provider<AccountRepository>(
  (ref) => AccountRepositoryImpl(
    ref.watch(serviceProvider),
    ref.watch(mapperProvider),
  ),
);
