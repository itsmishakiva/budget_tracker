import 'package:budget_tracker/features/operations/data/dto/operation_dto.dart';
import 'package:budget_tracker/features/operations/data/services/operation_list_service.dart';

class MockOperationListService implements OperationListService {
  @override
  Future<List<OperationDTO>> getOperationList() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    final result = {
      'operations': [
        {
          'id': 1,
          'title': 'Home',
          'sum': '1000.00₽',
          'companyName': 'Yandex',
        },
        {
          'id': 2,
          'title': 'Health',
          'sum': '433.00₽',
          'companyName': 'Google',
        },
        {
          'id': 3,
          'title': 'Food',
          'sum': '123.12₽',
          'companyName': 'VK',
        },
        {
          'id': 3,
          'title': 'Home',
          'sum': '1000.00₽',
          'companyName': 'Yandex',
        },
        {
          'id': 4,
          'title': 'Gifts',
          'sum': '433.00₽',
          'companyName': 'Google',
        },
        {
          'id': 5,
          'title': 'Travels',
          'sum': '123.12₽',
          'companyName': 'VK',
        },
        {
          'id': 6,
          'title': 'Health',
          'sum': '433.00₽',
          'companyName': 'Google',
        },
        {
          'id': 7,
          'title': 'Food',
          'sum': '123.12₽',
          'companyName': 'VK',
        },
        {
          'id': 4,
          'title': 'Gifts',
          'sum': '433.00₽',
          'companyName': 'Google',
        },
        {
          'id': 5,
          'title': 'Travels',
          'sum': '123.12₽',
          'companyName': 'VK',
        },
        {
          'id': 6,
          'title': 'Health',
          'sum': '433.00₽',
          'companyName': 'Google',
        },
        {
          'id': 7,
          'title': 'Food',
          'sum': '123.12₽',
          'companyName': 'VK',
        },
      ],
    };
    return result['operations']
            ?.map((e) => OperationDTO.fromJson(e))
            .toList() ??
        [];
  }
}
