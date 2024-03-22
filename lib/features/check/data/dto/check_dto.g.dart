// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckDTOImpl _$$CheckDTOImplFromJson(Map<String, dynamic> json) =>
    _$CheckDTOImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      sum: (json['sum'] as num).toDouble(),
      expenses: (json['expenses'] as num).toDouble(),
      income: (json['income'] as num).toDouble(),
    );

Map<String, dynamic> _$$CheckDTOImplToJson(_$CheckDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sum': instance.sum,
      'expenses': instance.expenses,
      'income': instance.income,
    };
