import 'package:budget_tracker/core/token.dart';
import 'package:budget_tracker/features/operations/data/dto/new_operation_dto.dart';
import 'package:budget_tracker/features/operations/data/services/new_operation_service.dart';
import 'package:budget_tracker/main.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class NewOperationServiceImpl implements NewOperationService {
  Dio dio = Dio();

  NewOperationServiceImpl() {
    dio.options.baseUrl = 'http://178.154.223.177:8080/api';
  }

  @override
  Future<int> setOperation(NewOperationDTO newOperationDTO) async {
    try {
      String accessToken = Token().token;
      dio.options.headers['Authorization'] = 'Bearer $accessToken';
      dio.options.headers['Custom-Header'] = 'Custom Value';

      var operationJson = newOperationDTO.toJson();

      // var categoryId = operationJson['category']['id'];
      // operationJson['categoryId'] = categoryId;
      // operationJson.remove('category');
      //
      // var checkId = operationJson['check']['id'];
      // operationJson['checkId'] = checkId;
      // operationJson.remove('check');

      final response = await dio.post(
        '/operations',
        data: operationJson,
      );
      logger.log(Level.FINE, response.statusCode);
      return response.statusCode!;
    } catch (e) {
      logger.log(Level.SEVERE, e);
      return 500;
    }
  }
}
