// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Analytics {
  List<Bar> get bars => throw _privateConstructorUsedError;
  List<CategoryAnalytics> get categories => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnalyticsCopyWith<Analytics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsCopyWith<$Res> {
  factory $AnalyticsCopyWith(Analytics value, $Res Function(Analytics) then) =
      _$AnalyticsCopyWithImpl<$Res, Analytics>;
  @useResult
  $Res call({List<Bar> bars, List<CategoryAnalytics> categories});
}

/// @nodoc
class _$AnalyticsCopyWithImpl<$Res, $Val extends Analytics>
    implements $AnalyticsCopyWith<$Res> {
  _$AnalyticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bars = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      bars: null == bars
          ? _value.bars
          : bars // ignore: cast_nullable_to_non_nullable
              as List<Bar>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryAnalytics>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticsrImplCopyWith<$Res>
    implements $AnalyticsCopyWith<$Res> {
  factory _$$AnalyticsrImplCopyWith(
          _$AnalyticsrImpl value, $Res Function(_$AnalyticsrImpl) then) =
      __$$AnalyticsrImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Bar> bars, List<CategoryAnalytics> categories});
}

/// @nodoc
class __$$AnalyticsrImplCopyWithImpl<$Res>
    extends _$AnalyticsCopyWithImpl<$Res, _$AnalyticsrImpl>
    implements _$$AnalyticsrImplCopyWith<$Res> {
  __$$AnalyticsrImplCopyWithImpl(
      _$AnalyticsrImpl _value, $Res Function(_$AnalyticsrImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bars = null,
    Object? categories = null,
  }) {
    return _then(_$AnalyticsrImpl(
      bars: null == bars
          ? _value._bars
          : bars // ignore: cast_nullable_to_non_nullable
              as List<Bar>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryAnalytics>,
    ));
  }
}

/// @nodoc

class _$AnalyticsrImpl with DiagnosticableTreeMixin implements _Analyticsr {
  _$AnalyticsrImpl(
      {required final List<Bar> bars,
      required final List<CategoryAnalytics> categories})
      : _bars = bars,
        _categories = categories;

  final List<Bar> _bars;
  @override
  List<Bar> get bars {
    if (_bars is EqualUnmodifiableListView) return _bars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bars);
  }

  final List<CategoryAnalytics> _categories;
  @override
  List<CategoryAnalytics> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Analytics(bars: $bars, categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Analytics'))
      ..add(DiagnosticsProperty('bars', bars))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticsrImpl &&
            const DeepCollectionEquality().equals(other._bars, _bars) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bars),
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticsrImplCopyWith<_$AnalyticsrImpl> get copyWith =>
      __$$AnalyticsrImplCopyWithImpl<_$AnalyticsrImpl>(this, _$identity);
}

abstract class _Analyticsr implements Analytics {
  factory _Analyticsr(
      {required final List<Bar> bars,
      required final List<CategoryAnalytics> categories}) = _$AnalyticsrImpl;

  @override
  List<Bar> get bars;
  @override
  List<CategoryAnalytics> get categories;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticsrImplCopyWith<_$AnalyticsrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
