import 'package:budget_tracker/core/Token.dart';
import 'package:budget_tracker/features/categories/data/dto/category_dto.dart';
import 'package:budget_tracker/features/categories/data/services/category_list_service.dart';
import 'package:budget_tracker/main.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class RemoteCategoriesService implements CategoryListService {
  Dio dio = Dio();

  RemoteCategoriesService() {
    dio.options.baseUrl = 'http://178.154.223.177:8080/api';
  }

  @override
  Future<Map<int, CategoryDTO>> getCategoryList() async {
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          String accessToken = Token().token;
          options.headers['Authorization'] = 'Bearer $accessToken';
          return handler.next(options);
        },
      ),
    );
    try {
      final response = await dio.get('/categories?page=0&limit=20');
      logger.log(Level.FINE, 'Response data ${response.data}');

      final List<CategoryDTO>? categories = (response.data as List<dynamic>?)
          ?.map((e) => CategoryDTO.fromJson(e))
          .toList();

      // Convert List to Map
      final Map<int, CategoryDTO> categoryMap = {};
      categories?.forEach((category) {
        categoryMap[category.id] = category;
      });

      return categoryMap;
    } catch (e) {
      logger.log(Level.WARNING, e.toString());
      return {};
    }
  }
}
