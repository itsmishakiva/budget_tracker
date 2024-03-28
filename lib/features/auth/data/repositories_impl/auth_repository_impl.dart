import 'package:budget_tracker/features/auth/data/services/auth_service.dart';
import 'package:budget_tracker/features/auth/data/services_impl/auth_service_impl.dart';
import 'package:budget_tracker/features/auth/domain/entities/new_auth_user.dart';
import 'package:budget_tracker/features/auth/domain/entities/new_signup_user.dart';
import 'package:budget_tracker/features/auth/domain/repository/auth_repository.dart';
import 'package:budget_tracker/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepositoryImpl(
    ref.watch(authServiceProvider),
  ),
);

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._service);

  final AuthService _service;

  @override
  Future<(String, String)> auth(NewAuthUser user) async {
    final response = await _service.auth(user);
    logger.log(Level.WARNING, response['accessToken']);
    return _parseAndSaveTokens(response);
  }

  @override
  Future<(String, String)> signup(NewSignupUser user) async {
    final response = await _service.signup(user);
    return _parseAndSaveTokens(response);
  }

  @override
  Future<bool> checkToken() async {
    return _service.checkToken();
  }

  Future<(String, String)> _parseAndSaveTokens(
    Map<String, dynamic> response,
  ) async {
    final accessToken = response['accessToken'].toString();
    final tokenType = response['tokenType'].toString();
    await _service.saveTokens(accessToken, tokenType);
    return (accessToken, tokenType);
  }
}
