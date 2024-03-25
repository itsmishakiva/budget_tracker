// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analytics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnalyticDTOImpl _$$AnalyticDTOImplFromJson(Map<String, dynamic> json) =>
    _$AnalyticDTOImpl(
      bars: (json['bars'] as List<dynamic>)
          .map((e) => BarDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryAnalyticsDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnalyticDTOImplToJson(_$AnalyticDTOImpl instance) =>
    <String, dynamic>{
      'bars': instance.bars,
      'categories': instance.categories,
    };
