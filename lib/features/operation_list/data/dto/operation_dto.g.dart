// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OperationDTOImpl _$$OperationDTOImplFromJson(Map<String, dynamic> json) =>
    _$OperationDTOImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      sum: json['sum'] as String,
      companyName: json['companyName'] as String?,
    );

Map<String, dynamic> _$$OperationDTOImplToJson(_$OperationDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'sum': instance.sum,
      'companyName': instance.companyName,
    };
