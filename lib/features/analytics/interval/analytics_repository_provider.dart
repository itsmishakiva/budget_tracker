import 'package:budget_tracker/features/analytics/data/repositories_impl/analytics_repositiry_impl.dart';
import 'package:budget_tracker/features/analytics/domain/repositories/analytics_repository.dart';
import 'package:budget_tracker/features/analytics/interval/analytics_mapper_provider.dart';
import 'package:budget_tracker/features/analytics/interval/analytics_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final analyticsRepositoryProvider = Provider<AnalyticsRepository>(
  (ref) => AnalyticsRepositoryImpl(
    ref.watch(analyticsServiceProvider),
    ref.watch(analyticsMapperProvider),
  ),
);
