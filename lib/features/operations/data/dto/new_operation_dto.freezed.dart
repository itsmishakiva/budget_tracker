// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_operation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NewOperationDTO _$NewOperationDTOFromJson(Map<String, dynamic> json) {
  return _NewOperationDTO.fromJson(json);
}

/// @nodoc
mixin _$NewOperationDTO {
  int? get id => throw _privateConstructorUsedError;
  bool get incoming => throw _privateConstructorUsedError;
  double get sum => throw _privateConstructorUsedError;
  int? get date => throw _privateConstructorUsedError;
  int get checkId => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewOperationDTOCopyWith<NewOperationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewOperationDTOCopyWith<$Res> {
  factory $NewOperationDTOCopyWith(
          NewOperationDTO value, $Res Function(NewOperationDTO) then) =
      _$NewOperationDTOCopyWithImpl<$Res, NewOperationDTO>;
  @useResult
  $Res call(
      {int? id,
      bool incoming,
      double sum,
      int? date,
      int checkId,
      int? categoryId});
}

/// @nodoc
class _$NewOperationDTOCopyWithImpl<$Res, $Val extends NewOperationDTO>
    implements $NewOperationDTOCopyWith<$Res> {
  _$NewOperationDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? incoming = null,
    Object? sum = null,
    Object? date = freezed,
    Object? checkId = null,
    Object? categoryId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      incoming: null == incoming
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as bool,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      checkId: null == checkId
          ? _value.checkId
          : checkId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewOperationDTOImplCopyWith<$Res>
    implements $NewOperationDTOCopyWith<$Res> {
  factory _$$NewOperationDTOImplCopyWith(_$NewOperationDTOImpl value,
          $Res Function(_$NewOperationDTOImpl) then) =
      __$$NewOperationDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      bool incoming,
      double sum,
      int? date,
      int checkId,
      int? categoryId});
}

/// @nodoc
class __$$NewOperationDTOImplCopyWithImpl<$Res>
    extends _$NewOperationDTOCopyWithImpl<$Res, _$NewOperationDTOImpl>
    implements _$$NewOperationDTOImplCopyWith<$Res> {
  __$$NewOperationDTOImplCopyWithImpl(
      _$NewOperationDTOImpl _value, $Res Function(_$NewOperationDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? incoming = null,
    Object? sum = null,
    Object? date = freezed,
    Object? checkId = null,
    Object? categoryId = freezed,
  }) {
    return _then(_$NewOperationDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      incoming: null == incoming
          ? _value.incoming
          : incoming // ignore: cast_nullable_to_non_nullable
              as bool,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as double,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int?,
      checkId: null == checkId
          ? _value.checkId
          : checkId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewOperationDTOImpl
    with DiagnosticableTreeMixin
    implements _NewOperationDTO {
  _$NewOperationDTOImpl(
      {this.id,
      this.incoming = false,
      this.sum = 0.0,
      this.date,
      this.checkId = 1,
      this.categoryId});

  factory _$NewOperationDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewOperationDTOImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final bool incoming;
  @override
  @JsonKey()
  final double sum;
  @override
  final int? date;
  @override
  @JsonKey()
  final int checkId;
  @override
  final int? categoryId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewOperationDTO(id: $id, incoming: $incoming, sum: $sum, date: $date, checkId: $checkId, categoryId: $categoryId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewOperationDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('incoming', incoming))
      ..add(DiagnosticsProperty('sum', sum))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('checkId', checkId))
      ..add(DiagnosticsProperty('categoryId', categoryId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewOperationDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.incoming, incoming) ||
                other.incoming == incoming) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.checkId, checkId) || other.checkId == checkId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, incoming, sum, date, checkId, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewOperationDTOImplCopyWith<_$NewOperationDTOImpl> get copyWith =>
      __$$NewOperationDTOImplCopyWithImpl<_$NewOperationDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewOperationDTOImplToJson(
      this,
    );
  }
}

abstract class _NewOperationDTO implements NewOperationDTO {
  factory _NewOperationDTO(
      {final int? id,
      final bool incoming,
      final double sum,
      final int? date,
      final int checkId,
      final int? categoryId}) = _$NewOperationDTOImpl;

  factory _NewOperationDTO.fromJson(Map<String, dynamic> json) =
      _$NewOperationDTOImpl.fromJson;

  @override
  int? get id;
  @override
  bool get incoming;
  @override
  double get sum;
  @override
  int? get date;
  @override
  int get checkId;
  @override
  int? get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$NewOperationDTOImplCopyWith<_$NewOperationDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
