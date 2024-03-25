import 'package:budget_tracker/features/analytics/domain/entities/analytics/analytics.dart';

abstract interface class AnalyticsRepository {
  Future<Analytics> getAnalytics(String period);
}
