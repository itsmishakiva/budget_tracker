// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthViewState {
  NewAuthUser get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAuthUser user) data,
    required TResult Function(NewAuthUser user, String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewAuthUser user)? data,
    TResult? Function(NewAuthUser user, String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAuthUser user)? data,
    TResult Function(NewAuthUser user, String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthViewStateData value) data,
    required TResult Function(AuthViewStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthViewStateData value)? data,
    TResult? Function(AuthViewStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthViewStateData value)? data,
    TResult Function(AuthViewStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthViewStateCopyWith<AuthViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthViewStateCopyWith<$Res> {
  factory $AuthViewStateCopyWith(
          AuthViewState value, $Res Function(AuthViewState) then) =
      _$AuthViewStateCopyWithImpl<$Res, AuthViewState>;
  @useResult
  $Res call({NewAuthUser user});

  $NewAuthUserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthViewStateCopyWithImpl<$Res, $Val extends AuthViewState>
    implements $AuthViewStateCopyWith<$Res> {
  _$AuthViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as NewAuthUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewAuthUserCopyWith<$Res> get user {
    return $NewAuthUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthViewStateDataImplCopyWith<$Res>
    implements $AuthViewStateCopyWith<$Res> {
  factory _$$AuthViewStateDataImplCopyWith(_$AuthViewStateDataImpl value,
          $Res Function(_$AuthViewStateDataImpl) then) =
      __$$AuthViewStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewAuthUser user});

  @override
  $NewAuthUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthViewStateDataImplCopyWithImpl<$Res>
    extends _$AuthViewStateCopyWithImpl<$Res, _$AuthViewStateDataImpl>
    implements _$$AuthViewStateDataImplCopyWith<$Res> {
  __$$AuthViewStateDataImplCopyWithImpl(_$AuthViewStateDataImpl _value,
      $Res Function(_$AuthViewStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$AuthViewStateDataImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as NewAuthUser,
    ));
  }
}

/// @nodoc

class _$AuthViewStateDataImpl implements AuthViewStateData {
  const _$AuthViewStateDataImpl(this.user);

  @override
  final NewAuthUser user;

  @override
  String toString() {
    return 'AuthViewState.data(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthViewStateDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthViewStateDataImplCopyWith<_$AuthViewStateDataImpl> get copyWith =>
      __$$AuthViewStateDataImplCopyWithImpl<_$AuthViewStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAuthUser user) data,
    required TResult Function(NewAuthUser user, String error) error,
  }) {
    return data(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewAuthUser user)? data,
    TResult? Function(NewAuthUser user, String error)? error,
  }) {
    return data?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAuthUser user)? data,
    TResult Function(NewAuthUser user, String error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthViewStateData value) data,
    required TResult Function(AuthViewStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthViewStateData value)? data,
    TResult? Function(AuthViewStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthViewStateData value)? data,
    TResult Function(AuthViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AuthViewStateData implements AuthViewState {
  const factory AuthViewStateData(final NewAuthUser user) =
      _$AuthViewStateDataImpl;

  @override
  NewAuthUser get user;
  @override
  @JsonKey(ignore: true)
  _$$AuthViewStateDataImplCopyWith<_$AuthViewStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthViewStateErrorImplCopyWith<$Res>
    implements $AuthViewStateCopyWith<$Res> {
  factory _$$AuthViewStateErrorImplCopyWith(_$AuthViewStateErrorImpl value,
          $Res Function(_$AuthViewStateErrorImpl) then) =
      __$$AuthViewStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewAuthUser user, String error});

  @override
  $NewAuthUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$AuthViewStateErrorImplCopyWithImpl<$Res>
    extends _$AuthViewStateCopyWithImpl<$Res, _$AuthViewStateErrorImpl>
    implements _$$AuthViewStateErrorImplCopyWith<$Res> {
  __$$AuthViewStateErrorImplCopyWithImpl(_$AuthViewStateErrorImpl _value,
      $Res Function(_$AuthViewStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? error = null,
  }) {
    return _then(_$AuthViewStateErrorImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as NewAuthUser,
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthViewStateErrorImpl implements AuthViewStateError {
  const _$AuthViewStateErrorImpl(this.user, this.error);

  @override
  final NewAuthUser user;
  @override
  final String error;

  @override
  String toString() {
    return 'AuthViewState.error(user: $user, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthViewStateErrorImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthViewStateErrorImplCopyWith<_$AuthViewStateErrorImpl> get copyWith =>
      __$$AuthViewStateErrorImplCopyWithImpl<_$AuthViewStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAuthUser user) data,
    required TResult Function(NewAuthUser user, String error) error,
  }) {
    return error(user, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewAuthUser user)? data,
    TResult? Function(NewAuthUser user, String error)? error,
  }) {
    return error?.call(user, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAuthUser user)? data,
    TResult Function(NewAuthUser user, String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(user, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthViewStateData value) data,
    required TResult Function(AuthViewStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthViewStateData value)? data,
    TResult? Function(AuthViewStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthViewStateData value)? data,
    TResult Function(AuthViewStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthViewStateError implements AuthViewState {
  const factory AuthViewStateError(final NewAuthUser user, final String error) =
      _$AuthViewStateErrorImpl;

  @override
  NewAuthUser get user;
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$AuthViewStateErrorImplCopyWith<_$AuthViewStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
