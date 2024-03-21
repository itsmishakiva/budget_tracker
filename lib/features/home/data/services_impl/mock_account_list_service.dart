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
    print(999999999);
    print(AccountDTO.fromJson(result['account']!.first as Map<String, Object?>));
    return result['account']
        ?.map((e) => AccountDTO.fromJson(e))
        .toList() ??
        [];
  }
}
