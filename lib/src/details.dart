library threatwinds_sdk.details;

import 'dart:convert';

import 'package:threatwinds_sdk/src/parseable.dart';

class Details implements Parseable {
  late Attributes attributes;
  Map<String, dynamic>? metadata;
  List<Attributes>? extendedMetadata;
  List<Association>? lastAssociations;
  List<Association>? topAssociations;
  List<Association>? significantAssociations;

  @override
  fromJson(Map<String, dynamic> object) {
    Attributes attributes = Attributes();

    attributes.fromJson(object['attributes']);
    metadata = object['metadata'];

    if (object['extended_metadata'] != null) {
      extendedMetadata = [];
      object['extended_metadata'].forEach((element) {
        Attributes newElement = Attributes();
        newElement.fromJson(element);
        extendedMetadata!.add(newElement);
      });
    }
    if (object['last_associations'] != null) {
      lastAssociations = [];
      object['last_associations'].forEach((element) {
        Association newElement = Association();
        newElement.fromJson(element);
        lastAssociations!.add(newElement);
      });
    }
    if (object['top_associations'] != null) {
      topAssociations = [];
      object['top_associations'].forEach((element) {
        Association newElement = Association();
        newElement.fromJson(element);
        topAssociations!.add(newElement);
      });
    }
    if (object['significant_associations'] != null) {
      significantAssociations = [];
      object['significant_associations'].forEach((element) {
        Association newElement = Association();
        newElement.fromJson(element);
        significantAssociations!.add(newElement);
      });
    }
  }

  @override
  String toJson() {
    return jsonEncode({
      'attributes': attributes.toJson(),
      'metadata': metadata,
      'extended_metadata': extendedMetadata?.map((e) => e.toJson()).toList(),
      'last_associations': lastAssociations?.map((e) => e.toJson()).toList(),
      'top_associations': topAssociations?.map((e) => e.toJson()).toList(),
      'significant_associations':
          significantAssociations?.map((e) => e.toJson()).toList(),
    });
  }
}

class Attributes implements Parseable {
  late String firstSeen;
  late String lastSeen;
  late String id;
  late String type;
  late int reputationScore;
  late String reputation;
  late int bestReputationScore;
  late String bestReputation;
  late int worstReputationScore;
  late String worstReputation;
  late int accuracyScore;
  late String accuracy;
  late String label;
  dynamic value;
  late String description;
  List<dynamic>? tags;

  @override
  fromJson(Map<String, dynamic> object) {
    firstSeen = object['first_seen'];
    lastSeen = object['last_seen'];
    id = object['id'];
    type = object['type'];
    reputationScore = object['reputation_score'];
    reputation = object['reputation'];
    bestReputationScore = object['best_reputation_score'];
    bestReputation = object['best_reputation'];
    worstReputationScore = object['worst_reputation_score'];
    worstReputation = object['worst_reputation'];
    accuracyScore = object['accuracy_score'];
    accuracy = object['accuracy'];
    label = object['label'];
    value = object['value'];
    description = object['description'];
    tags = object['tags'];
  }

  @override
  String toJson() {
    return jsonEncode({
      'first_seen': firstSeen,
      'last_seen': lastSeen,
      'id': id,
      'type': type,
      'reputation_score': reputationScore,
      'reputation': reputation,
      'best_reputation_score': bestReputationScore,
      'best_reputation': bestReputation,
      'worst_reputation_score': worstReputationScore,
      'worst_reputation': worstReputation,
      'accuracy_score': accuracyScore,
      'accuracy': accuracy,
      'label': label,
      'value': value,
      'description': description,
      'tags': tags,
    });
  }
}

class Association extends Attributes {
  double? bgCount;
  double? count;
  double? significanceScore;

  @override
  fromJson(Map<String, dynamic> object) {
    super.fromJson(object);
    bgCount = object['bg_count'];
    count = object['count'];
    significanceScore = object['significance_score'];
  }

  @override
  String toJson() {
    return jsonEncode({
      'first_seen': firstSeen,
      'last_seen': lastSeen,
      'id': id,
      'type': type,
      'reputation_score': reputationScore,
      'reputation': reputation,
      'best_reputation_score': bestReputationScore,
      'best_reputation': bestReputation,
      'worst_reputation_score': worstReputationScore,
      'worst_reputation': worstReputation,
      'accuracy_score': accuracyScore,
      'accuracy': accuracy,
      'label': label,
      'value': value,
      'description': description,
      'tags': tags,
      'bg_count': bgCount,
      'count': count,
      'significance_score': significanceScore,
    });
  }
}
