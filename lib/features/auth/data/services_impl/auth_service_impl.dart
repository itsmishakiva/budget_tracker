import 'dart:convert';

import 'package:budget_tracker/core/internal/secure_storage_provider.dart';
import 'package:budget_tracker/features/auth/data/services/auth_service.dart';
import 'package:budget_tracker/features/auth/domain/entities/new_auth_user.dart';
import 'package:budget_tracker/features/auth/domain/entities/new_signup_user.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final authServiceProvider = Provider<AuthService>(
  (ref) => AuthServiceImpl(
    ref.watch(authDioProvider),
    ref.watch(secureStorageProvider),
  ),
);

final authDioProvider = Provider<Dio>(
  (ref) => Dio(
    BaseOptions(
      baseUrl: 'http://178.154.223.177:8080/api/auth',
    ),
  ),
);

class AuthServiceImpl implements AuthService {
  AuthServiceImpl(this._dio, this._secureStorage);

  final Dio _dio;
  final FlutterSecureStorage _secureStorage;

  @override
  Future<Map<String, dynamic>> auth(NewAuthUser user) async {
    final response = await _dio.post(
      '/auth',
      data: json.encode({
        'username': user.username,
        'password': user.password,
      }),
    );
    return response.data;
  }

  @override
  Future<Map<String, dynamic>> signup(NewSignupUser user) async {
    final response = await _dio.post(
      '/signup',
      data: json.encode({
        'username': user.username,
        'password': user.password,
      }),
    );
    return response.data;
  }

  @override
  Future<void> saveTokens(String accessToken, String tokenType) async {
    _secureStorage.write(key: 'accessToken', value: accessToken);
    _secureStorage.write(key: 'tokenType', value: tokenType);
  }

  @override
  Future<bool> checkTokenExpire() async {
    final token = await _secureStorage.read(key: 'accessToken');
    if (token == null) return true;
    final response = await _dio.post('/isTokenExpired');
    return response.data['expired'] as bool;
  }
}
