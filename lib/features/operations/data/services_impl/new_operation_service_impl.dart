import 'package:budget_tracker/features/operations/data/dto/new_operation_dto.dart';
import 'package:budget_tracker/features/operations/data/services/new_operation_service.dart';
import 'package:budget_tracker/main.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class NewOperationServiceImpl implements NewOperationService {
  final Dio _dio;

  NewOperationServiceImpl(this._dio);

  @override
  Future<int> setOperation(NewOperationDTO newOperationDTO) async {
    try {
      var operationJson = newOperationDTO.toJson();

      // var categoryId = operationJson['category']['id'];
      // operationJson['categoryId'] = categoryId;
      // operationJson.remove('category');
      //
      // var checkId = operationJson['check']['id'];
      // operationJson['checkId'] = checkId;
      // operationJson.remove('check');
      logger.log(Level.FINE, operationJson);
      final response = await _dio.post(
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
