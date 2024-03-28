// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_operation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewOperationDTOImpl _$$NewOperationDTOImplFromJson(
  Map<String, dynamic> json,
) =>
    _$NewOperationDTOImpl(
      incoming: json['incoming'] as bool? ?? false,
      sum: (json['sum'] as num?)?.toDouble() ?? 0.0,
      date: json['date'] as int?,
      checkId: json['checkId'] as int? ?? 1,
      categoryId: json['categoryId'] as int?,
    );

Map<String, dynamic> _$$NewOperationDTOImplToJson(
  _$NewOperationDTOImpl instance,
) =>
    <String, dynamic>{
      'incoming': instance.incoming,
      'sum': instance.sum,
      'date': instance.date,
      'checkId': instance.checkId,
      'categoryId': instance.categoryId,
    };
