abstract interface class PinCodeService {
  Future<bool> checkCode(String code);

  Future<void> setCode(String code);

  Future<bool> checkCreated();
}
