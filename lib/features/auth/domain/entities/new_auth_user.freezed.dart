// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_auth_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewAuthUser _$NewAuthUserFromJson(Map<String, dynamic> json) {
  return _NewAuthUser.fromJson(json);
}

/// @nodoc
mixin _$NewAuthUser {
  String? get username => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewAuthUserCopyWith<NewAuthUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewAuthUserCopyWith<$Res> {
  factory $NewAuthUserCopyWith(
          NewAuthUser value, $Res Function(NewAuthUser) then) =
      _$NewAuthUserCopyWithImpl<$Res, NewAuthUser>;
  @useResult
  $Res call({String? username, String? password});
}

/// @nodoc
class _$NewAuthUserCopyWithImpl<$Res, $Val extends NewAuthUser>
    implements $NewAuthUserCopyWith<$Res> {
  _$NewAuthUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewAuthUserImplCopyWith<$Res>
    implements $NewAuthUserCopyWith<$Res> {
  factory _$$NewAuthUserImplCopyWith(
          _$NewAuthUserImpl value, $Res Function(_$NewAuthUserImpl) then) =
      __$$NewAuthUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? username, String? password});
}

/// @nodoc
class __$$NewAuthUserImplCopyWithImpl<$Res>
    extends _$NewAuthUserCopyWithImpl<$Res, _$NewAuthUserImpl>
    implements _$$NewAuthUserImplCopyWith<$Res> {
  __$$NewAuthUserImplCopyWithImpl(
      _$NewAuthUserImpl _value, $Res Function(_$NewAuthUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$NewAuthUserImpl(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewAuthUserImpl implements _NewAuthUser {
  _$NewAuthUserImpl({this.username, this.password});

  factory _$NewAuthUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewAuthUserImplFromJson(json);

  @override
  final String? username;
  @override
  final String? password;

  @override
  String toString() {
    return 'NewAuthUser(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewAuthUserImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewAuthUserImplCopyWith<_$NewAuthUserImpl> get copyWith =>
      __$$NewAuthUserImplCopyWithImpl<_$NewAuthUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewAuthUserImplToJson(
      this,
    );
  }
}

abstract class _NewAuthUser implements NewAuthUser {
  factory _NewAuthUser({final String? username, final String? password}) =
      _$NewAuthUserImpl;

  factory _NewAuthUser.fromJson(Map<String, dynamic> json) =
      _$NewAuthUserImpl.fromJson;

  @override
  String? get username;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$NewAuthUserImplCopyWith<_$NewAuthUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
