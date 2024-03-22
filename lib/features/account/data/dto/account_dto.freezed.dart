// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountDTO _$AccountDTOFromJson(Map<String, dynamic> json) {
  return _AccountDTO.fromJson(json);
}

/// @nodoc
mixin _$AccountDTO {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get sum => throw _privateConstructorUsedError;
  String get expenses => throw _privateConstructorUsedError;
  String get income => throw _privateConstructorUsedError;
  String? get currencySymbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountDTOCopyWith<AccountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountDTOCopyWith<$Res> {
  factory $AccountDTOCopyWith(
          AccountDTO value, $Res Function(AccountDTO) then) =
      _$AccountDTOCopyWithImpl<$Res, AccountDTO>;
  @useResult
  $Res call(
      {int id,
      String title,
      String sum,
      String expenses,
      String income,
      String? currencySymbol});
}

/// @nodoc
class _$AccountDTOCopyWithImpl<$Res, $Val extends AccountDTO>
    implements $AccountDTOCopyWith<$Res> {
  _$AccountDTOCopyWithImpl(this._value, this._then);

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
    Object? expenses = null,
    Object? income = null,
    Object? currencySymbol = freezed,
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
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as String,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as String,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountDTOImplCopyWith<$Res>
    implements $AccountDTOCopyWith<$Res> {
  factory _$$AccountDTOImplCopyWith(
          _$AccountDTOImpl value, $Res Function(_$AccountDTOImpl) then) =
      __$$AccountDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String sum,
      String expenses,
      String income,
      String? currencySymbol});
}

/// @nodoc
class __$$AccountDTOImplCopyWithImpl<$Res>
    extends _$AccountDTOCopyWithImpl<$Res, _$AccountDTOImpl>
    implements _$$AccountDTOImplCopyWith<$Res> {
  __$$AccountDTOImplCopyWithImpl(
      _$AccountDTOImpl _value, $Res Function(_$AccountDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? sum = null,
    Object? expenses = null,
    Object? income = null,
    Object? currencySymbol = freezed,
  }) {
    return _then(_$AccountDTOImpl(
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
      expenses: null == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as String,
      income: null == income
          ? _value.income
          : income // ignore: cast_nullable_to_non_nullable
              as String,
      currencySymbol: freezed == currencySymbol
          ? _value.currencySymbol
          : currencySymbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AccountDTOImpl with DiagnosticableTreeMixin implements _AccountDTO {
  _$AccountDTOImpl(
      {required this.id,
      required this.title,
      required this.sum,
      required this.expenses,
      required this.income,
      this.currencySymbol});

  factory _$AccountDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountDTOImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String sum;
  @override
  final String expenses;
  @override
  final String income;
  @override
  final String? currencySymbol;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AccountDTO(id: $id, title: $title, sum: $sum, expenses: $expenses, income: $income, currencySymbol: $currencySymbol)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AccountDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('sum', sum))
      ..add(DiagnosticsProperty('expenses', expenses))
      ..add(DiagnosticsProperty('income', income))
      ..add(DiagnosticsProperty('currencySymbol', currencySymbol));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.sum, sum) || other.sum == sum) &&
            (identical(other.expenses, expenses) ||
                other.expenses == expenses) &&
            (identical(other.income, income) || other.income == income) &&
            (identical(other.currencySymbol, currencySymbol) ||
                other.currencySymbol == currencySymbol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, sum, expenses, income, currencySymbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountDTOImplCopyWith<_$AccountDTOImpl> get copyWith =>
      __$$AccountDTOImplCopyWithImpl<_$AccountDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountDTOImplToJson(
      this,
    );
  }
}

abstract class _AccountDTO implements AccountDTO {
  factory _AccountDTO(
      {required final int id,
      required final String title,
      required final String sum,
      required final String expenses,
      required final String income,
      final String? currencySymbol}) = _$AccountDTOImpl;

  factory _AccountDTO.fromJson(Map<String, dynamic> json) =
      _$AccountDTOImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get sum;
  @override
  String get expenses;
  @override
  String get income;
  @override
  String? get currencySymbol;
  @override
  @JsonKey(ignore: true)
  _$$AccountDTOImplCopyWith<_$AccountDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
