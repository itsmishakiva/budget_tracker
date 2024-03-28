import 'package:budget_tracker/core/internal/dio_provider.dart';
import 'package:budget_tracker/features/analytics/data/services/analytics_service.dart';
import 'package:budget_tracker/features/analytics/data/services_impl/remote_analytics_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final analyticsServiceProvider = Provider<AnalyticsService>(
  (ref) => RemoteAnalyticsService(
    ref.watch(dioProvider),
  ),
);
