import 'package:budget_tracker/core/internal/app_router_provider.dart';
import 'package:budget_tracker/features/auth/data/repositories_impl/auth_repository_impl.dart';
import 'package:budget_tracker/features/auth/domain/repository/auth_repository.dart';
import 'package:budget_tracker/features/auth/presentation/auth/auth_view_model.dart';
import 'package:budget_tracker/features/auth/presentation/root/auth_root_view_state.dart';
import 'package:budget_tracker/features/auth/presentation/signup/signup_view_model.dart';
import 'package:budget_tracker/navigation/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRootViewModelProvider =
    StateNotifierProvider<AuthRootViewModel, AuthRootViewState>(
  (ref) => AuthRootViewModel(
    const AuthRootViewState.loading(),
    ref.watch(authViewModelProvider.notifier),
    ref.watch(signupViewModelProvider.notifier),
    ref.watch(authRepositoryProvider),
    ref.watch(appRouterProvider),
  )..loadToken(),
);

class AuthRootViewModel extends StateNotifier<AuthRootViewState> {
  AuthRootViewModel(
    super.state,
    this._authViewModel,
    this._signupViewModel,
    this._repository,
    this._router,
  );

  final AuthViewModel _authViewModel;
  final SignupViewModel _signupViewModel;
  final AuthRepository _repository;
  final AppRouter _router;

  Future<void> loadToken() async {
    bool expired;
    try {
      expired = await _repository.checkToken();
    } catch (e) {
      expired = true;
    }
    if (expired) {
      state = const AuthRootViewState.auth();
      return;
    }
    _router.replaceNamed('/pin');
  }

  void switchState() {
    if (state is AuthRootViewStateAuth) {
      state = const AuthRootViewState.signup();
      _authViewModel.clear();
    } else {
      state = const AuthRootViewState.auth();
      _signupViewModel.clear();
    }
  }
}
