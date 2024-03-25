import 'package:budget_tracker/features/analytics/data/services/analytics_service.dart';
import 'package:budget_tracker/features/analytics/data/services_impl/mock_analytics_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final analyticsServiceProvider = Provider<AnalyticsService>(
  (ref) => MockAnalyticsService(),
);
