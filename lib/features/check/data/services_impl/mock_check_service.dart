import 'package:budget_tracker/features/check/data/dto/check_dto.dart';
import 'package:budget_tracker/features/check/data/services/check_service.dart';

class MockCheckService implements CheckService {
  @override
  Future<List<CheckDTO>> getCheckList() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    final result = {
      'check': [
        {
          'id': 1,
          'title': 'Home',
          'sum': 1789000.00,
          'expenses': 180000.00,
          'income': 3450000.00,
        },
      ],
    };
    return result['check']?.map((e) => CheckDTO.fromJson(e)).toList() ?? [];
  }

  @override
  Future<CheckDTO?> getCheckById(int id) {
    // TODO: implement getCheckById
    throw UnimplementedError();
  }

  @override
  Future<int> setCheck(CheckDTO checkDto) {
    // TODO: implement setOperation
    throw UnimplementedError();
  }
}
