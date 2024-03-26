import 'package:budget_tracker/core/Token.dart';
import 'package:budget_tracker/features/operations/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operations/data/services/operation_list_service.dart';
import 'package:dio/dio.dart';

class RemoteOperationListService implements OperationListService {
  Dio dio = Dio();

  RemoteOperationListService() {
    dio.options.baseUrl = 'http://178.154.223.177:8080/api';
  }

  @override
  Future<List<OperationDTO>> getOperationList() async {
    try {
      String accessToken = Token().token;
      dio.options.headers['Authorization'] = 'Bearer $accessToken';
      dio.options.headers['Custom-Header'] = 'Custom Value';

      final response = await dio.get('/operations?page=0&limit=10');

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

  @override
  Future<int> setOperation(OperationDTO operationDTO) async {
    try {
      String accessToken = Token().token;
      dio.options.headers['Authorization'] = 'Bearer $accessToken';
      dio.options.headers['Custom-Header'] = 'Custom Value';

      var operationJson = operationDTO.toJson();

      var categoryId = operationJson['category']['id'];
      operationJson['categoryId'] = categoryId;
      operationJson.remove('category');

      var checkId = operationJson['check']['id'];
      operationJson['checkId'] = checkId;
      operationJson.remove('check');

      final response = await dio.post(
        '/operations',
        data: operationJson,
      );
      return response.statusCode!;
    } catch (e) {
      return 500; // Internal server error
    }
  }
}
