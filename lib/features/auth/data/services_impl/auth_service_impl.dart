import 'dart:convert';

import 'package:budget_tracker/core/internal/dio_provider.dart';
import 'package:budget_tracker/core/internal/secure_storage_provider.dart';
import 'package:budget_tracker/features/auth/data/services/auth_service.dart';
import 'package:budget_tracker/features/auth/domain/entities/new_auth_user.dart';
import 'package:budget_tracker/features/auth/domain/entities/new_signup_user.dart';
import 'package:budget_tracker/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logging/logging.dart';

final authServiceProvider = Provider<AuthService>(
  (ref) =>
      AuthServiceImpl(ref.watch(dioProvider), ref.watch(secureStorageProvider)),
);

class AuthServiceImpl implements AuthService {
  AuthServiceImpl(this._dio, this._secureStorage);

  final Dio _dio;
  final FlutterSecureStorage _secureStorage;

  @override
  Future<Map<String, dynamic>> auth(NewAuthUser user) async {
    logger.log(Level.WARNING, 'auth');
    final response = await _dio.post(
      '/auth/auth',
      data: json.encode({
        'username': user.username,
        'password': user.password,
      }),
    );
    logger.log(Level.WARNING, 'auth1');
    return response.data;
  }

  @override
  Future<Map<String, dynamic>> signup(NewSignupUser user) async {
    final response = await _dio.post(
      '/auth/signup',
      data: json.encode({
        'username': user.username,
        'password': user.password,
      }),
    );
    return response.data;
  }

  @override
  Future<void> saveTokens(String accessToken, String tokenType) async {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] = 'Bearer $accessToken';
          return handler.next(options);
        },
      ),
    );
    logger.log(Level.WARNING, 'save');
    _secureStorage.write(key: 'accessToken', value: accessToken);
    _secureStorage.write(key: 'tokenType', value: tokenType);
  }

  @override
  Future<bool> checkToken() async {
    final token = await _secureStorage.read(key: 'accessToken');
    if (token == null) return true;
    return false;
  }
}
