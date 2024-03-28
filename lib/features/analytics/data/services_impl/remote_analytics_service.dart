import 'dart:async';

import 'package:budget_tracker/features/analytics/data/dto/analytics_dto/analytics_dto.dart';
import 'package:budget_tracker/features/analytics/data/services/analytics_service.dart';
import 'package:dio/dio.dart';

class RemoteAnalyticsService implements AnalyticsService {
  RemoteAnalyticsService(this._dio);

  final Dio _dio;

  @override
  Future<AnalyticsDTO> getAnalytics(String period) async {
    try {
      final response = await _dio.get(
        '/analytics?type=$period',
      );
      if (response.statusCode != 200) {
        throw Exception('status code = ${response.statusCode}');
      } else {
        Map<String, dynamic> analyticsDtoJson =
            Map<String, dynamic>.from(response.data);
        return AnalyticsDTO.fromJson(analyticsDtoJson);
      }
    } catch (e) {
      throw Exception('bebebe');
    }
  }
}
