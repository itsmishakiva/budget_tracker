// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDTOImpl _$$CategoryDTOImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDTOImpl(
      id: json['id'] as int,
      isIncome: json['isIncome'] as bool,
      title: json['title'] as String,
      icon: json['icon'] as String,
    );

Map<String, dynamic> _$$CategoryDTOImplToJson(_$CategoryDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isIncome': instance.isIncome,
      'title': instance.title,
      'icon': instance.icon,
    };
