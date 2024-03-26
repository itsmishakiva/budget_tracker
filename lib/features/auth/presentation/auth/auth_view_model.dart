import 'package:budget_tracker/core/internal/app_router_provider.dart';
import 'package:budget_tracker/features/auth/data/repositories_impl/auth_repository_impl.dart';
import 'package:budget_tracker/features/auth/domain/entities/new_auth_user.dart';
import 'package:budget_tracker/features/auth/domain/repository/auth_repository.dart';
import 'package:budget_tracker/features/auth/presentation/auth/auth_view_state.dart';
import 'package:budget_tracker/main.dart';
import 'package:budget_tracker/navigation/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

  Future<void> signIn(AppLocalizations locale) async {
    try {
      final user = state.user;
      if (user.username.length < 6 ||
          user.username.length > 20 ||
          user.password.length < 6) {
        _setAuthError(locale.wrongUserData);
        return;
      }
      state = AuthViewState.loading(state.user);
      await _repository.auth(user);
      _router.replaceNamed('/pin');
    } catch (e) {
      logger.log(Level.WARNING, e);
      _setAuthError(locale.wrongUserOrConnect);
    }
  }

  void clear() {
    state = AuthViewState.data(NewAuthUser());
  }

  void _setAuthError(String errorMessage) {
    state = AuthViewState.error(
      state.user,
      errorMessage,
    );
  }

  void updateUsername(String username) {
    state = state.copyWith(
      user: state.user.copyWith(
        username: username,
      ),
    );
  }

  void updatePassword(String password) {
    state = state.copyWith(
      user: state.user.copyWith(
        password: password,
      ),
    );
  }
}
