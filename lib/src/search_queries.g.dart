// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleSearch _$SimpleSearchFromJson(Map<String, dynamic> json) => SimpleSearch(
      query: json['query'] as String,
      reputation: json['reputation'] as int?,
      accuracy: json['accuracy'] as int?,
      source: json['source'] == null
          ? null
          : Source.fromJson(json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SimpleSearchToJson(SimpleSearch instance) =>
    <String, dynamic>{
      'query': instance.query,
      'reputation': instance.reputation,
      'accuracy': instance.accuracy,
      'source': instance.source,
    };

Source _$SourceFromJson(Map<String, dynamic> json) => Source(
      includes:
          (json['includes'] as List<dynamic>).map((e) => e as String).toList(),
      excludes:
          (json['excludes'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'includes': instance.includes,
      'excludes': instance.excludes,
    };
