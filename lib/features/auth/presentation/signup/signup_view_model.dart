import 'package:budget_tracker/core/internal/app_router_provider.dart';
import 'package:budget_tracker/features/auth/data/repositories_impl/auth_repository_impl.dart';
import 'package:budget_tracker/features/auth/domain/entities/new_signup_user.dart';
import 'package:budget_tracker/features/auth/domain/repository/auth_repository.dart';
import 'package:budget_tracker/features/auth/presentation/signup/signup_view_state.dart';
import 'package:budget_tracker/main.dart';
import 'package:budget_tracker/navigation/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

final signupViewModelProvider =
    StateNotifierProvider<SignupViewModel, SignupViewState>(
  (ref) => SignupViewModel(
    SignupViewState.data(NewSignupUser()),
    ref.watch(authRepositoryProvider),
    ref.watch(appRouterProvider),
  ),
);

class SignupViewModel extends StateNotifier<SignupViewState> {
  SignupViewModel(
    super.state,
    this._repository,
    this._router,
  );

  final AuthRepository _repository;
  final AppRouter _router;

  Future<void> signUp() async {
    try {
      final user = state.user;
      if (user.username.length < 6) {
        _setSignupError('Username length must be longer than 5 symbols');
        return;
      } else if (user.username.length > 20) {
        _setSignupError('Username length must be not longer than 20 symbols');
        return;
      } else if (user.password.length < 6) {
        _setSignupError('Password length must be longer than 5 symbols');
      } else if (user.password != user.passwordRepeat) {
        _setSignupError('Passwords are not the same');
      }
      state = SignupViewState.loading(state.user);
      await _repository.signup(user);
      _router.replaceNamed('/pin');
    } catch (e) {
      logger.log(Level.WARNING, e);
      _setSignupError('Server error');
    }
  }

  void clear() {
    state = SignupViewState.data(NewSignupUser());
  }

  void _setSignupError(String errorMessage) {
    state = SignupViewState.error(
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

  void updateRepeatPassword(String password) {
    state = state.copyWith(
      user: state.user.copyWith(
        passwordRepeat: password,
      ),
    );
  }
}
