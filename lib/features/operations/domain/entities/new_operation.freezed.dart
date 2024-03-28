// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_operation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewOperation {
  bool get incoming => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  int get checkId => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewOperationCopyWith<NewOperation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewOperationCopyWith<$Res> {
  factory $NewOperationCopyWith(
          NewOperation value, $Res Function(NewOperation) then) =
      _$NewOperationCopyWithImpl<$Res, NewOperation>;
  @useResult
  $Res call(
      {bool incoming,
      double sum,
      DateTime? date,
      int checkId,
      int? categoryId});
}

/// @nodoc
class _$NewOperationCopyWithImpl<$Res, $Val extends NewOperation>
    implements $NewOperationCopyWith<$Res> {
  _$NewOperationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incoming = null,
    Object? sum = null,
    Object? date = freezed,
    Object? checkId = null,
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      incoming: null == incoming
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as bool,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkId: null == checkId
          ? _value.checkId
          : checkId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewOperationImplCopyWith<$Res>
    implements $NewOperationCopyWith<$Res> {
  factory _$$NewOperationImplCopyWith(
          _$NewOperationImpl value, $Res Function(_$NewOperationImpl) then) =
      __$$NewOperationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool incoming,
      double sum,
      DateTime? date,
      int checkId,
      int? categoryId});
}

/// @nodoc
class __$$NewOperationImplCopyWithImpl<$Res>
    extends _$NewOperationCopyWithImpl<$Res, _$NewOperationImpl>
    implements _$$NewOperationImplCopyWith<$Res> {
  __$$NewOperationImplCopyWithImpl(
      _$NewOperationImpl _value, $Res Function(_$NewOperationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? incoming = null,
    Object? sum = null,
    Object? date = freezed,
    Object? checkId = null,
    Object? categoryId = freezed,
  }) {
    return _then(_$NewOperationImpl(
      incoming: null == incoming
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as bool,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      checkId: null == checkId
          ? _value.checkId
          : checkId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$NewOperationImpl implements _NewOperation {
  _$NewOperationImpl(
      {this.incoming = false,
      this.sum = 0.0,
      this.date,
      this.checkId = 1,
      this.categoryId});

  @override
  @JsonKey()
  final bool incoming;
  @override
  @JsonKey()
  final double sum;
  @override
  final DateTime? date;
  @override
  @JsonKey()
  final int checkId;
  @override
  final int? categoryId;

  @override
  String toString() {
    return 'NewOperation(incoming: $incoming, sum: $sum, date: $date, checkId: $checkId, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewOperationImpl &&
            (identical(other.incoming, incoming) ||
                other.incoming == incoming) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.checkId, checkId) || other.checkId == checkId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, incoming, sum, date, checkId, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewOperationImplCopyWith<_$NewOperationImpl> get copyWith =>
      __$$NewOperationImplCopyWithImpl<_$NewOperationImpl>(this, _$identity);
}

abstract class _NewOperation implements NewOperation {
  factory _NewOperation(
      {final bool incoming,
      final double sum,
      final DateTime? date,
      final int checkId,
      final int? categoryId}) = _$NewOperationImpl;

  @override
  bool get incoming;
  @override
  double get sum;
  @override
  DateTime? get date;
  @override
  int get checkId;
  @override
  int? get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$NewOperationImplCopyWith<_$NewOperationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
