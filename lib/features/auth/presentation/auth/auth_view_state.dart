import 'package:budget_tracker/features/auth/domain/entities/new_auth_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_view_state.freezed.dart';

@freezed
sealed class AuthViewState with _$AuthViewState {
  const factory AuthViewState.data(NewAuthUser user) = AuthViewStateData;
  const factory AuthViewState.error(NewAuthUser user, String error) = AuthViewStateError;
}
