import 'package:budget_tracker/features/pin_code/data/services/pin_code_service.dart';
import 'package:budget_tracker/features/pin_code/domain/repositories/pin_code_repository.dart';

class PinCodeRepositoryImpl implements PinCodeRepository {
  PinCodeRepositoryImpl(this._service);

  final PinCodeService _service;

  String? firstInputCode;

  @override
  Future<bool> checkCode(String code) {
    return _service.checkCode(code);
  }

  @override
  Future<void> setCode(String code) async {
    firstInputCode = code;
  }

  @override
  Future<void> setCodeRepeat(String code) async {
    if (firstInputCode != code) {
      firstInputCode = null;
      throw 'Codes are not the same';
    }
    await _service.setCode(code);
  }

  @override
  Future<bool> checkCreated() async {
    return _service.checkCreated();
  }
}
