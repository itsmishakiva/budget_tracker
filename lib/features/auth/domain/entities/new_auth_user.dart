import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_auth_user.freezed.dart';
part 'new_auth_user.g.dart';

@freezed
class NewAuthUser with _$NewAuthUser {
  factory NewAuthUser({
    @Default('') final String username,
    @Default('') final String password,
  }) = _NewAuthUser;

  factory NewAuthUser.fromJson(Map<String, dynamic> json) =>
      _$NewAuthUserFromJson(json);
}
