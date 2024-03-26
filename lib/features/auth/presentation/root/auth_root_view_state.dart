import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_root_view_state.freezed.dart';

@freezed
sealed class AuthRootViewState with _$AuthRootViewState {
  const factory AuthRootViewState.auth() = AuthRootViewStateAuth;
  const factory AuthRootViewState.signup() = AuthRootViewStateSignup;
  const factory AuthRootViewState.loading() = AuthRootViewStateLoading;
}
