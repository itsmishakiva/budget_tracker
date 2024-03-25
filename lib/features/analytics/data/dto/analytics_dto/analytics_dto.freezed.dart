// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'analytics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AnalyticsDTO _$AnalyticsDTOFromJson(Map<String, dynamic> json) {
  return _AnalyticDTO.fromJson(json);
}

/// @nodoc
mixin _$AnalyticsDTO {
  List<BarDTO> get bars => throw _privateConstructorUsedError;
  List<CategoryAnalyticsDTO> get categories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnalyticsDTOCopyWith<AnalyticsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnalyticsDTOCopyWith<$Res> {
  factory $AnalyticsDTOCopyWith(
          AnalyticsDTO value, $Res Function(AnalyticsDTO) then) =
      _$AnalyticsDTOCopyWithImpl<$Res, AnalyticsDTO>;
  @useResult
  $Res call({List<BarDTO> bars, List<CategoryAnalyticsDTO> categories});
}

/// @nodoc
class _$AnalyticsDTOCopyWithImpl<$Res, $Val extends AnalyticsDTO>
    implements $AnalyticsDTOCopyWith<$Res> {
  _$AnalyticsDTOCopyWithImpl(this._value, this._then);

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
              as List<BarDTO>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryAnalyticsDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnalyticDTOImplCopyWith<$Res>
    implements $AnalyticsDTOCopyWith<$Res> {
  factory _$$AnalyticDTOImplCopyWith(
          _$AnalyticDTOImpl value, $Res Function(_$AnalyticDTOImpl) then) =
      __$$AnalyticDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BarDTO> bars, List<CategoryAnalyticsDTO> categories});
}

/// @nodoc
class __$$AnalyticDTOImplCopyWithImpl<$Res>
    extends _$AnalyticsDTOCopyWithImpl<$Res, _$AnalyticDTOImpl>
    implements _$$AnalyticDTOImplCopyWith<$Res> {
  __$$AnalyticDTOImplCopyWithImpl(
      _$AnalyticDTOImpl _value, $Res Function(_$AnalyticDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bars = null,
    Object? categories = null,
  }) {
    return _then(_$AnalyticDTOImpl(
      bars: null == bars
          ? _value._bars
          : bars // ignore: cast_nullable_to_non_nullable
              as List<BarDTO>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryAnalyticsDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnalyticDTOImpl with DiagnosticableTreeMixin implements _AnalyticDTO {
  _$AnalyticDTOImpl(
      {required final List<BarDTO> bars,
      required final List<CategoryAnalyticsDTO> categories})
      : _bars = bars,
        _categories = categories;

  factory _$AnalyticDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnalyticDTOImplFromJson(json);

  final List<BarDTO> _bars;
  @override
  List<BarDTO> get bars {
    if (_bars is EqualUnmodifiableListView) return _bars;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bars);
  }

  final List<CategoryAnalyticsDTO> _categories;
  @override
  List<CategoryAnalyticsDTO> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnalyticsDTO(bars: $bars, categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnalyticsDTO'))
      ..add(DiagnosticsProperty('bars', bars))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnalyticDTOImpl &&
            const DeepCollectionEquality().equals(other._bars, _bars) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bars),
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AnalyticDTOImplCopyWith<_$AnalyticDTOImpl> get copyWith =>
      __$$AnalyticDTOImplCopyWithImpl<_$AnalyticDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnalyticDTOImplToJson(
      this,
    );
  }
}

abstract class _AnalyticDTO implements AnalyticsDTO {
  factory _AnalyticDTO(
          {required final List<BarDTO> bars,
          required final List<CategoryAnalyticsDTO> categories}) =
      _$AnalyticDTOImpl;

  factory _AnalyticDTO.fromJson(Map<String, dynamic> json) =
      _$AnalyticDTOImpl.fromJson;

  @override
  List<BarDTO> get bars;
  @override
  List<CategoryAnalyticsDTO> get categories;
  @override
  @JsonKey(ignore: true)
  _$$AnalyticDTOImplCopyWith<_$AnalyticDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
