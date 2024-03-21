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
  String get title => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;
  String get currencySymbol => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;

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
      {int id,
      String title,
      double sum,
      String currencySymbol,
      String companyName});
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
    Object? title = null,
    Object? sum = null,
    Object? currencySymbol = null,
    Object? companyName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
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
      {int id,
      String title,
      double sum,
      String currencySymbol,
      String companyName});
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
    Object? title = null,
    Object? sum = null,
    Object? currencySymbol = null,
    Object? companyName = null,
  }) {
    return _then(_$OperationImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      currencySymbol: null == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OperationImpl with DiagnosticableTreeMixin implements _Operation {
  _$OperationImpl(
      {required this.id,
      required this.title,
      required this.sum,
      required this.currencySymbol,
      required this.companyName});

  @override
  final int id;
  @override
  final String title;
  @override
  final double sum;
  @override
  final String currencySymbol;
  @override
  final String companyName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Operation(id: $id, title: $title, sum: $sum, currencySymbol: $currencySymbol, companyName: $companyName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Operation'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('sum', sum))
      ..add(DiagnosticsProperty('currencySymbol', currencySymbol))
      ..add(DiagnosticsProperty('companyName', companyName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, sum, currencySymbol, companyName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationImplCopyWith<_$OperationImpl> get copyWith =>
      __$$OperationImplCopyWithImpl<_$OperationImpl>(this, _$identity);
}

abstract class _Operation implements Operation {
  factory _Operation(
      {required final int id,
      required final String title,
      required final double sum,
      required final String currencySymbol,
      required final String companyName}) = _$OperationImpl;

  @override
  int get id;
  @override
  String get title;
  @override
  double get sum;
  @override
  String get currencySymbol;
  @override
  String get companyName;
  @override
  @JsonKey(ignore: true)
  _$$OperationImplCopyWith<_$OperationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
