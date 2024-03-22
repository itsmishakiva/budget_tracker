abstract interface class PinCodeRepository {
  Future<bool> checkCode(String code);

  Future<void> setCode(String code);

  Future<void> setCodeRepeat(String code);

  Future<bool> checkCreated();
}
