// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_signup_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewSignupUser _$NewSignupUserFromJson(Map<String, dynamic> json) {
  return _NewSignupUser.fromJson(json);
}

/// @nodoc
mixin _$NewSignupUser {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get passwordRepeat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewSignupUserCopyWith<NewSignupUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewSignupUserCopyWith<$Res> {
  factory $NewSignupUserCopyWith(
          NewSignupUser value, $Res Function(NewSignupUser) then) =
      _$NewSignupUserCopyWithImpl<$Res, NewSignupUser>;
  @useResult
  $Res call({String username, String password, String passwordRepeat});
}

/// @nodoc
class _$NewSignupUserCopyWithImpl<$Res, $Val extends NewSignupUser>
    implements $NewSignupUserCopyWith<$Res> {
  _$NewSignupUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? passwordRepeat = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordRepeat: null == passwordRepeat
          ? _value.passwordRepeat
          : passwordRepeat // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewSignupUserImplCopyWith<$Res>
    implements $NewSignupUserCopyWith<$Res> {
  factory _$$NewSignupUserImplCopyWith(
          _$NewSignupUserImpl value, $Res Function(_$NewSignupUserImpl) then) =
      __$$NewSignupUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String username, String password, String passwordRepeat});
}

/// @nodoc
class __$$NewSignupUserImplCopyWithImpl<$Res>
    extends _$NewSignupUserCopyWithImpl<$Res, _$NewSignupUserImpl>
    implements _$$NewSignupUserImplCopyWith<$Res> {
  __$$NewSignupUserImplCopyWithImpl(
      _$NewSignupUserImpl _value, $Res Function(_$NewSignupUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
    Object? passwordRepeat = null,
  }) {
    return _then(_$NewSignupUserImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordRepeat: null == passwordRepeat
          ? _value.passwordRepeat
          : passwordRepeat // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewSignupUserImpl implements _NewSignupUser {
  _$NewSignupUserImpl(
      {this.username = '', this.password = '', this.passwordRepeat = ''});

  factory _$NewSignupUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewSignupUserImplFromJson(json);

  @override
  @JsonKey()
  final String username;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String passwordRepeat;

  @override
  String toString() {
    return 'NewSignupUser(username: $username, password: $password, passwordRepeat: $passwordRepeat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewSignupUserImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordRepeat, passwordRepeat) ||
                other.passwordRepeat == passwordRepeat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, username, password, passwordRepeat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewSignupUserImplCopyWith<_$NewSignupUserImpl> get copyWith =>
      __$$NewSignupUserImplCopyWithImpl<_$NewSignupUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewSignupUserImplToJson(
      this,
    );
  }
}

abstract class _NewSignupUser implements NewSignupUser {
  factory _NewSignupUser(
      {final String username,
      final String password,
      final String passwordRepeat}) = _$NewSignupUserImpl;

  factory _NewSignupUser.fromJson(Map<String, dynamic> json) =
      _$NewSignupUserImpl.fromJson;

  @override
  String get username;
  @override
  String get password;
  @override
  String get passwordRepeat;
  @override
  @JsonKey(ignore: true)
  _$$NewSignupUserImplCopyWith<_$NewSignupUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
