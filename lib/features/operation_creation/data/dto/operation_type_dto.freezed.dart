// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation_type_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OperationTypeDTO _$OperationTypeDTOFromJson(Map<String, dynamic> json) {
  return _OperationTypeDTO.fromJson(json);
}

/// @nodoc
mixin _$OperationTypeDTO {
  int get id => throw _privateConstructorUsedError;
  bool get isIncome => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get categoryIconAsset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationTypeDTOCopyWith<OperationTypeDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationTypeDTOCopyWith<$Res> {
  factory $OperationTypeDTOCopyWith(
          OperationTypeDTO value, $Res Function(OperationTypeDTO) then) =
      _$OperationTypeDTOCopyWithImpl<$Res, OperationTypeDTO>;
  @useResult
  $Res call({int id, bool isIncome, String title, String categoryIconAsset});
}

/// @nodoc
class _$OperationTypeDTOCopyWithImpl<$Res, $Val extends OperationTypeDTO>
    implements $OperationTypeDTOCopyWith<$Res> {
  _$OperationTypeDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isIncome = null,
    Object? title = null,
    Object? categoryIconAsset = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIconAsset: null == categoryIconAsset
          ? _value.categoryIconAsset
          : categoryIconAsset // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OperationTypeDTOImplCopyWith<$Res>
    implements $OperationTypeDTOCopyWith<$Res> {
  factory _$$OperationTypeDTOImplCopyWith(_$OperationTypeDTOImpl value,
          $Res Function(_$OperationTypeDTOImpl) then) =
      __$$OperationTypeDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, bool isIncome, String title, String categoryIconAsset});
}

/// @nodoc
class __$$OperationTypeDTOImplCopyWithImpl<$Res>
    extends _$OperationTypeDTOCopyWithImpl<$Res, _$OperationTypeDTOImpl>
    implements _$$OperationTypeDTOImplCopyWith<$Res> {
  __$$OperationTypeDTOImplCopyWithImpl(_$OperationTypeDTOImpl _value,
      $Res Function(_$OperationTypeDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isIncome = null,
    Object? title = null,
    Object? categoryIconAsset = null,
  }) {
    return _then(_$OperationTypeDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      isIncome: null == isIncome
          ? _value.isIncome
          : isIncome // ignore: cast_nullable_to_non_nullable
              as bool,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIconAsset: null == categoryIconAsset
          ? _value.categoryIconAsset
          : categoryIconAsset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperationTypeDTOImpl
    with DiagnosticableTreeMixin
    implements _OperationTypeDTO {
  _$OperationTypeDTOImpl(
      {required this.id,
      required this.isIncome,
      required this.title,
      required this.categoryIconAsset});

  factory _$OperationTypeDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OperationTypeDTOImplFromJson(json);

  @override
  final int id;
  @override
  final bool isIncome;
  @override
  final String title;
  @override
  final String categoryIconAsset;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OperationTypeDTO(id: $id, isIncome: $isIncome, title: $title, categoryIconAsset: $categoryIconAsset)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OperationTypeDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('isIncome', isIncome))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('categoryIconAsset', categoryIconAsset));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationTypeDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isIncome, isIncome) ||
                other.isIncome == isIncome) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.categoryIconAsset, categoryIconAsset) ||
                other.categoryIconAsset == categoryIconAsset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, isIncome, title, categoryIconAsset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationTypeDTOImplCopyWith<_$OperationTypeDTOImpl> get copyWith =>
      __$$OperationTypeDTOImplCopyWithImpl<_$OperationTypeDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperationTypeDTOImplToJson(
      this,
    );
  }
}

abstract class _OperationTypeDTO implements OperationTypeDTO {
  factory _OperationTypeDTO(
      {required final int id,
      required final bool isIncome,
      required final String title,
      required final String categoryIconAsset}) = _$OperationTypeDTOImpl;

  factory _OperationTypeDTO.fromJson(Map<String, dynamic> json) =
      _$OperationTypeDTOImpl.fromJson;

  @override
  int get id;
  @override
  bool get isIncome;
  @override
  String get title;
  @override
  String get categoryIconAsset;
  @override
  @JsonKey(ignore: true)
  _$$OperationTypeDTOImplCopyWith<_$OperationTypeDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
