import 'package:budget_tracker/features/auth/domain/entities/new_signup_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_view_state.freezed.dart';

@freezed
sealed class SignupViewState with _$SignupViewState {
  const factory SignupViewState.data(NewSignupUser user) = SignupViewStateData;
  const factory SignupViewState.error(NewSignupUser user, String error) =
      SignupViewStateError;
  const factory SignupViewState.loading(NewSignupUser user) =
      SignupViewStateLoading;
}
