import 'package:budget_tracker/features/auth/domain/entities/new_auth_user.dart';
import 'package:budget_tracker/features/auth/domain/entities/new_signup_user.dart';

abstract interface class AuthService {
  Future<Map<String, dynamic>> auth(NewAuthUser user);

  Future<Map<String, dynamic>> signup(NewSignupUser user);

  Future<void> saveTokens(String accessToken, String tokenType);

  Future<bool> checkTokenExpire();
}
