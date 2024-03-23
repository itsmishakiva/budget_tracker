// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Operation {
  int get id => throw _privateConstructorUsedError;
  bool get incoming => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OperationCopyWith<Operation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationCopyWith<$Res> {
  factory $OperationCopyWith(Operation value, $Res Function(Operation) then) =
      _$OperationCopyWithImpl<$Res, Operation>;
  @useResult
  $Res call(
      {int id, bool incoming, double sum, DateTime date, Category category});

  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class _$OperationCopyWithImpl<$Res, $Val extends Operation>
    implements $OperationCopyWith<$Res> {
  _$OperationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? incoming = null,
    Object? sum = null,
    Object? date = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      incoming: null == incoming
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as bool,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OperationImplCopyWith<$Res>
    implements $OperationCopyWith<$Res> {
  factory _$$OperationImplCopyWith(
          _$OperationImpl value, $Res Function(_$OperationImpl) then) =
      __$$OperationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, bool incoming, double sum, DateTime date, Category category});

  @override
  $CategoryCopyWith<$Res> get category;
}

/// @nodoc
class __$$OperationImplCopyWithImpl<$Res>
    extends _$OperationCopyWithImpl<$Res, _$OperationImpl>
    implements _$$OperationImplCopyWith<$Res> {
  __$$OperationImplCopyWithImpl(
      _$OperationImpl _value, $Res Function(_$OperationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? incoming = null,
    Object? sum = null,
    Object? date = null,
    Object? category = null,
  }) {
    return _then(_$OperationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      incoming: null == incoming
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as bool,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
    ));
  }
}

/// @nodoc

class _$OperationImpl implements _Operation {
  _$OperationImpl(
      {required this.id,
      required this.incoming,
      required this.sum,
      required this.date,
      required this.category});

  @override
  final int id;
  @override
  final bool incoming;
  @override
  final double sum;
  @override
  final DateTime date;
  @override
  final Category category;

  @override
  String toString() {
    return 'Operation(id: $id, incoming: $incoming, sum: $sum, date: $date, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.incoming, incoming) ||
                other.incoming == incoming) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, incoming, sum, date, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationImplCopyWith<_$OperationImpl> get copyWith =>
      __$$OperationImplCopyWithImpl<_$OperationImpl>(this, _$identity);
}

abstract class _Operation implements Operation {
  factory _Operation(
      {required final int id,
      required final bool incoming,
      required final double sum,
      required final DateTime date,
      required final Category category}) = _$OperationImpl;

  @override
  int get id;
  @override
  bool get incoming;
  @override
  double get sum;
  @override
  DateTime get date;
  @override
  Category get category;
  @override
  @JsonKey(ignore: true)
  _$$OperationImplCopyWith<_$OperationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
