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
          'incoming': false,
          'date': 1711200301,
          'sum': '1000.00₽',
          'category': {
            'id': 1,
            'title': 'Category 1',
            'icon': 'Home',
          },
        },
        {
          'id': 2,
          'incoming': true,
          'date': 1711200000,
          'sum': '300.25₽',
          'category': {
            'id': 2,
            'title': 'Category 2',
            'icon': 'Food',
          },
        },
        {
          'id': 1,
          'incoming': false,
          'date': 1711200301,
          'sum': '1000.00₽',
          'category': {
            'id': 1,
            'title': 'Category 1',
            'icon': 'Home',
          },
        },
        {
          'id': 2,
          'incoming': true,
          'date': 1711200000,
          'sum': '300.25₽',
          'category': {
            'id': 2,
            'title': 'Category 2',
            'icon': 'Food',
          },
        },
        {
          'id': 1,
          'incoming': false,
          'date': 1711200301,
          'sum': '1000.00₽',
          'category': {
            'id': 1,
            'title': 'Category 1',
            'icon': 'Home',
          },
        },
        {
          'id': 2,
          'incoming': true,
          'date': 1711200000,
          'sum': '300.25₽',
          'category': {
            'id': 2,
            'title': 'Category 2',
            'icon': 'Food',
          },
        },
        {
          'id': 1,
          'incoming': false,
          'date': 1711200301,
          'sum': '1000.00₽',
          'category': {
            'id': 1,
            'title': 'Category 1',
            'icon': 'Home',
          },
        },
        {
          'id': 2,
          'incoming': true,
          'date': 1711200000,
          'sum': '300.25₽',
          'category': {
            'id': 2,
            'title': 'Category 2',
            'icon': 'Food',
          },
        },
        {
          'id': 1,
          'incoming': false,
          'date': 1711200301,
          'sum': '1000.00₽',
          'category': {
            'id': 1,
            'title': 'Category 1',
            'icon': 'Home',
          },
        },
        {
          'id': 2,
          'incoming': true,
          'date': 1711200000,
          'sum': '300.25₽',
          'category': {
            'id': 2,
            'title': 'Category 2',
            'icon': 'Food',
          },
        },
        {
          'id': 1,
          'incoming': false,
          'date': 1711200301,
          'sum': '1000.00₽',
          'category': {
            'id': 1,
            'title': 'Category 1',
            'icon': 'Home',
          },
        },
        {
          'id': 2,
          'incoming': true,
          'date': 1711200000,
          'sum': '300.25₽',
          'category': {
            'id': 2,
            'title': 'Category 2',
            'icon': 'Food',
          },
        },
      ],
    };

    return result['operations']
            ?.map((e) => OperationDTO.fromJson(e))
            .toList() ??
        [];
  }
}
