import 'package:budget_tracker/features/check/data/dto/check_dto.dart';
import 'package:budget_tracker/features/check/data/services/check_service.dart';
import 'package:isar/isar.dart';

class IsarCheckService implements CheckService {

  final Isar isar;

  IsarCheckService(this.isar);

  @override
  Stream<List<CheckDTO>> getCheckList() => isar
      .checkDTOs
      .buildQuery<CheckDTO>()
      .watch(fireImmediately: true);

  @override
  Future<void> createCheck(CheckDTO checkDTO) async {
    await isar.writeTxn(() async {
      await isar.checkDTOs.put(checkDTO);
    });
  }

  @override
  Future<bool> isCheckExists() async {
    var checkDTOs = isar.checkDTOs;
    return await checkDTOs.count() > 0;
  }

}