import 'package:budget_tracker/core/internal/app_router_provider.dart';
import 'package:budget_tracker/features/auth/data/repositories_impl/auth_repository_impl.dart';
import 'package:budget_tracker/features/auth/domain/entities/new_auth_user.dart';
import 'package:budget_tracker/features/auth/domain/repository/auth_repository.dart';
import 'package:budget_tracker/features/auth/presentation/auth/auth_view_state.dart';
import 'package:budget_tracker/navigation/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authViewModelProvider =
    StateNotifierProvider<AuthViewModel, AuthViewState>(
  (ref) => AuthViewModel(
    AuthViewState.data(NewAuthUser()),
    ref.watch(authRepositoryProvider),
    ref.watch(appRouterProvider),
  ),
);

class AuthViewModel extends StateNotifier<AuthViewState> {
  AuthViewModel(
    super.state,
    this._repository,
    this._router,
  );

  final AuthRepository _repository;
  final AppRouter _router;

  Future<void> signIn() async {
    try {
      final user = state.user;
      if (user.username == null || user.password == null) {
        _setAuthError('Please enter auth dara');
      } else if (user.username!.length < 6) {
        _setAuthError('Username length must be longer than 5 symbols');
        return;
      } else if (user.username!.length > 20) {
        _setAuthError('Username length must be not longer than 20 symbols');
        return;
      } else if (user.password!.length < 6) {
        _setAuthError('Password length must be longer than 5 symbols');
      }
      await _repository.auth(user);
      _router.replaceNamed('/pin');
    } catch (e) {
      _setAuthError('Unknown error');
    }
  }

  void _setAuthError(String errorMessage) {
    state = AuthViewState.error(
      state.user,
      errorMessage,
    );
  }

  void updateAuth({String? username, String? password}) {
    state = state.copyWith(
      user: state.user.copyWith(
        username: username,
        password: password,
      ),
    );
  }
}
