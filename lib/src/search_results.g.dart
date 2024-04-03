// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EntityResults _$EntityResultsFromJson(Map<String, dynamic> json) =>
    EntityResults(
      pages: json['pages'] as int,
      items: json['items'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => EntityObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      aggregations: json['aggregations'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$EntityResultsToJson(EntityResults instance) =>
    <String, dynamic>{
      'pages': instance.pages,
      'items': instance.items,
      'results': instance.results,
      'aggregations': instance.aggregations,
    };

EntityHistoryResults _$EntityHistoryResultsFromJson(
        Map<String, dynamic> json) =>
    EntityHistoryResults(
      pages: json['pages'] as int,
      items: json['items'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => EntityHistoryObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      aggregations: json['aggregations'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$EntityHistoryResultsToJson(
        EntityHistoryResults instance) =>
    <String, dynamic>{
      'pages': instance.pages,
      'items': instance.items,
      'results': instance.results,
      'aggregations': instance.aggregations,
    };

CommentResults _$CommentResultsFromJson(Map<String, dynamic> json) =>
    CommentResults(
      pages: json['pages'] as int,
      items: json['items'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => CommentObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      aggregations: json['aggregations'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$CommentResultsToJson(CommentResults instance) =>
    <String, dynamic>{
      'pages': instance.pages,
      'items': instance.items,
      'results': instance.results,
      'aggregations': instance.aggregations,
    };

EntityObject _$EntityObjectFromJson(Map<String, dynamic> json) => EntityObject(
      id: json['id'] as String,
      timestamp: json['@timestamp'] as String,
      lastSeen: json['lastSeen'] as String,
      type: json['type'] as String,
      reputation: json['reputation'] as int,
      bestReputation: json['bestReputation'] as int,
      worstReputation: json['worstReputation'] as int,
      accuracy: json['accuracy'] as int,
      attributes: json['attributes'] as Map<String, dynamic>,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      visibleBy: (json['visibleBy'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$EntityObjectToJson(EntityObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      '@timestamp': instance.timestamp,
      'lastSeen': instance.lastSeen,
      'type': instance.type,
      'reputation': instance.reputation,
      'bestReputation': instance.bestReputation,
      'worstReputation': instance.worstReputation,
      'accuracy': instance.accuracy,
      'attributes': instance.attributes,
      'tags': instance.tags,
      'visibleBy': instance.visibleBy,
    };

EntityHistoryObject _$EntityHistoryObjectFromJson(Map<String, dynamic> json) =>
    EntityHistoryObject(
      id: json['id'] as String,
      timestamp: json['@timestamp'] as String,
      entityID: json['entityID'] as String,
      type: json['type'] as String,
      userID: json['userID'] as String,
      reputation: json['reputation'] as int,
      attributes: json['attributes'] as Map<String, dynamic>,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      visibleBy: (json['visibleBy'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$EntityHistoryObjectToJson(
        EntityHistoryObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      '@timestamp': instance.timestamp,
      'entityID': instance.entityID,
      'type': instance.type,
      'userID': instance.userID,
      'reputation': instance.reputation,
      'attributes': instance.attributes,
      'tags': instance.tags,
      'visibleBy': instance.visibleBy,
    };

CommentObject _$CommentObjectFromJson(Map<String, dynamic> json) =>
    CommentObject(
      id: json['id'] as String,
      timestamp: json['@timestamp'] as String,
      entityID: json['entityID'] as String,
      comment: json['comment'] as String,
      userID: json['userID'] as String,
      parentID: json['parentID'] as String?,
      visibleBy: (json['visibleBy'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$CommentObjectToJson(CommentObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      '@timestamp': instance.timestamp,
      'entityID': instance.entityID,
      'comment': instance.comment,
      'userID': instance.userID,
      'parentID': instance.parentID,
      'visibleBy': instance.visibleBy,
    };
