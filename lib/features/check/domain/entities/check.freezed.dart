// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Check {
  int get id => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;
  double get expenses => throw _privateConstructorUsedError;
  double get income => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckCopyWith<Check> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckCopyWith<$Res> {
  factory $CheckCopyWith(Check value, $Res Function(Check) then) =
      _$CheckCopyWithImpl<$Res, Check>;
  @useResult
  $Res call({int id, double sum, double expenses, double income});
}

/// @nodoc
class _$CheckCopyWithImpl<$Res, $Val extends Check>
    implements $CheckCopyWith<$Res> {
  _$CheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sum = null,
    Object? expenses = null,
    Object? income = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as double,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckImplCopyWith<$Res> implements $CheckCopyWith<$Res> {
  factory _$$CheckImplCopyWith(
          _$CheckImpl value, $Res Function(_$CheckImpl) then) =
      __$$CheckImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, double sum, double expenses, double income});
}

/// @nodoc
class __$$CheckImplCopyWithImpl<$Res>
    extends _$CheckCopyWithImpl<$Res, _$CheckImpl>
    implements _$$CheckImplCopyWith<$Res> {
  __$$CheckImplCopyWithImpl(
      _$CheckImpl _value, $Res Function(_$CheckImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sum = null,
    Object? expenses = null,
    Object? income = null,
  }) {
    return _then(_$CheckImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as double,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CheckImpl with DiagnosticableTreeMixin implements _Check {
  _$CheckImpl(
      {required this.id,
      required this.sum,
      required this.expenses,
      required this.income});

  @override
  final int id;
  @override
  final double sum;
  @override
  final double expenses;
  @override
  final double income;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Check(id: $id, sum: $sum, expenses: $expenses, income: $income)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Check'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('sum', sum))
      ..add(DiagnosticsProperty('expenses', expenses))
      ..add(DiagnosticsProperty('income', income));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.expenses, expenses) ||
                other.expenses == expenses) &&
            (identical(other.income, income) || other.income == income));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, sum, expenses, income);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckImplCopyWith<_$CheckImpl> get copyWith =>
      __$$CheckImplCopyWithImpl<_$CheckImpl>(this, _$identity);
}

abstract class _Check implements Check {
  factory _Check(
      {required final int id,
      required final double sum,
      required final double expenses,
      required final double income}) = _$CheckImpl;

  @override
  int get id;
  @override
  double get sum;
  @override
  double get expenses;
  @override
  double get income;
  @override
  @JsonKey(ignore: true)
  _$$CheckImplCopyWith<_$CheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
