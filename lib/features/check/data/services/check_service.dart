import 'package:budget_tracker/features/check/data/dto/check_dto.dart';

abstract interface class CheckService {
  Future<List<CheckDTO>> getCheckList();
  Future<CheckDTO?> getCheckById(int id);
  Future<int> setCheck(CheckDTO checkDto);
}
