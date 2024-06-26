// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OperationDTO _$OperationDTOFromJson(Map<String, dynamic> json) {
  return _OperationDTO.fromJson(json);
}

/// @nodoc
mixin _$OperationDTO {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get sum => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get companyAssetUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationDTOCopyWith<OperationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationDTOCopyWith<$Res> {
  factory $OperationDTOCopyWith(
          OperationDTO value, $Res Function(OperationDTO) then) =
      _$OperationDTOCopyWithImpl<$Res, OperationDTO>;
  @useResult
  $Res call(
      {int id,
      String title,
      String sum,
      String? description,
      String? companyName,
      String? companyAssetUrl});
}

/// @nodoc
class _$OperationDTOCopyWithImpl<$Res, $Val extends OperationDTO>
    implements $OperationDTOCopyWith<$Res> {
  _$OperationDTOCopyWithImpl(this._value, this._then);

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
    Object? description = freezed,
    Object? companyName = freezed,
    Object? companyAssetUrl = freezed,
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
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyAssetUrl: freezed == companyAssetUrl
          ? _value.companyAssetUrl
          : companyAssetUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OperationDTOImplCopyWith<$Res>
    implements $OperationDTOCopyWith<$Res> {
  factory _$$OperationDTOImplCopyWith(
          _$OperationDTOImpl value, $Res Function(_$OperationDTOImpl) then) =
      __$$OperationDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String sum,
      String? description,
      String? companyName,
      String? companyAssetUrl});
}

/// @nodoc
class __$$OperationDTOImplCopyWithImpl<$Res>
    extends _$OperationDTOCopyWithImpl<$Res, _$OperationDTOImpl>
    implements _$$OperationDTOImplCopyWith<$Res> {
  __$$OperationDTOImplCopyWithImpl(
      _$OperationDTOImpl _value, $Res Function(_$OperationDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sum = null,
    Object? description = freezed,
    Object? companyName = freezed,
    Object? companyAssetUrl = freezed,
  }) {
    return _then(_$OperationDTOImpl(
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
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      companyAssetUrl: freezed == companyAssetUrl
          ? _value.companyAssetUrl
          : companyAssetUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperationDTOImpl with DiagnosticableTreeMixin implements _OperationDTO {
  _$OperationDTOImpl(
      {required this.id,
      required this.title,
      required this.sum,
      this.description,
      this.companyName,
      this.companyAssetUrl});

  factory _$OperationDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OperationDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String sum;
  @override
  final String? description;
  @override
  final String? companyName;
  @override
  final String? companyAssetUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OperationDTO(id: $id, title: $title, sum: $sum, description: $description, companyName: $companyName, companyAssetUrl: $companyAssetUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OperationDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('sum', sum))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('companyName', companyName))
      ..add(DiagnosticsProperty('companyAssetUrl', companyAssetUrl));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.companyAssetUrl, companyAssetUrl) ||
                other.companyAssetUrl == companyAssetUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, sum, description, companyName, companyAssetUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationDTOImplCopyWith<_$OperationDTOImpl> get copyWith =>
      __$$OperationDTOImplCopyWithImpl<_$OperationDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OperationDTOImplToJson(
      this,
    );
  }
}

abstract class _OperationDTO implements OperationDTO {
  factory _OperationDTO(
      {required final int id,
      required final String title,
      required final String sum,
      final String? description,
      final String? companyName,
      final String? companyAssetUrl}) = _$OperationDTOImpl;

  factory _OperationDTO.fromJson(Map<String, dynamic> json) =
      _$OperationDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get sum;
  @override
  String? get description;
  @override
  String? get companyName;
  @override
  String? get companyAssetUrl;
  @override
  @JsonKey(ignore: true)
  _$$OperationDTOImplCopyWith<_$OperationDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
