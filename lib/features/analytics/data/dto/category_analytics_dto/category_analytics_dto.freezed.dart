// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_analytics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryAnalyticsDTO _$CategoryAnalyticsDTOFromJson(Map<String, dynamic> json) {
  return _CategoryAnalyticsDTO.fromJson(json);
}

/// @nodoc
mixin _$CategoryAnalyticsDTO {
  CategoryDTO get category => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryAnalyticsDTOCopyWith<CategoryAnalyticsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryAnalyticsDTOCopyWith<$Res> {
  factory $CategoryAnalyticsDTOCopyWith(CategoryAnalyticsDTO value,
          $Res Function(CategoryAnalyticsDTO) then) =
      _$CategoryAnalyticsDTOCopyWithImpl<$Res, CategoryAnalyticsDTO>;
  @useResult
  $Res call({CategoryDTO category, double sum});

  $CategoryDTOCopyWith<$Res> get category;
}

/// @nodoc
class _$CategoryAnalyticsDTOCopyWithImpl<$Res,
        $Val extends CategoryAnalyticsDTO>
    implements $CategoryAnalyticsDTOCopyWith<$Res> {
  _$CategoryAnalyticsDTOCopyWithImpl(this._value, this._then);

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
              as CategoryDTO,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDTOCopyWith<$Res> get category {
    return $CategoryDTOCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryAnalyticsDTOImplCopyWith<$Res>
    implements $CategoryAnalyticsDTOCopyWith<$Res> {
  factory _$$CategoryAnalyticsDTOImplCopyWith(_$CategoryAnalyticsDTOImpl value,
          $Res Function(_$CategoryAnalyticsDTOImpl) then) =
      __$$CategoryAnalyticsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryDTO category, double sum});

  @override
  $CategoryDTOCopyWith<$Res> get category;
}

/// @nodoc
class __$$CategoryAnalyticsDTOImplCopyWithImpl<$Res>
    extends _$CategoryAnalyticsDTOCopyWithImpl<$Res, _$CategoryAnalyticsDTOImpl>
    implements _$$CategoryAnalyticsDTOImplCopyWith<$Res> {
  __$$CategoryAnalyticsDTOImplCopyWithImpl(_$CategoryAnalyticsDTOImpl _value,
      $Res Function(_$CategoryAnalyticsDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? sum = null,
  }) {
    return _then(_$CategoryAnalyticsDTOImpl(
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDTO,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryAnalyticsDTOImpl implements _CategoryAnalyticsDTO {
  _$CategoryAnalyticsDTOImpl({required this.category, required this.sum});

  factory _$CategoryAnalyticsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryAnalyticsDTOImplFromJson(json);

  @override
  final CategoryDTO category;
  @override
  final double sum;

  @override
  String toString() {
    return 'CategoryAnalyticsDTO(category: $category, sum: $sum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryAnalyticsDTOImpl &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.sum, sum) || other.sum == sum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, category, sum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryAnalyticsDTOImplCopyWith<_$CategoryAnalyticsDTOImpl>
      get copyWith =>
          __$$CategoryAnalyticsDTOImplCopyWithImpl<_$CategoryAnalyticsDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryAnalyticsDTOImplToJson(
      this,
    );
  }
}

abstract class _CategoryAnalyticsDTO implements CategoryAnalyticsDTO {
  factory _CategoryAnalyticsDTO(
      {required final CategoryDTO category,
      required final double sum}) = _$CategoryAnalyticsDTOImpl;

  factory _CategoryAnalyticsDTO.fromJson(Map<String, dynamic> json) =
      _$CategoryAnalyticsDTOImpl.fromJson;

  @override
  CategoryDTO get category;
  @override
  double get sum;
  @override
  @JsonKey(ignore: true)
  _$$CategoryAnalyticsDTOImplCopyWith<_$CategoryAnalyticsDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
