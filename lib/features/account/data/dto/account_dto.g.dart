// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountDTOImpl _$$AccountDTOImplFromJson(Map<String, dynamic> json) =>
    _$AccountDTOImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      sum: json['sum'] as String,
      expenses: json['expenses'] as String,
      income: json['income'] as String,
    );

Map<String, dynamic> _$$AccountDTOImplToJson(_$AccountDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sum': instance.sum,
      'expenses': instance.expenses,
      'income': instance.income,
    };
