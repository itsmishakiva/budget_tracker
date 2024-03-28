import 'package:budget_tracker/features/check/data/dto/check_dto.dart';
import 'package:budget_tracker/features/check/data/services/check_service.dart';
import 'package:budget_tracker/main.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class RemoteCheckService implements CheckService {
  RemoteCheckService(this._dio);

  final Dio _dio;

  @override
  Future<CheckDTO> getCheck() async {
    try {
      final response = await _dio.get(
        '/checks?limit=1&page=0',
      );
      logger.log(Level.WARNING, response);
      if (response.statusCode != 200) {
        throw Exception('');
      } else {
        return CheckDTO.fromJson(response.data);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<int> setCheck(CheckDTO checkDTO) async {
    try {
      final response = await _dio.post(
        '/operations',
        data: checkDTO.toJson(),
      );
      return response.statusCode!;
    } catch (e) {
      return 500; // Internal Server Error
    }
  }

  Future<Map<String, dynamic>> getCheckByIdJson(int id) async {
    try {
      final response = await _dio.get('/checks/$id');

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to load check');
      }
    } catch (e) {
      return {};
    }
  }
}
