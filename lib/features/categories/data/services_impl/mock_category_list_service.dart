import 'package:budget_tracker/features/categories/data/dto/category_dto.dart';
import 'package:budget_tracker/features/categories/data/services/category_list_service.dart';

class MockCategoryListService implements CategoryListService {
  @override
  Future<List<CategoryDTO>> getCategoryList() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    final result = {
      'categories': [
        // {
        //   'id': 1,
        //   'title': 'Trip',
        //   'icon':
        //       'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Yandex_icon.svg/2048px-Yandex_icon.svg.png',
        //   'color': 1,
        // },
        // {
        //   'id': 2,
        //   'title': 'Shopping',
        //   'icon':
        //       'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png',
        //   'color': 1,
        // },
        // {
        //   'id': 3,
        //   'title': 'Grocery',
        //   'icon':
        //       'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/VK_Compact_Logo_%282021-present%29.svg/1024px-VK_Compact_Logo_%282021-present%29.svg.png',
        //   'color': 1,
        // },
        // {
        //   'id': 4,
        //   'title': 'Earning 1',
        //   'icon':
        //       'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Yandex_icon.svg/2048px-Yandex_icon.svg.png',
        //   'color': 1,
        // },
        // {
        //   'id': 5,
        //   'title': 'Earning 2',
        //   'icon':
        //       'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png',
        //   'color': 1,
        // },
        // {
        //   'id': 6,
        //   'title': 'Earning 3',
        //   'icon':
        //       'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/VK_Compact_Logo_%282021-present%29.svg/1024px-VK_Compact_Logo_%282021-present%29.svg.png',
        //   'color': 1,
        // },
      ],
    };
    return result['categories']?.map((e) => CategoryDTO.fromJson(e)).toList() ??
        [];
  }
}
