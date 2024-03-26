import 'package:budget_tracker/features/auth/domain/entities/new_auth_user.dart';
import 'package:budget_tracker/features/auth/domain/entities/new_signup_user.dart';

abstract interface class AuthRepository {
  Future<(String, String)> auth(NewAuthUser user);

  Future<(String, String)> signup(NewSignupUser user);

  Future<bool> checkTokenExpire();
}
