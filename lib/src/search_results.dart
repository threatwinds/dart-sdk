library threatwinds_sdk.search_results;

import 'package:json_annotation/json_annotation.dart';

part 'search_results.g.dart';

@JsonSerializable()
class EntityResults {
  final int pages;
  final int items;
  final List<EntityObject> results;
  final Map<String, dynamic>? aggregations;

  EntityResults({
    required this.pages,
    required this.items,
    required this.results,
    this.aggregations,
  });

  factory EntityResults.fromJson(Map<String, dynamic> json) =>
      _$EntityResultsFromJson(json);

  Map<String, dynamic> toJson() => _$EntityResultsToJson(this);
}

@JsonSerializable()
class EntityHistoryResults {
  final int pages;
  final int items;
  final List<EntityHistoryObject> results;
  final Map<String, dynamic>? aggregations;

  EntityHistoryResults({
    required this.pages,
    required this.items,
    required this.results,
    this.aggregations,
  });

  factory EntityHistoryResults.fromJson(Map<String, dynamic> json) =>
      _$EntityHistoryResultsFromJson(json);

  Map<String, dynamic> toJson() => _$EntityHistoryResultsToJson(this);
}

@JsonSerializable()
class CommentResults {
  final int pages;
  final int items;
  final List<CommentObject> results;
  final Map<String, dynamic>? aggregations;

  CommentResults({
    required this.pages,
    required this.items,
    required this.results,
    this.aggregations,
  });

  factory CommentResults.fromJson(Map<String, dynamic> json) =>
      _$CommentResultsFromJson(json);

  Map<String, dynamic> toJson() => _$CommentResultsToJson(this);
}

@JsonSerializable()
class EntityObject {
  final String id;
  @JsonKey(name: '@timestamp')
  final String timestamp;
  final String lastSeen;
  final String type;
  final int reputation;
  final int? bestReputation;
  final int? worstReputation;
  final int accuracy;
  final Map<String, dynamic> attributes;
  final List<String>? tags;
  final List<String>? visibleBy;

  EntityObject(
      {required this.id,
      required this.timestamp,
      required this.lastSeen,
      required this.type,
      required this.reputation,
      required this.bestReputation,
      required this.worstReputation,
      required this.accuracy,
      required this.attributes,
      this.tags,
      this.visibleBy});

  factory EntityObject.fromJson(Map<String, dynamic> json) =>
      _$EntityObjectFromJson(json);

  Map<String, dynamic> toJson() => _$EntityObjectToJson(this);
}

@JsonSerializable()
class EntityHistoryObject {
  final String id;
  @JsonKey(name: '@timestamp')
  final String timestamp;
  final String entityID;
  final String type;
  final String userID;
  final int reputation;
  final Map<String, dynamic> attributes;
  final List<String>? tags;
  final List<String>? visibleBy;

  EntityHistoryObject(
      {required this.id,
      required this.timestamp,
      required this.entityID,
      required this.type,
      required this.userID,
      required this.reputation,
      required this.attributes,
      this.tags,
      this.visibleBy});

  factory EntityHistoryObject.fromJson(Map<String, dynamic> json) =>
      _$EntityHistoryObjectFromJson(json);

  Map<String, dynamic> toJson() => _$EntityHistoryObjectToJson(this);
}

@JsonSerializable()
class CommentObject {
  final String id;
  @JsonKey(name: '@timestamp')
  final String timestamp;
  final String entityID;
  final String comment;
  final String userID;
  final String? parentID;
  final List<String>? visibleBy;

  CommentObject(
      {required this.id,
      required this.timestamp,
      required this.entityID,
      required this.comment,
      required this.userID,
      this.parentID,
      this.visibleBy});

  factory CommentObject.fromJson(Map<String, dynamic> json) =>
      _$CommentObjectFromJson(json);

  Map<String, dynamic> toJson() => _$CommentObjectToJson(this);
}
