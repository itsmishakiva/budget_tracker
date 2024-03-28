import 'package:budget_tracker/features/operations/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operations/data/services/operation_list_service.dart';
import 'package:dio/dio.dart';

class RemoteOperationListService implements OperationListService {
  RemoteOperationListService(this._dio);

  final Dio _dio;

  @override
  Future<List<OperationDTO>> getOperationList() async {
    try {
      final response = await _dio.get('/operations?page=0&limit=10');

      if (response.statusCode != 200) {
        return [];
      }

      List<Map<String, dynamic>> operationsDtoJson =
          (response.data as List<dynamic>).cast<Map<String, dynamic>>();

      List<OperationDTO> operationList =
          operationsDtoJson.map((e) => OperationDTO.fromJson(e)).toList();
      return operationList;
    } catch (e) {
      return [];
    }
  }
}
