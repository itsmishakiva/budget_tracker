import 'package:budget_tracker/features/operation_list/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operation_list/data/i_services/i_operation_list_service.dart';

class MockOperationListService implements IOperationListService {
  @override
  Future<List<OperationDTO>> getOperationList() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    final result = {
      'operations': [
        {
          'id': 1,
          'title': 'Operation1',
          'sum': 1000.00,
          'description': 'Some description here',
          'companyName': 'Yandex',
          'companyAssetUrl':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Yandex_icon.svg/2048px-Yandex_icon.svg.png',
        },
        {
          'id': 2,
          'title': 'Operation2',
          'sum': 433.00,
          'description': 'Some description here',
          'companyName': 'Google',
          'companyAssetUrl':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png',
        },
        {
          'id': 3,
          'title': 'Operation3',
          'sum': 123.12,
          'description': 'Some description here',
          'companyName': 'VK',
          'companyAssetUrl':
              'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/VK_Compact_Logo_%282021-present%29.svg/1024px-VK_Compact_Logo_%282021-present%29.svg.png',
        },
      ],
    };
    return result['operations']
            ?.map((e) => OperationDTO.fromJson(e))
            .toList() ??
        [];
  }
}
