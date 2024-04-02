library threatwinds_sdk.results;

import 'dart:convert';
import 'package:threatwinds_sdk/src/parseable.dart';
import 'package:uuid/uuid.dart';

class EntityResults implements Parseable {
  late int pages;
  late int items;
  late List<Entity> results;
  Map<String, dynamic>? aggregations;

  @override
  fromJson(Map<String, dynamic> object) {
    pages = object['pages'];
    items = object['items'];
    if (object['results'] != null) {
      results = [];
      object['results'].forEach((element) {
        results.add(parseResult(element as Map<String, dynamic>));
      });
    }

    aggregations = object['aggregations'];
  }

  Entity parseResult(Map<String, dynamic> object) {
    Entity entity = Entity();
    entity.fromJson(object);
    return entity;
  }

  @override
  String toJson() {
    return jsonEncode({
      'pages': pages,
      'items': items,
      'results': results,
      'aggregations': aggregations,
    });
  }
}

class Entity implements Parseable {
  String? id;
  late String timestamp;
  late String lastSeen;
  late String type;
  late int reputation;
  late int bestReputation;
  late int worstReputation;
  late int accuracy;
  Map<String, dynamic>? attributes;
  List<String>? tags;
  List<String>? visibleBy;

  @override
  fromJson(Map<String, dynamic> object) {
    id = object['id'];
    timestamp = object['@timestamp'];
    lastSeen = object['lastSeen'];
    type = object['type'];
    reputation = object['reputation'];
    bestReputation = object['bestReputation'];
    worstReputation = object['worstReputation'];
    accuracy = object['accuracy'];
    attributes = object['attributes'];
    if (object['tags'] != null) {
      tags = [];
      object['tags'].forEach((element) {
        tags!.add(element);
      });
    }
    if (object['visibleBy'] != null) {
      visibleBy = [];
      object['visibleBy'].forEach((element) {
        visibleBy!.add(element);
      });
    }
  }

  @override
  String toJson() {
    return jsonEncode({
      'id': id,
      '@timestamp': timestamp,
      'lastSeen': lastSeen,
      'type': type,
      'reputation': reputation,
      'bestReputation': bestReputation,
      'worstReputation': worstReputation,
      'accuracy': accuracy,
      'attributes': attributes,
      'tags': tags,
      'visibleBy': visibleBy,
    });
  }
}

class EntityHistory implements Parseable {
  String? id;
  late String timestamp;
  late String entityID;
  late String type;
  late Uuid userID;
  late int reputation;
  Map<String, dynamic>? attributes;
  List<String>? tags;
  List<String>? visibleBy;

  @override
  fromJson(Map<String, dynamic> object) {
    id = object['id'];
    timestamp = object['@timestamp'];
    entityID = object['entityID'];
    type = object['type'];
    userID = Uuid.parse(object['user_id']) as Uuid;
    reputation = object['reputation'];
    attributes = object['attributes'];
    if (object['tags'] != null) {
      tags = [];
      object['tags'].forEach((element) {
        tags!.add(element);
      });
    }
    if (object['visibleBy'] != null) {
      visibleBy = [];
      object['visibleBy'].forEach((element) {
        visibleBy!.add(element);
      });
    }
  }

  @override
  String toJson() {
    return jsonEncode({
      'id': id,
      '@timestamp': timestamp,
      'entityID': entityID,
      'type': type,
      'userID': userID.toString(),
      'reputation': reputation,
      'attributes': attributes,
      'tags': tags,
      'visibleBy': visibleBy,
    });
  }
}

class Relation implements Parseable {
  String? id;
  late String timestamp;
  late String lastSeen;
  late String entityID;
  late String relatedEntityID;
  late String mode;
  List<String>? visibleBy;

  @override
  fromJson(dynamic object) {
    Map<String, dynamic> tmp = jsonDecode(object);
    id = tmp['id'];
    timestamp = tmp['@timestamp'];
    lastSeen = tmp['lastSeen'];
    entityID = tmp['entityID'];
    relatedEntityID = tmp['relatedEntityID'];
    mode = tmp['mode'];
    if (tmp['visibleBy'] != null) {
      visibleBy = [];
      tmp['visibleBy'].forEach((element) {
        visibleBy!.add(element);
      });
    }
  }

  @override
  String toJson() {
    return jsonEncode({
      'id': id,
      '@timestamp': timestamp,
      'lastSeen': lastSeen,
      'entityID': entityID,
      'relatedEntityID': relatedEntityID,
      'mode': mode,
      'visibleBy': visibleBy,
    });
  }
}

class RelationHistory implements Parseable {
  String? id;
  late String timestamp;
  late String relationID;
  late String entityID;
  late String relatedEntityID;
  late Uuid userID;
  late String mode;
  List<String>? visibleBy;

  @override
  fromJson(dynamic object) {
    Map<String, dynamic> tmp = jsonDecode(object);
    id = tmp['id'];
    timestamp = tmp['@timestamp'];
    relationID = tmp['relationID'];
    entityID = tmp['entityID'];
    relatedEntityID = tmp['relatedEntityID'];
    userID = Uuid.parse(tmp['userID']) as Uuid;
    mode = tmp['mode'];
    if (tmp['visibleBy'] != null) {
      visibleBy = [];
      tmp['visibleBy'].forEach((element) {
        visibleBy!.add(element);
      });
    }
  }

  @override
  String toJson() {
    return jsonEncode({
      'id': id,
      '@timestamp': timestamp,
      'relationID': relationID,
      'entityID': entityID,
      'relatedEntityID': relatedEntityID,
      'userID': userID.toString(),
      'mode': mode,
      'visibleBy': visibleBy,
    });
  }
}

class Comment implements Parseable {
  String? id;
  late String timestamp;
  late String entityID;
  late String comment;
  late Uuid userID;
  late Uuid parentID;
  List<String>? visibleBy;

  @override
  fromJson(dynamic object) {
    Map<String, dynamic> tmp = jsonDecode(object);
    id = tmp['id'];
    timestamp = tmp['@timestamp'];
    entityID = tmp['entityID'];
    comment = tmp['comment'];
    userID = Uuid.parse(tmp['userID']) as Uuid;
    parentID = Uuid.parse(tmp['parentID']) as Uuid;
    if (tmp['visibleBy'] != null) {
      visibleBy = [];
      tmp['visibleBy'].forEach((element) {
        visibleBy!.add(element);
      });
    }
  }

  @override
  String toJson() {
    return jsonEncode({
      'id': id,
      '@timestamp': timestamp,
      'entityID': entityID,
      'comment': comment,
      'userID': userID.toString(),
      'parentID': parentID.toString(),
      'visibleBy': visibleBy,
    });
  }
}
