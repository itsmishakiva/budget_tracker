import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_signup_user.freezed.dart';
part 'new_signup_user.g.dart';

@freezed
class NewSignupUser with _$NewSignupUser {
  factory NewSignupUser({
    @Default('') final String username,
    @Default('') final String password,
    @Default('') final String passwordRepeat,
  }) = _NewSignupUser;

  factory NewSignupUser.fromJson(Map<String, dynamic> json) => _$NewSignupUserFromJson(json);
}
