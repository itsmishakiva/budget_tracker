import 'dart:convert';
import 'dart:math';

import 'package:budget_tracker/features/pin_code/data/services/pin_code_service.dart';
import 'package:crypto/crypto.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class PinCodeServiceImpl implements PinCodeService {
  PinCodeServiceImpl(this._secureStorage);

  final FlutterSecureStorage _secureStorage;
  static const _pinKey = 'pin';
  static const _saltKey = 'salt';
  static const _saltSize = 25;

  @override
  Future<bool> checkCode(String code) async {
    String? savedHash = await _secureStorage.read(key: _pinKey);
    String? salt = await _secureStorage.read(key: _saltKey);
    if (savedHash == null || salt == null) return false;
    String hash = sha256.convert(utf8.encode(code + salt)).toString();
    if (hash == savedHash) return true;
    return false;
  }

  @override
  Future<void> setCode(String code) async {
    String salt = _generateRandomString(_saltSize);
    String hash = sha256.convert(utf8.encode(code + salt)).toString();
    await _secureStorage.write(key: _pinKey, value: hash);
    await _secureStorage.write(key: _saltKey, value: salt);
  }

  String _generateRandomString(int len) {
    var r = Random();
    return String.fromCharCodes(
      List.generate(len, (index) => r.nextInt(33) + 89),
    );
  }

  @override
  Future<bool> checkCreated() async {
    String? savedHash = await _secureStorage.read(key: _pinKey);
    String? salt = await _secureStorage.read(key: _saltKey);
    if (savedHash == null || salt == null) return false;
    return true;
  }
}
