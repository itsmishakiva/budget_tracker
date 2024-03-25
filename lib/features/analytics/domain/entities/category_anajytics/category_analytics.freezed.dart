// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_analytics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryAnalytics {
  OperationType get category => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategoryAnalyticsCopyWith<CategoryAnalytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryAnalyticsCopyWith<$Res> {
  factory $CategoryAnalyticsCopyWith(
          CategoryAnalytics value, $Res Function(CategoryAnalytics) then) =
      _$CategoryAnalyticsCopyWithImpl<$Res, CategoryAnalytics>;
  @useResult
  $Res call({OperationType category, double sum});

  $OperationTypeCopyWith<$Res> get category;
}

/// @nodoc
class _$CategoryAnalyticsCopyWithImpl<$Res, $Val extends CategoryAnalytics>
    implements $CategoryAnalyticsCopyWith<$Res> {
  _$CategoryAnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? sum = null,
  }) {
    return _then(_value.copyWith(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as OperationType,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OperationTypeCopyWith<$Res> get category {
    return $OperationTypeCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryAnalyticsImplCopyWith<$Res>
    implements $CategoryAnalyticsCopyWith<$Res> {
  factory _$$CategoryAnalyticsImplCopyWith(_$CategoryAnalyticsImpl value,
          $Res Function(_$CategoryAnalyticsImpl) then) =
      __$$CategoryAnalyticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OperationType category, double sum});

  @override
  $OperationTypeCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategoryAnalyticsImplCopyWithImpl<$Res>
    extends _$CategoryAnalyticsCopyWithImpl<$Res, _$CategoryAnalyticsImpl>
    implements _$$CategoryAnalyticsImplCopyWith<$Res> {
  __$$CategoryAnalyticsImplCopyWithImpl(_$CategoryAnalyticsImpl _value,
      $Res Function(_$CategoryAnalyticsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? sum = null,
  }) {
    return _then(_$CategoryAnalyticsImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as OperationType,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CategoryAnalyticsImpl
    with DiagnosticableTreeMixin
    implements _CategoryAnalytics {
  _$CategoryAnalyticsImpl({required this.category, required this.sum});

  @override
  final OperationType category;
  @override
  final double sum;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryAnalytics(category: $category, sum: $sum)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryAnalytics'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('sum', sum));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAnalyticsImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.sum, sum) || other.sum == sum));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, sum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryAnalyticsImplCopyWith<_$CategoryAnalyticsImpl> get copyWith =>
      __$$CategoryAnalyticsImplCopyWithImpl<_$CategoryAnalyticsImpl>(
          this, _$identity);
}

abstract class _CategoryAnalytics implements CategoryAnalytics {
  factory _CategoryAnalytics(
      {required final OperationType category,
      required final double sum}) = _$CategoryAnalyticsImpl;

  @override
  OperationType get category;
  @override
  double get sum;
  @override
  @JsonKey(ignore: true)
  _$$CategoryAnalyticsImplCopyWith<_$CategoryAnalyticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
