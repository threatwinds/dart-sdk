// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Details _$DetailsFromJson(Map<String, dynamic> json) => Details(
      attributes:
          Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      metadata: json['metadata'] as Map<String, dynamic>?,
      extendedMetadata: (json['extendedMetadata'] as List<dynamic>?)
          ?.map((e) => Attributes.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastAssociations: (json['lastAssociations'] as List<dynamic>?)
          ?.map((e) => Association.fromJson(e as Map<String, dynamic>))
          .toList(),
      topAssociations: (json['topAssociations'] as List<dynamic>?)
          ?.map((e) => Association.fromJson(e as Map<String, dynamic>))
          .toList(),
      significantAssociations:
          (json['significantAssociations'] as List<dynamic>?)
              ?.map((e) => Association.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$DetailsToJson(Details instance) => <String, dynamic>{
      'attributes': instance.attributes,
      'metadata': instance.metadata,
      'extendedMetadata': instance.extendedMetadata,
      'lastAssociations': instance.lastAssociations,
      'topAssociations': instance.topAssociations,
      'significantAssociations': instance.significantAssociations,
    };

Attributes _$AttributesFromJson(Map<String, dynamic> json) => Attributes(
      firstSeen: json['first_seen'] as String,
      lastSeen: json['last_seen'] as String,
      id: json['id'] as String,
      type: json['type'] as String,
      reputationScore: json['reputation_score'] as int,
      reputation: json['reputation'] as String,
      bestReputationScore: json['best_reputation_score'] as int,
      bestReputation: json['best_reputation'] as String,
      worstReputationScore: json['worst_reputation_score'] as int,
      worstReputation: json['worst_reputation'] as String,
      accuracyScore: json['accuracy_score'] as int,
      accuracy: json['accuracy'] as String,
      label: json['label'] as String,
      value: json['value'],
      description: json['description'] as String,
      tags: json['tags'] as List<dynamic>?,
    );

Map<String, dynamic> _$AttributesToJson(Attributes instance) =>
    <String, dynamic>{
      'first_seen': instance.firstSeen,
      'last_seen': instance.lastSeen,
      'id': instance.id,
      'type': instance.type,
      'reputation_score': instance.reputationScore,
      'reputation': instance.reputation,
      'best_reputation_score': instance.bestReputationScore,
      'best_reputation': instance.bestReputation,
      'worst_reputation_score': instance.worstReputationScore,
      'worst_reputation': instance.worstReputation,
      'accuracy_score': instance.accuracyScore,
      'accuracy': instance.accuracy,
      'label': instance.label,
      'value': instance.value,
      'description': instance.description,
      'tags': instance.tags,
    };

Association _$AssociationFromJson(Map<String, dynamic> json) => Association(
      firstSeen: json['first_seen'] as String,
      lastSeen: json['last_seen'] as String,
      id: json['id'] as String,
      type: json['type'] as String,
      reputationScore: json['reputation_score'] as int,
      reputation: json['reputation'] as String,
      bestReputationScore: json['best_reputation_score'] as int,
      bestReputation: json['best_reputation'] as String,
      worstReputationScore: json['worst_reputation_score'] as int,
      worstReputation: json['worst_reputation'] as String,
      accuracyScore: json['accuracy_score'] as int,
      accuracy: json['accuracy'] as String,
      label: json['label'] as String,
      value: json['value'],
      description: json['description'] as String,
      tags: json['tags'] as List<dynamic>?,
      bgCount: json['bgCount'] as int?,
      count: json['count'] as int?,
      significanceScore: (json['significanceScore'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$AssociationToJson(Association instance) =>
    <String, dynamic>{
      'first_seen': instance.firstSeen,
      'last_seen': instance.lastSeen,
      'id': instance.id,
      'type': instance.type,
      'reputation_score': instance.reputationScore,
      'reputation': instance.reputation,
      'best_reputation_score': instance.bestReputationScore,
      'best_reputation': instance.bestReputation,
      'worst_reputation_score': instance.worstReputationScore,
      'worst_reputation': instance.worstReputation,
      'accuracy_score': instance.accuracyScore,
      'accuracy': instance.accuracy,
      'label': instance.label,
      'value': instance.value,
      'description': instance.description,
      'tags': instance.tags,
      'bgCount': instance.bgCount,
      'count': instance.count,
      'significanceScore': instance.significanceScore,
    };
