import 'package:budget_tracker/features/pin_code/data/services/pin_code_service.dart';
import 'package:budget_tracker/features/pin_code/domain/repositories/pin_code_repository.dart';

class PinCodeRepositoryImpl implements PinCodeRepository {
  PinCodeRepositoryImpl(this._service);

  final PinCodeService _service;

  @override
  Future<bool> checkCode(String code) {
    return _service.checkCode(code);
  }

  @override
  Future<void> setCode(String code) async {
    await _service.setCode(code);
  }

  @override
  Future<bool> checkCreated() async {
    return _service.checkCreated();
  }
}
