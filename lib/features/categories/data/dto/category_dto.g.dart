// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryDTOImpl _$$CategoryDTOImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDTOImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      emoji: json['emoji'] as String,
      color: json['color'] as int,
    );

Map<String, dynamic> _$$CategoryDTOImplToJson(_$CategoryDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'emoji': instance.emoji,
      'color': instance.color,
    };
