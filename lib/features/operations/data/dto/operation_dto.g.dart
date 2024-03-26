// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OperationDTOImpl _$$OperationDTOImplFromJson(Map<String, dynamic> json) =>
    _$OperationDTOImpl(
      id: json['id'] as int,
      incoming: json['incoming'] as bool,
      sum: (json['sum'] as num).toDouble(),
      date: json['date'] as int,
      checkId: json['checkId'] as int,
      categoryId: json['categoryId'] as int,
    );

Map<String, dynamic> _$$OperationDTOImplToJson(_$OperationDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'incoming': instance.incoming,
      'sum': instance.sum,
      'date': instance.date,
      'checkId': instance.checkId,
      'categoryId': instance.categoryId,
    };
