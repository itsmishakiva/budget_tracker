// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Bar {
  String get label => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BarCopyWith<Bar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarCopyWith<$Res> {
  factory $BarCopyWith(Bar value, $Res Function(Bar) then) =
      _$BarCopyWithImpl<$Res, Bar>;
  @useResult
  $Res call({String label, double sum});
}

/// @nodoc
class _$BarCopyWithImpl<$Res, $Val extends Bar> implements $BarCopyWith<$Res> {
  _$BarCopyWithImpl(this._value, this._then);

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
abstract class _$$BarImplCopyWith<$Res> implements $BarCopyWith<$Res> {
  factory _$$BarImplCopyWith(_$BarImpl value, $Res Function(_$BarImpl) then) =
      __$$BarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, double sum});
}

/// @nodoc
class __$$BarImplCopyWithImpl<$Res> extends _$BarCopyWithImpl<$Res, _$BarImpl>
    implements _$$BarImplCopyWith<$Res> {
  __$$BarImplCopyWithImpl(_$BarImpl _value, $Res Function(_$BarImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? sum = null,
  }) {
    return _then(_$BarImpl(
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

class _$BarImpl with DiagnosticableTreeMixin implements _Bar {
  _$BarImpl({required this.label, required this.sum});

  @override
  final String label;
  @override
  final double sum;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Bar(label: $label, sum: $sum)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Bar'))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('sum', sum));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.sum, sum) || other.sum == sum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, sum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BarImplCopyWith<_$BarImpl> get copyWith =>
      __$$BarImplCopyWithImpl<_$BarImpl>(this, _$identity);
}

abstract class _Bar implements Bar {
  factory _Bar({required final String label, required final double sum}) =
      _$BarImpl;

  @override
  String get label;
  @override
  double get sum;
  @override
  @JsonKey(ignore: true)
  _$$BarImplCopyWith<_$BarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
