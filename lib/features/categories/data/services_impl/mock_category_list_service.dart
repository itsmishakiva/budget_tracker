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
          'isIncome': false,
          'title': 'Trip',
          'categoryIconAsset':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Yandex_icon.svg/2048px-Yandex_icon.svg.png',
        },
        {
          'id': 2,
          'isIncome': false,
          'title': 'Shopping',
          'categoryIconAsset':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png',
        },
        {
          'id': 3,
          'isIncome': false,
          'title': 'Grocery',
          'categoryIconAsset':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/VK_Compact_Logo_%282021-present%29.svg/1024px-VK_Compact_Logo_%282021-present%29.svg.png',
        },
        {
          'id': 4,
          'isIncome': true,
          'title': 'Earning 1',
          'categoryIconAsset':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Yandex_icon.svg/2048px-Yandex_icon.svg.png',
        },
        {
          'id': 5,
          'isIncome': true,
          'title': 'Earning 2',
          'categoryIconAsset':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png',
        },
        {
          'id': 6,
          'isIncome': true,
          'title': 'Earning 3',
          'categoryIconAsset':
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
