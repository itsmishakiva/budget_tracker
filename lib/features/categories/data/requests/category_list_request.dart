import 'package:budget_tracker/features/categories/data/dto/category_dto.dart';
import 'package:budget_tracker/features/categories/data/services/category_list_service.dart';
import 'package:budget_tracker/main.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class CategoryListRequest implements CategoryListService {
  @override
  Future<List<CategoryDTO>> getCategoryList() async {
    Dio dio = Dio();
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          String accessToken =
              'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJjaGVsMyIsInJvbGUiOlsiVVNFUiJdLCJpYXQiOjE3MTE0MDY1NzIsImV4cCI6MTcxMTQxMDE3Mn0.DpBW3BDQSrg32m6cYUzCXzM7QtDr2zd6qZm8W6rW8m4';
          options.headers['Authorization'] = 'Bearer $accessToken';
          return handler.next(options);
        },
      ),
    );
    try {
      final response = await dio
          .get('http://178.154.223.177:8080/api/categories?page=0&limit=20');
      print('request response:'); //TODO delete prints
      print(response.data);
      return (response.data as List<dynamic>?)
              ?.map((e) => CategoryDTO.fromJson(e))
              .toList() ??
          [];
    } catch (e) {
      logger.log(Level.WARNING, e);
      return [];
    }
  }
}
