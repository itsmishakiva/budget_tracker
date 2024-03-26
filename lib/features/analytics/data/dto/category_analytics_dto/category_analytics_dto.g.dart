// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_analytics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryAnalyticsDTOImpl _$$CategoryAnalyticsDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryAnalyticsDTOImpl(
      category: CategoryDTO.fromJson(json['category'] as Map<String, dynamic>),
      sum: (json['sum'] as num).toDouble(),
    );

Map<String, dynamic> _$$CategoryAnalyticsDTOImplToJson(
        _$CategoryAnalyticsDTOImpl instance) =>
    <String, dynamic>{
      'category': instance.category,
      'sum': instance.sum,
    };
