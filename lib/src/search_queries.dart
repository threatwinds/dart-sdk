library threatwinds_sdk.search_queries;

import 'package:json_annotation/json_annotation.dart';

part 'search_queries.g.dart';

@JsonSerializable()
class SimpleSearch {
  final String query;
  final int? reputation;
  final int? accuracy;
  final Source? source;

  SimpleSearch({
    required this.query,
    this.reputation,
    this.accuracy,
    this.source,
  });

  factory SimpleSearch.fromJson(Map<String, dynamic> json) =>
      _$SimpleSearchFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleSearchToJson(this);
}

@JsonSerializable()
class Source {
  final List<String> includes;
  final List<String> excludes;

  Source({required this.includes, required this.excludes});

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

   Map<String, dynamic> toJson() => _$SourceToJson(this);
}
