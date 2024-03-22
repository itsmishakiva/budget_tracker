import 'package:budget_tracker/features/check/data/repositories_impl/check_repository_impl.dart';
import 'package:budget_tracker/features/check/internal/mapper_provider.dart';
import 'package:budget_tracker/features/check/internal/service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:budget_tracker/features/check/domain/repositories/check_repository.dart';

final accountRepositoryProvider = Provider<CheckRepository>(
  (ref) => CheckRepositoryImpl(
    ref.watch(serviceProvider),
    ref.watch(mapperProvider),
  ),
);
