// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckDTOImpl _$$CheckDTOImplFromJson(Map<String, dynamic> json) =>
    _$CheckDTOImpl(
      id: json['id'] as int,
      sum: (json['sum'] as num).toDouble(),
      outcomingSum: (json['outcomingSum'] as num).toDouble(),
      incomingSum: (json['incomingSum'] as num).toDouble(),
    );

Map<String, dynamic> _$$CheckDTOImplToJson(_$CheckDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sum': instance.sum,
      'outcomingSum': instance.outcomingSum,
      'incomingSum': instance.incomingSum,
    };
