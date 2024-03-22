// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'operation_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OperationType {
  int get id => throw _privateConstructorUsedError;
  bool get isIncome => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get categoryIconAsset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OperationTypeCopyWith<OperationType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationTypeCopyWith<$Res> {
  factory $OperationTypeCopyWith(
          OperationType value, $Res Function(OperationType) then) =
      _$OperationTypeCopyWithImpl<$Res, OperationType>;
  @useResult
  $Res call({int id, bool isIncome, String title, String categoryIconAsset});
}

/// @nodoc
class _$OperationTypeCopyWithImpl<$Res, $Val extends OperationType>
    implements $OperationTypeCopyWith<$Res> {
  _$OperationTypeCopyWithImpl(this._value, this._then);

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
abstract class _$$OperationTypeImplCopyWith<$Res>
    implements $OperationTypeCopyWith<$Res> {
  factory _$$OperationTypeImplCopyWith(
          _$OperationTypeImpl value, $Res Function(_$OperationTypeImpl) then) =
      __$$OperationTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, bool isIncome, String title, String categoryIconAsset});
}

/// @nodoc
class __$$OperationTypeImplCopyWithImpl<$Res>
    extends _$OperationTypeCopyWithImpl<$Res, _$OperationTypeImpl>
    implements _$$OperationTypeImplCopyWith<$Res> {
  __$$OperationTypeImplCopyWithImpl(
      _$OperationTypeImpl _value, $Res Function(_$OperationTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isIncome = null,
    Object? title = null,
    Object? categoryIconAsset = null,
  }) {
    return _then(_$OperationTypeImpl(
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

class _$OperationTypeImpl implements _OperationType {
  _$OperationTypeImpl(
      {required this.id,
      required this.isIncome,
      required this.title,
      required this.categoryIconAsset});

  @override
  final int id;
  @override
  final bool isIncome;
  @override
  final String title;
  @override
  final String categoryIconAsset;

  @override
  String toString() {
    return 'OperationType(id: $id, isIncome: $isIncome, title: $title, categoryIconAsset: $categoryIconAsset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isIncome, isIncome) ||
                other.isIncome == isIncome) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.categoryIconAsset, categoryIconAsset) ||
                other.categoryIconAsset == categoryIconAsset));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, isIncome, title, categoryIconAsset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationTypeImplCopyWith<_$OperationTypeImpl> get copyWith =>
      __$$OperationTypeImplCopyWithImpl<_$OperationTypeImpl>(this, _$identity);
}

abstract class _OperationType implements OperationType {
  factory _OperationType(
      {required final int id,
      required final bool isIncome,
      required final String title,
      required final String categoryIconAsset}) = _$OperationTypeImpl;

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
  _$$OperationTypeImplCopyWith<_$OperationTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
