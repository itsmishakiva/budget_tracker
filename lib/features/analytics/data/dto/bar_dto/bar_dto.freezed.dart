// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bar_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BarDTO _$BarDTOFromJson(Map<String, dynamic> json) {
  return _BarDTO.fromJson(json);
}

/// @nodoc
mixin _$BarDTO {
  String get label => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarDTOCopyWith<BarDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarDTOCopyWith<$Res> {
  factory $BarDTOCopyWith(BarDTO value, $Res Function(BarDTO) then) =
      _$BarDTOCopyWithImpl<$Res, BarDTO>;
  @useResult
  $Res call({String label, double sum});
}

/// @nodoc
class _$BarDTOCopyWithImpl<$Res, $Val extends BarDTO>
    implements $BarDTOCopyWith<$Res> {
  _$BarDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? sum = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarDTOImplCopyWith<$Res> implements $BarDTOCopyWith<$Res> {
  factory _$$BarDTOImplCopyWith(
          _$BarDTOImpl value, $Res Function(_$BarDTOImpl) then) =
      __$$BarDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, double sum});
}

/// @nodoc
class __$$BarDTOImplCopyWithImpl<$Res>
    extends _$BarDTOCopyWithImpl<$Res, _$BarDTOImpl>
    implements _$$BarDTOImplCopyWith<$Res> {
  __$$BarDTOImplCopyWithImpl(
      _$BarDTOImpl _value, $Res Function(_$BarDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? sum = null,
  }) {
    return _then(_$BarDTOImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarDTOImpl with DiagnosticableTreeMixin implements _BarDTO {
  _$BarDTOImpl({required this.label, required this.sum});

  factory _$BarDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarDTOImplFromJson(json);

  @override
  final String label;
  @override
  final double sum;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BarDTO(label: $label, sum: $sum)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BarDTO'))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('sum', sum));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarDTOImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.sum, sum) || other.sum == sum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, sum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BarDTOImplCopyWith<_$BarDTOImpl> get copyWith =>
      __$$BarDTOImplCopyWithImpl<_$BarDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarDTOImplToJson(
      this,
    );
  }
}

abstract class _BarDTO implements BarDTO {
  factory _BarDTO({required final String label, required final double sum}) =
      _$BarDTOImpl;

  factory _BarDTO.fromJson(Map<String, dynamic> json) = _$BarDTOImpl.fromJson;

  @override
  String get label;
  @override
  double get sum;
  @override
  @JsonKey(ignore: true)
  _$$BarDTOImplCopyWith<_$BarDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
