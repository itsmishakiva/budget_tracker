// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OperationTypeDTOImpl _$$OperationTypeDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$OperationTypeDTOImpl(
      id: json['id'] as int,
      isIncome: json['isIncome'] as bool,
      title: json['title'] as String,
      categoryIconAsset: json['categoryIconAsset'] as String,
    );

Map<String, dynamic> _$$OperationTypeDTOImplToJson(
        _$OperationTypeDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isIncome': instance.isIncome,
      'title': instance.title,
      'categoryIconAsset': instance.categoryIconAsset,
    };
