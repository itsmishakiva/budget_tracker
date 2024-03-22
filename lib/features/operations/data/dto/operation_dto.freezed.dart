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
  bool get income => throw _privateConstructorUsedError;
  String get sum => throw _privateConstructorUsedError;
  int get date => throw _privateConstructorUsedError;
  Cat.Category get category => throw _privateConstructorUsedError;

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
  $Res call({int id, bool income, String sum, int date, Cat.Category category});

  $CategoryCopyWith<$Res> get category;
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
    Object? income = null,
    Object? sum = null,
    Object? date = null,
    Object? category = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as bool,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Cat.Category,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
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
  $Res call({int id, bool income, String sum, int date, Cat.Category category});

  @override
  $CategoryCopyWith<$Res> get category;
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
    Object? income = null,
    Object? sum = null,
    Object? date = null,
    Object? category = null,
  }) {
    return _then(_$OperationDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as bool,
      sum: null == sum
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Cat.Category,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OperationDTOImpl with DiagnosticableTreeMixin implements _OperationDTO {
  _$OperationDTOImpl(
      {required this.id,
      required this.income,
      required this.sum,
      required this.date,
      required this.category});

  factory _$OperationDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$OperationDTOImplFromJson(json);

  @override
  final int id;
  @override
  final bool income;
  @override
  final String sum;
  @override
  final int date;
  @override
  final Cat.Category category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OperationDTO(id: $id, income: $income, sum: $sum, date: $date, category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OperationDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('income', income))
      ..add(DiagnosticsProperty('sum', sum))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.income, income) || other.income == income) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, income, sum, date, category);

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
      required final bool income,
      required final String sum,
      required final int date,
      required final Cat.Category category}) = _$OperationDTOImpl;

  factory _OperationDTO.fromJson(Map<String, dynamic> json) =
      _$OperationDTOImpl.fromJson;

  @override
  int get id;
  @override
  bool get income;
  @override
  String get sum;
  @override
  int get date;
  @override
  Cat.Category get category;
  @override
  @JsonKey(ignore: true)
  _$$OperationDTOImplCopyWith<_$OperationDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
