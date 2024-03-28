import 'package:budget_tracker/features/check/data/dto/check_dto.dart';

abstract interface class CheckService {
  Future<void> createCheck(CheckDTO checkDTO);
  Stream<List<CheckDTO>> getCheckList();
  Future<bool> isCheckExists();
  // Future<CheckDTO?> getCheckById(int id);
  // Future<int> setCheck(CheckDTO checkDto);
}
