import 'package:budget_tracker/features/check/data/dto/check_dto.dart';
import 'package:budget_tracker/features/check/data/services/check_service.dart';
import 'package:dio/dio.dart';

class RemoteCheckService implements CheckService {
  RemoteCheckService(this._dio);

  final Dio _dio;

  @override
  Future<List<CheckDTO>> getCheckList() async {
    try {
      final response = await _dio.get(
        '/checks?limit=5&page=0',
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
        '/checks/$id',
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
