// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckDTO _$CheckDTOFromJson(Map<String, dynamic> json) {
  return _CheckDTO.fromJson(json);
}

/// @nodoc
mixin _$CheckDTO {
  int get id => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;
  double get outcomingSum => throw _privateConstructorUsedError;
  double get incomingSum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckDTOCopyWith<CheckDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckDTOCopyWith<$Res> {
  factory $CheckDTOCopyWith(CheckDTO value, $Res Function(CheckDTO) then) =
      _$CheckDTOCopyWithImpl<$Res, CheckDTO>;
  @useResult
  $Res call({int id, double sum, double outcomingSum, double incomingSum});
}

/// @nodoc
class _$CheckDTOCopyWithImpl<$Res, $Val extends CheckDTO>
    implements $CheckDTOCopyWith<$Res> {
  _$CheckDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sum = null,
    Object? outcomingSum = null,
    Object? incomingSum = null,
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
      outcomingSum: null == outcomingSum
          ? _value.outcomingSum
          : outcomingSum // ignore: cast_nullable_to_non_nullable
              as double,
      incomingSum: null == incomingSum
          ? _value.incomingSum
          : incomingSum // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckDTOImplCopyWith<$Res>
    implements $CheckDTOCopyWith<$Res> {
  factory _$$CheckDTOImplCopyWith(
          _$CheckDTOImpl value, $Res Function(_$CheckDTOImpl) then) =
      __$$CheckDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, double sum, double outcomingSum, double incomingSum});
}

/// @nodoc
class __$$CheckDTOImplCopyWithImpl<$Res>
    extends _$CheckDTOCopyWithImpl<$Res, _$CheckDTOImpl>
    implements _$$CheckDTOImplCopyWith<$Res> {
  __$$CheckDTOImplCopyWithImpl(
      _$CheckDTOImpl _value, $Res Function(_$CheckDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sum = null,
    Object? outcomingSum = null,
    Object? incomingSum = null,
  }) {
    return _then(_$CheckDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      outcomingSum: null == outcomingSum
          ? _value.outcomingSum
          : outcomingSum // ignore: cast_nullable_to_non_nullable
              as double,
      incomingSum: null == incomingSum
          ? _value.incomingSum
          : incomingSum // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CheckDTOImpl with DiagnosticableTreeMixin implements _CheckDTO {
  _$CheckDTOImpl(
      {required this.id,
      required this.sum,
      required this.outcomingSum,
      required this.incomingSum});

  factory _$CheckDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckDTOImplFromJson(json);

  @override
  final int id;
  @override
  final double sum;
  @override
  final double outcomingSum;
  @override
  final double incomingSum;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckDTO(id: $id, sum: $sum, outcomingSum: $outcomingSum, incomingSum: $incomingSum)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('sum', sum))
      ..add(DiagnosticsProperty('outcomingSum', outcomingSum))
      ..add(DiagnosticsProperty('incomingSum', incomingSum));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.outcomingSum, outcomingSum) ||
                other.outcomingSum == outcomingSum) &&
            (identical(other.incomingSum, incomingSum) ||
                other.incomingSum == incomingSum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sum, outcomingSum, incomingSum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckDTOImplCopyWith<_$CheckDTOImpl> get copyWith =>
      __$$CheckDTOImplCopyWithImpl<_$CheckDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckDTOImplToJson(
      this,
    );
  }
}

abstract class _CheckDTO implements CheckDTO {
  factory _CheckDTO(
      {required final int id,
      required final double sum,
      required final double outcomingSum,
      required final double incomingSum}) = _$CheckDTOImpl;

  factory _CheckDTO.fromJson(Map<String, dynamic> json) =
      _$CheckDTOImpl.fromJson;

  @override
  int get id;
  @override
  double get sum;
  @override
  double get outcomingSum;
  @override
  double get incomingSum;
  @override
  @JsonKey(ignore: true)
  _$$CheckDTOImplCopyWith<_$CheckDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
