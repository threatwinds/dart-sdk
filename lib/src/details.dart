library threatwinds_sdk.details;

import 'package:json_annotation/json_annotation.dart';
part 'details.g.dart';

@JsonSerializable()
class Details {
  final Attributes attributes;
  final Map<String, dynamic>? metadata;
  final List<Attributes>? extendedMetadata;
  final List<Association>? lastAssociations;
  final List<Association>? topAssociations;
  final List<Association>? significantAssociations;

  Details(
      {required this.attributes,
      this.metadata,
      this.extendedMetadata,
      this.lastAssociations,
      this.topAssociations,
      this.significantAssociations});

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);

  Map<String, dynamic> toJson() => _$DetailsToJson(this);
}

@JsonSerializable()
class Attributes {
  @JsonKey(name: 'first_seen')
  final String firstSeen;
  @JsonKey(name: 'last_seen')
  final String lastSeen;
  final String id;
  final String type;
  @JsonKey(name: 'reputation_score')
  final int reputationScore;
  final String reputation;
  @JsonKey(name: 'best_reputation_score')
  final int bestReputationScore;
  @JsonKey(name: 'best_reputation')
  final String bestReputation;
  @JsonKey(name: 'worst_reputation_score')
  final int worstReputationScore;
  @JsonKey(name: 'worst_reputation')
  final String worstReputation;
  @JsonKey(name: 'accuracy_score')
  final int accuracyScore;
  final String accuracy;
  final String label;
  final dynamic value;
  final String description;
  List<dynamic> tags;

  Attributes(
      {required this.firstSeen,
      required this.lastSeen,
      required this.id,
      required this.type,
      required this.reputationScore,
      required this.reputation,
      required this.bestReputationScore,
      required this.bestReputation,
      required this.worstReputationScore,
      required this.worstReputation,
      required this.accuracyScore,
      required this.accuracy,
      required this.label,
      required this.value,
      required this.description,
      required this.tags});

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);

  Map<String, dynamic> toJson() => _$AttributesToJson(this);
}

@JsonSerializable()
class Association {
  @JsonKey(name: 'first_seen')
  final String firstSeen;
  @JsonKey(name: 'last_seen')
  final String lastSeen;
  final String id;
  final String type;
  @JsonKey(name: 'reputation_score')
  final int reputationScore;
  final String reputation;
  @JsonKey(name: 'best_reputation_score')
  final int bestReputationScore;
  @JsonKey(name: 'best_reputation')
  final String bestReputation;
  @JsonKey(name: 'worst_reputation_score')
  final int worstReputationScore;
  @JsonKey(name: 'worst_reputation')
  final String worstReputation;
  @JsonKey(name: 'accuracy_score')
  final int accuracyScore;
  final String accuracy;
  final String label;
  final dynamic value;
  final String description;
  List<dynamic> tags;
  int? bgCount;
  int? count;
  double? significanceScore;

  Association({
    required this.firstSeen,
    required this.lastSeen,
    required this.id,
    required this.type,
    required this.reputationScore,
    required this.reputation,
    required this.bestReputationScore,
    required this.bestReputation,
    required this.worstReputationScore,
    required this.worstReputation,
    required this.accuracyScore,
    required this.accuracy,
    required this.label,
    required this.value,
    required this.description,
    required this.tags,
    this.bgCount,
    this.count,
    this.significanceScore,
  });

  factory Association.fromJson(Map<String, dynamic> json) =>
      _$AssociationFromJson(json);

  Map<String, dynamic> toJson() => _$AssociationToJson(this);
}
