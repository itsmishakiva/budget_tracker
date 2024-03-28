import 'package:budget_tracker/features/categories/data/dto/category_dto.dart';
import 'package:budget_tracker/features/categories/data/services/category_list_service.dart';
import 'package:budget_tracker/main.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

class RemoteCategoriesService implements CategoryListService {
  RemoteCategoriesService(this._dio);

  final Dio _dio;

  @override
  Future<Map<int, CategoryDTO>> getCategoryList() async {
    try {
      final response = await _dio.get('/categories?page=0&limit=1000');
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
