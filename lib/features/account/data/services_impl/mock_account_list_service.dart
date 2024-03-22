import '../dto/account_dto.dart';
import '../services/account_list_service.dart';

class MockAccountListService implements AccountListService {
  @override
  Future<List<AccountDTO>> getAccountList() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    final result = {
      'account': [
        {
          'id': 1,
          'title': 'Home',
          'sum': '1789000.00₽',
          'expenses': '180000.00₽',
          'income': '3450000.00₽',
        },
      ],
    };
    return result['account']
        ?.map((e) => AccountDTO.fromJson(e))
        .toList() ??
        [];
  }
}
