import 'package:budget_tracker/features/analytics/data/mappers/analytics.dart';
import 'package:budget_tracker/features/analytics/data/services/analytics_service.dart';
import 'package:budget_tracker/features/analytics/domain/entities/analytics/analytics.dart';
import 'package:budget_tracker/features/analytics/domain/repositories/analytics_repository.dart';

class AnalyticsRepositoryImpl implements AnalyticsRepository {
  AnalyticsRepositoryImpl(this._service, this._mapper);

  final AnalyticsService _service;
  final AnalyticsMapper _mapper;

  @override
  Future<Analytics> getAnalytics(String period) async {
    final resultDTO = await _service.getAnalyticsList(period);
    return _mapper.fromDto(resultDTO);
  }
}
