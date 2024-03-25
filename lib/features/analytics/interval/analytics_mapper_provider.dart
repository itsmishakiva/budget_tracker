import 'package:budget_tracker/features/analytics/data/mappers/analytics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final analyticsMapperProvider = Provider<AnalyticsMapper>(
  (ref) => AnalyticsMapper(),
);
