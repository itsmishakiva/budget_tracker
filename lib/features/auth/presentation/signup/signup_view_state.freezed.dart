// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupViewState {
  NewSignupUser get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewSignupUser user) data,
    required TResult Function(NewSignupUser user, String error) error,
    required TResult Function(NewSignupUser user) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewSignupUser user)? data,
    TResult? Function(NewSignupUser user, String error)? error,
    TResult? Function(NewSignupUser user)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewSignupUser user)? data,
    TResult Function(NewSignupUser user, String error)? error,
    TResult Function(NewSignupUser user)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupViewStateData value) data,
    required TResult Function(SignupViewStateError value) error,
    required TResult Function(SignupViewStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupViewStateData value)? data,
    TResult? Function(SignupViewStateError value)? error,
    TResult? Function(SignupViewStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupViewStateData value)? data,
    TResult Function(SignupViewStateError value)? error,
    TResult Function(SignupViewStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupViewStateCopyWith<SignupViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupViewStateCopyWith<$Res> {
  factory $SignupViewStateCopyWith(
          SignupViewState value, $Res Function(SignupViewState) then) =
      _$SignupViewStateCopyWithImpl<$Res, SignupViewState>;
  @useResult
  $Res call({NewSignupUser user});

  $NewSignupUserCopyWith<$Res> get user;
}

/// @nodoc
class _$SignupViewStateCopyWithImpl<$Res, $Val extends SignupViewState>
    implements $SignupViewStateCopyWith<$Res> {
  _$SignupViewStateCopyWithImpl(this._value, this._then);

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
              as NewSignupUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewSignupUserCopyWith<$Res> get user {
    return $NewSignupUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignupViewStateDataImplCopyWith<$Res>
    implements $SignupViewStateCopyWith<$Res> {
  factory _$$SignupViewStateDataImplCopyWith(_$SignupViewStateDataImpl value,
          $Res Function(_$SignupViewStateDataImpl) then) =
      __$$SignupViewStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewSignupUser user});

  @override
  $NewSignupUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignupViewStateDataImplCopyWithImpl<$Res>
    extends _$SignupViewStateCopyWithImpl<$Res, _$SignupViewStateDataImpl>
    implements _$$SignupViewStateDataImplCopyWith<$Res> {
  __$$SignupViewStateDataImplCopyWithImpl(_$SignupViewStateDataImpl _value,
      $Res Function(_$SignupViewStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignupViewStateDataImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as NewSignupUser,
    ));
  }
}

/// @nodoc

class _$SignupViewStateDataImpl implements SignupViewStateData {
  const _$SignupViewStateDataImpl(this.user);

  @override
  final NewSignupUser user;

  @override
  String toString() {
    return 'SignupViewState.data(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupViewStateDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupViewStateDataImplCopyWith<_$SignupViewStateDataImpl> get copyWith =>
      __$$SignupViewStateDataImplCopyWithImpl<_$SignupViewStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewSignupUser user) data,
    required TResult Function(NewSignupUser user, String error) error,
    required TResult Function(NewSignupUser user) loading,
  }) {
    return data(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewSignupUser user)? data,
    TResult? Function(NewSignupUser user, String error)? error,
    TResult? Function(NewSignupUser user)? loading,
  }) {
    return data?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewSignupUser user)? data,
    TResult Function(NewSignupUser user, String error)? error,
    TResult Function(NewSignupUser user)? loading,
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
    required TResult Function(SignupViewStateData value) data,
    required TResult Function(SignupViewStateError value) error,
    required TResult Function(SignupViewStateLoading value) loading,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupViewStateData value)? data,
    TResult? Function(SignupViewStateError value)? error,
    TResult? Function(SignupViewStateLoading value)? loading,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupViewStateData value)? data,
    TResult Function(SignupViewStateError value)? error,
    TResult Function(SignupViewStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class SignupViewStateData implements SignupViewState {
  const factory SignupViewStateData(final NewSignupUser user) =
      _$SignupViewStateDataImpl;

  @override
  NewSignupUser get user;
  @override
  @JsonKey(ignore: true)
  _$$SignupViewStateDataImplCopyWith<_$SignupViewStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupViewStateErrorImplCopyWith<$Res>
    implements $SignupViewStateCopyWith<$Res> {
  factory _$$SignupViewStateErrorImplCopyWith(_$SignupViewStateErrorImpl value,
          $Res Function(_$SignupViewStateErrorImpl) then) =
      __$$SignupViewStateErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewSignupUser user, String error});

  @override
  $NewSignupUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignupViewStateErrorImplCopyWithImpl<$Res>
    extends _$SignupViewStateCopyWithImpl<$Res, _$SignupViewStateErrorImpl>
    implements _$$SignupViewStateErrorImplCopyWith<$Res> {
  __$$SignupViewStateErrorImplCopyWithImpl(_$SignupViewStateErrorImpl _value,
      $Res Function(_$SignupViewStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? error = null,
  }) {
    return _then(_$SignupViewStateErrorImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as NewSignupUser,
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupViewStateErrorImpl implements SignupViewStateError {
  const _$SignupViewStateErrorImpl(this.user, this.error);

  @override
  final NewSignupUser user;
  @override
  final String error;

  @override
  String toString() {
    return 'SignupViewState.error(user: $user, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupViewStateErrorImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupViewStateErrorImplCopyWith<_$SignupViewStateErrorImpl>
      get copyWith =>
          __$$SignupViewStateErrorImplCopyWithImpl<_$SignupViewStateErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewSignupUser user) data,
    required TResult Function(NewSignupUser user, String error) error,
    required TResult Function(NewSignupUser user) loading,
  }) {
    return error(user, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewSignupUser user)? data,
    TResult? Function(NewSignupUser user, String error)? error,
    TResult? Function(NewSignupUser user)? loading,
  }) {
    return error?.call(user, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewSignupUser user)? data,
    TResult Function(NewSignupUser user, String error)? error,
    TResult Function(NewSignupUser user)? loading,
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
    required TResult Function(SignupViewStateData value) data,
    required TResult Function(SignupViewStateError value) error,
    required TResult Function(SignupViewStateLoading value) loading,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupViewStateData value)? data,
    TResult? Function(SignupViewStateError value)? error,
    TResult? Function(SignupViewStateLoading value)? loading,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupViewStateData value)? data,
    TResult Function(SignupViewStateError value)? error,
    TResult Function(SignupViewStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SignupViewStateError implements SignupViewState {
  const factory SignupViewStateError(
          final NewSignupUser user, final String error) =
      _$SignupViewStateErrorImpl;

  @override
  NewSignupUser get user;
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$SignupViewStateErrorImplCopyWith<_$SignupViewStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignupViewStateLoadingImplCopyWith<$Res>
    implements $SignupViewStateCopyWith<$Res> {
  factory _$$SignupViewStateLoadingImplCopyWith(
          _$SignupViewStateLoadingImpl value,
          $Res Function(_$SignupViewStateLoadingImpl) then) =
      __$$SignupViewStateLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewSignupUser user});

  @override
  $NewSignupUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SignupViewStateLoadingImplCopyWithImpl<$Res>
    extends _$SignupViewStateCopyWithImpl<$Res, _$SignupViewStateLoadingImpl>
    implements _$$SignupViewStateLoadingImplCopyWith<$Res> {
  __$$SignupViewStateLoadingImplCopyWithImpl(
      _$SignupViewStateLoadingImpl _value,
      $Res Function(_$SignupViewStateLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SignupViewStateLoadingImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as NewSignupUser,
    ));
  }
}

/// @nodoc

class _$SignupViewStateLoadingImpl implements SignupViewStateLoading {
  const _$SignupViewStateLoadingImpl(this.user);

  @override
  final NewSignupUser user;

  @override
  String toString() {
    return 'SignupViewState.loading(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupViewStateLoadingImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupViewStateLoadingImplCopyWith<_$SignupViewStateLoadingImpl>
      get copyWith => __$$SignupViewStateLoadingImplCopyWithImpl<
          _$SignupViewStateLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewSignupUser user) data,
    required TResult Function(NewSignupUser user, String error) error,
    required TResult Function(NewSignupUser user) loading,
  }) {
    return loading(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NewSignupUser user)? data,
    TResult? Function(NewSignupUser user, String error)? error,
    TResult? Function(NewSignupUser user)? loading,
  }) {
    return loading?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewSignupUser user)? data,
    TResult Function(NewSignupUser user, String error)? error,
    TResult Function(NewSignupUser user)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupViewStateData value) data,
    required TResult Function(SignupViewStateError value) error,
    required TResult Function(SignupViewStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignupViewStateData value)? data,
    TResult? Function(SignupViewStateError value)? error,
    TResult? Function(SignupViewStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupViewStateData value)? data,
    TResult Function(SignupViewStateError value)? error,
    TResult Function(SignupViewStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SignupViewStateLoading implements SignupViewState {
  const factory SignupViewStateLoading(final NewSignupUser user) =
      _$SignupViewStateLoadingImpl;

  @override
  NewSignupUser get user;
  @override
  @JsonKey(ignore: true)
  _$$SignupViewStateLoadingImplCopyWith<_$SignupViewStateLoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}
