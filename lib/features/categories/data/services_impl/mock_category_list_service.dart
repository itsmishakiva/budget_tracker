import 'package:budget_tracker/features/categories/data/dto/category_dto.dart';
import 'package:budget_tracker/features/categories/data/services/category_list_service.dart';

class MockCategoryListService implements CategoryListService {
  @override
  Future<List<CategoryDTO>> getCategoryList() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    final result = {
      'operation_types': [
        {
          'id': 1,
          'title': 'Trip',
          'icon':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Yandex_icon.svg/2048px-Yandex_icon.svg.png',
        },
        {
          'id': 2,
          'title': 'Shopping',
          'icon':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png',
        },
        {
          'id': 3,
          'title': 'Grocery',
          'icon':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/VK_Compact_Logo_%282021-present%29.svg/1024px-VK_Compact_Logo_%282021-present%29.svg.png',
        },
        {
          'id': 4,
          'title': 'Earning 1',
          'icon':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Yandex_icon.svg/2048px-Yandex_icon.svg.png',
        },
        {
          'id': 5,
          'title': 'Earning 2',
          'icon':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png',
        },
        {
          'id': 6,
          'title': 'Earning 3',
          'icon':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/VK_Compact_Logo_%282021-present%29.svg/1024px-VK_Compact_Logo_%282021-present%29.svg.png',
        },
      ],
    };
    return result['operation_types']
            ?.map((e) => CategoryDTO.fromJson(e))
            .toList() ??
        [];
  }
}
