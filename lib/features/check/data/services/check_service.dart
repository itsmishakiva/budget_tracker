import 'package:budget_tracker/features/check/data/dto/check_dto.dart';

abstract interface class CheckService {
  Future<List<CheckDTO>> getAccountList();
}
