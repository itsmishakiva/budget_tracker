import 'package:budget_tracker/core/Token.dart';
import 'package:budget_tracker/features/check/data/dto/check_dto.dart';
import 'package:budget_tracker/features/check/data/services/check_service.dart';
import 'package:dio/dio.dart';

class ServerCheckService implements CheckService {
  final Dio _dio = Dio();

  ServerCheckService() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          String accessToken = Token().token;
          options.headers['Authorization'] = 'Bearer $accessToken';
          return handler.next(options);
        },
      ),
    );
  }

  @override
  Future<List<CheckDTO>> getCheckList() async {
    try {
      final response = await _dio.get(
        'http://178.154.223.177:8080/api/checks?limit=5&page=0',
      );
      if (response.statusCode != 200) {
        return [];
      } else {
        List<Map<String, dynamic>> categoriesDtoJson =
            List<Map<String, dynamic>>.from(response.data);
        return categoriesDtoJson.map((e) => CheckDTO.fromJson(e)).toList();
      }
    } catch (e) {
      return [];
    }
  }

  @override
  Future<CheckDTO?> getCheckById(int id) async {
    try {
      final response = await _dio.get(
        'http://178.154.223.177:8080/api/checks/$id',
      );
      if (response.statusCode != 200) {
        return null;
      } else {
        Map<String, dynamic> checkDtoJson = response.data;
        return CheckDTO.fromJson(checkDtoJson);
      }
    } catch (e) {
      return null;
    }
  }

  @override
  Future<int> setCheck(CheckDTO checkDTO) async {
    try {
      final response = await _dio.post(
        'http://178.154.223.177:8080/api/operations',
        data: checkDTO.toJson(),
      );
      return response.statusCode!;
    } catch (e) {
      return 500; // Internal Server Error
    }
  }

  Future<Map<String, dynamic>> getCheckByIdJson(int id) async {
    try {
      Dio dio = Dio();
      String accessToken = Token().token;
      dio.options.headers['Authorization'] = 'Bearer $accessToken';
      dio.options.headers['Custom-Header'] = 'Custom Value';
      final response =
          await dio.get('http://178.154.223.177:8080/api/checks/$id');

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
