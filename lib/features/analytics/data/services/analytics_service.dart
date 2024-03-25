import 'package:budget_tracker/features/analytics/data/dto/analytics_dto/analytics_dto.dart';

abstract interface class AnalyticsService {
  Future<AnalyticsDTO> getAnalyticsList(String period);
}