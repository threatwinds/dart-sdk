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

@JsonSerializable()
class AdvancedSearch {
  final Bool? query;
  final Map<String, Aggs>? aggs;
  final Collapse? collapse;
  @JsonKey(name: 'search_after')
  final List<int>? searchAfter;
  final Source? source;
  @JsonKey(name: 'script_fields')
  final dynamic scriptFields;

  AdvancedSearch({
    this.query,
    this.aggs,
    this.collapse,
    this.searchAfter,
    this.source,
    this.scriptFields,
  });

  factory AdvancedSearch.fromJson(Map<String, dynamic> json) =>
      _$AdvancedSearchFromJson(json);

  Map<String, dynamic> toJson() => _$AdvancedSearchToJson(this);
}

@JsonSerializable()
class Bool {
  final List<Query>? filter;
  final List<Query>? must;
  @JsonKey(name: 'must_not')
  final List<Query>? mustNot;
  final List<Query>? should;
  @JsonKey(name: 'minimum_should_match')
  final dynamic minimumShouldMatch;

  Bool({
    this.filter,
    this.must,
    this.mustNot,
    this.should,
    this.minimumShouldMatch,
  });

  factory Bool.fromJson(Map<String, dynamic> json) => _$BoolFromJson(json);

  Map<String, dynamic> toJson() => _$BoolToJson(this);
}

@JsonSerializable()
class Query {
  final Bool? bool;
  Map<String, Map<String, dynamic>>? term;
  Map<String, List<dynamic>>? terms;
  Map<String, List<dynamic>>? ids;
  Map<String, Map<String, dynamic>>? range;
  Map<String, String>? exists;
  Map<String, String>? prefix;
  Map<String, Map<String, dynamic>>? fuzzy;
  Map<String, Map<String, dynamic>>? wildcard;
  Map<String, String>? regexp;
  Map<String, Match>? match;
  @JsonKey(name: 'multi_match')
  MultiMatch? multiMatch;
  @JsonKey(name: 'match_bool_prefix')
  Map<String, MatchBoolPrefix>? matchBoolPrefix;
  @JsonKey(name: 'match_phrase')
  Map<String, MatchPhrase>? matchPhrase;
  @JsonKey(name: 'match_phrase_prefix')
  Map<String, MatchPhrasePrefix>? matchPhrasePrefix;
  @JsonKey(name: 'query_string')
  QueryString? queryString;
  @JsonKey(name: 'simple_query_string')
  SimpleQueryString? simpleQueryString;

  Query({
    this.bool,
    this.term,
    this.terms,
    this.ids,
    this.range,
    this.exists,
    this.prefix,
    this.fuzzy,
    this.wildcard,
    this.regexp,
    this.match,
    this.multiMatch,
    this.matchBoolPrefix,
    this.matchPhrase,
    this.matchPhrasePrefix,
    this.queryString,
    this.simpleQueryString,
  });

  factory Query.fromJson(Map<String, dynamic> json) => _$QueryFromJson(json);

  Map<String, dynamic> toJson() => _$QueryToJson(this);
}

@JsonSerializable()
class Collapse {
  String? field;

  Collapse({this.field});

  factory Collapse.fromJson(Map<String, dynamic> json) =>
      _$CollapseFromJson(json);

  Map<String, dynamic> toJson() => _$CollapseToJson(this);
}

@JsonSerializable()
class Aggs {
  Map<String, Aggs>? aggs;
  Agg? avg;
  Agg? sum;
  Agg? min;
  Agg? max;
  Cardinality? cardinality;
  @JsonKey(name: 'value_count')
  Agg? valueCount;
  Agg? stats;
  @JsonKey(name: 'extended_stats')
  ExtendedStats? extendedStats;
  @JsonKey(name: 'matrix_stats')
  Map<String, List<String>>? matrixStats;
  Agg? percentiles;
  @JsonKey(name: 'percentile_ranks')
  PercentileRanks? percentileRanks;
  @JsonKey(name: 'top_hits')
  TopHits? topHits;
  Terms? terms;
  @JsonKey(name: 'multi_terms')
  MultiTerms? multiTerms;
  Map<String, dynamic>? sampler;
  @JsonKey(name: 'diversified_sampler')
  Map<String, dynamic>? diversifiedSampler;
  @JsonKey(name: 'significant_terms')
  Agg? significantTerms;
  @JsonKey(name: 'significant_text')
  Map<String, dynamic>? significantText;
  Histogram? histogram;
  @JsonKey(name: 'date_histogram')
  Histogram? dateHistogram;
  Range? range;
  @JsonKey(name: 'date_range')
  DateRange? dateRange;
  @JsonKey(name: 'ip_range')
  Range? ipRange;
  Map<String, dynamic>? filter;
  Map<String, dynamic>? filters;
  dynamic global;
  Map<String, String>? nested;
  @JsonKey(name: 'reverse_nested')
  dynamic reverseNested;
  @JsonKey(name: 'sum_bucket')
  PipelineAgg? sumBucket;
  @JsonKey(name: 'avg_bucket')
  PipelineAgg? avgBucket;
  @JsonKey(name: 'min_bucket')
  PipelineAgg? minBucket;
  @JsonKey(name: 'max_bucket')
  PipelineAgg? maxBucket;
  @JsonKey(name: 'stats_bucket')
  PipelineAgg? statsBucket;
  @JsonKey(name: 'extended_stats_bucket')
  PipelineAgg? extendedStatsBucket;
  @JsonKey(name: 'bucket_sort')
  Map<String, dynamic>? bucketSort;
  @JsonKey(name: 'cumulative_sum')
  PipelineAgg? cumulativeSum;
  PipelineAgg? derivative;
  @JsonKey(name: 'moving_avg')
  MovingAvg? movingAvg;
  @JsonKey(name: 'serial_diff')
  SerialDiff? serialDiff;
  @JsonKey(name: 'geo_distance')
  GeoDistance? geoDistance;
  @JsonKey(name: 'geohash_grid')
  Grid? geohashGrid;
  @JsonKey(name: 'geohex_grid')
  Grid? geohexGrid;
  @JsonKey(name: 'geotile_grid')
  Grid? geotileGrid;
  @JsonKey(name: 'adjacency_matrix')
  Map<String, dynamic>? adjacencyMatrix;

  Aggs({
    this.aggs,
    this.avg,
    this.sum,
    this.min,
    this.max,
    this.cardinality,
    this.valueCount,
    this.stats,
    this.extendedStats,
    this.matrixStats,
    this.percentiles,
    this.percentileRanks,
    this.topHits,
    this.terms,
    this.multiTerms,
    this.sampler,
    this.diversifiedSampler,
    this.significantTerms,
    this.significantText,
    this.histogram,
    this.dateHistogram,
    this.range,
    this.dateRange,
    this.ipRange,
    this.filter,
    this.filters,
    this.global,
    this.nested,
    this.reverseNested,
    this.sumBucket,
    this.avgBucket,
    this.minBucket,
    this.maxBucket,
    this.statsBucket,
    this.extendedStatsBucket,
    this.bucketSort,
    this.cumulativeSum,
    this.derivative,
    this.movingAvg,
    this.serialDiff,
    this.geoDistance,
    this.geohashGrid,
    this.geohexGrid,
    this.geotileGrid,
    this.adjacencyMatrix,
  });

  factory Aggs.fromJson(Map<String, dynamic> json) => _$AggsFromJson(json);

  Map<String, dynamic> toJson() => _$AggsToJson(this);
}

@JsonSerializable()
class Grid {
  String? field;
  int? precision;
  dynamic bounds;
  int? size;
  int? shardSize;

  Grid({
    this.field,
    this.precision,
    this.bounds,
    this.size,
    this.shardSize,
  });

  factory Grid.fromJson(Map<String, dynamic> json) => _$GridFromJson(json);

  Map<String, dynamic> toJson() => _$GridToJson(this);
}

@JsonSerializable()
class GeoDistance {
  dynamic origin;
  Range? range;

  GeoDistance({
    this.origin,
    this.range,
  });

  factory GeoDistance.fromJson(Map<String, dynamic> json) =>
      _$GeoDistanceFromJson(json);

  Map<String, dynamic> toJson() => _$GeoDistanceToJson(this);
}

@JsonSerializable()
class SerialDiff {
  int? lag;
  @JsonKey(name: 'buckets_path')
  String? bucketsPath;

  SerialDiff({
    this.lag,
    this.bucketsPath,
  });

  factory SerialDiff.fromJson(Map<String, dynamic> json) =>
      _$SerialDiffFromJson(json);

  Map<String, dynamic> toJson() => _$SerialDiffToJson(this);
}

@JsonSerializable()
class MovingAvg {
  int? predict;
  int? window;
  String? model;
  Map<String, dynamic>? settings;
  @JsonKey(name: 'pipeline_agg')
  PipelineAgg? pipelineAgg;

  MovingAvg({
    this.predict,
    this.window,
    this.model,
    this.settings,
    this.pipelineAgg,
  });

  factory MovingAvg.fromJson(Map<String, dynamic> json) =>
      _$MovingAvgFromJson(json);

  Map<String, dynamic> toJson() => _$MovingAvgToJson(this);
}

@JsonSerializable()
class PipelineAgg {
  @JsonKey(name: 'buckets_path')
  String? bucketsPath;

  PipelineAgg({this.bucketsPath});

  factory PipelineAgg.fromJson(Map<String, dynamic> json) =>
      _$PipelineAggFromJson(json);

  Map<String, dynamic> toJson() => _$PipelineAggToJson(this);
}

@JsonSerializable()
class Range {
  String? field;
  List<Map<String, dynamic>>? ranges;

  Range({
    this.field,
    this.ranges,
  });

  factory Range.fromJson(Map<String, dynamic> json) => _$RangeFromJson(json);

  Map<String, dynamic> toJson() => _$RangeToJson(this);
}

@JsonSerializable()
class DateRange {
  String? format;
  String? field;
  List<Map<String, dynamic>>? ranges;

  DateRange({
    this.format,
    this.field,
    this.ranges,
  });

  factory DateRange.fromJson(Map<String, dynamic> json) =>
      _$DateRangeFromJson(json);

  Map<String, dynamic> toJson() => _$DateRangeToJson(this);
}

@JsonSerializable()
class Terms {
  String? field;
  int? size;
  String? missing;
  @JsonKey(name: 'min_doc_count')
  int? minDocCount;

  Terms({
    this.field,
    this.size,
    this.missing,
    this.minDocCount,
  });

  factory Terms.fromJson(Map<String, dynamic> json) => _$TermsFromJson(json);

  Map<String, dynamic> toJson() => _$TermsToJson(this);
}

@JsonSerializable()
class Histogram {
  String? field;
  dynamic interval;

  Histogram({
    this.field,
    this.interval,
  });

  factory Histogram.fromJson(Map<String, dynamic> json) =>
      _$HistogramFromJson(json);

  Map<String, dynamic> toJson() => _$HistogramToJson(this);
}

@JsonSerializable()
class MultiTerms {
  List<Agg>? terms;
  Map<String, String>? order;

  MultiTerms({
    this.terms,
    this.order,
  });

  factory MultiTerms.fromJson(Map<String, dynamic> json) =>
      _$MultiTermsFromJson(json);

  Map<String, dynamic> toJson() => _$MultiTermsToJson(this);
}

@JsonSerializable()
class TopHits {
  int? size;

  TopHits({this.size});

  factory TopHits.fromJson(Map<String, dynamic> json) =>
      _$TopHitsFromJson(json);

  Map<String, dynamic> toJson() => _$TopHitsToJson(this);
}

@JsonSerializable()
class PercentileRanks {
  String? field;
  List<int>? values;

  PercentileRanks({
    this.field,
    this.values,
  });

  factory PercentileRanks.fromJson(Map<String, dynamic> json) =>
      _$PercentileRanksFromJson(json);

  Map<String, dynamic> toJson() => _$PercentileRanksToJson(this);
}

@JsonSerializable()
class Agg {
  String? field;
  int? size;

  Agg({
    this.field,
    this.size,
  });

  factory Agg.fromJson(Map<String, dynamic> json) => _$AggFromJson(json);

  Map<String, dynamic> toJson() => _$AggToJson(this);
}

@JsonSerializable()
class ExtendedStats {
  String? field;
  int? sigma;

  ExtendedStats({
    this.field,
    this.sigma,
  });

  factory ExtendedStats.fromJson(Map<String, dynamic> json) =>
      _$ExtendedStatsFromJson(json);

  Map<String, dynamic> toJson() => _$ExtendedStatsToJson(this);
}

@JsonSerializable()
class Cardinality {
  String? field;
  @JsonKey(name: 'precision_threshold')
  int? precisionThreshold;

  Cardinality({
    this.field,
    this.precisionThreshold,
  });

  factory Cardinality.fromJson(Map<String, dynamic> json) =>
      _$CardinalityFromJson(json);

  Map<String, dynamic> toJson() => _$CardinalityToJson(this);
}

@JsonSerializable()
class Match {
  String? query;
  String? fuzziness;
  @JsonKey(name: 'fuzzy_transpositions')
  bool? fuzzyTranspositions;
  String? operator;
  @JsonKey(name: 'minimum_should_match')
  int? minimumShouldMatch;
  String? analyzer;
  @JsonKey(name: 'zero_terms_query')
  String? zeroTermsQuery;
  bool? lenient;
  @JsonKey(name: 'prefix_length')
  int? prefixLength;
  @JsonKey(name: 'max_expansions')
  int? maxExpansions;
  int? boost;

  Match({
    this.query,
    this.fuzziness,
    this.fuzzyTranspositions,
    this.operator,
    this.minimumShouldMatch,
    this.analyzer,
    this.zeroTermsQuery,
    this.lenient,
    this.prefixLength,
    this.maxExpansions,
    this.boost,
  });

  factory Match.fromJson(Map<String, dynamic> json) => _$MatchFromJson(json);

  Map<String, dynamic> toJson() => _$MatchToJson(this);
}

@JsonSerializable()
class MultiMatch {
  String? query;
  List<String>? fields;
  String? fuzziness;
  @JsonKey(name: 'fuzzy_transpositions')
  bool? fuzzyTranspositions;
  String? operator;
  @JsonKey(name: 'minimum_should_match')
  int? minimumShouldMatch;
  String? analyzer;
  @JsonKey(name: 'zero_terms_query')
  String? zeroTermsQuery;
  bool? lenient;
  @JsonKey(name: 'prefix_length')
  int? prefixLength;
  @JsonKey(name: 'max_expansions')
  int? maxExpansions;
  int? boost;
  String? type;
  @JsonKey(name: 'tie_breaker')
  double? tieBreaker;
  @JsonKey(name: 'auto_generate_synonyms_phrase_query')
  bool? autoGenerateSynonymsPhraseQuery;

  MultiMatch({
    this.query,
    this.fields,
    this.fuzziness,
    this.fuzzyTranspositions,
    this.operator,
    this.minimumShouldMatch,
    this.analyzer,
    this.zeroTermsQuery,
    this.lenient,
    this.prefixLength,
    this.maxExpansions,
    this.boost,
    this.type,
    this.tieBreaker,
    this.autoGenerateSynonymsPhraseQuery,
  });

  factory MultiMatch.fromJson(Map<String, dynamic> json) =>
      _$MultiMatchFromJson(json);

  Map<String, dynamic> toJson() => _$MultiMatchToJson(this);
}

@JsonSerializable()
class MatchBoolPrefix {
  String? query;
  String? fuzziness;
  @JsonKey(name: 'fuzzy_transpositions')
  bool? fuzzyTranspositions;
  @JsonKey(name: 'max_expansions')
  int? maxExpansions;
  @JsonKey(name: 'prefix_length')
  int? prefixLength;
  String? operator;
  @JsonKey(name: 'minimum_should_match')
  int? minimumShouldMatch;
  String? analyzer;

  MatchBoolPrefix({
    this.query,
    this.fuzziness,
    this.fuzzyTranspositions,
    this.maxExpansions,
    this.prefixLength,
    this.operator,
    this.minimumShouldMatch,
    this.analyzer,
  });

  factory MatchBoolPrefix.fromJson(Map<String, dynamic> json) =>
      _$MatchBoolPrefixFromJson(json);

  Map<String, dynamic> toJson() => _$MatchBoolPrefixToJson(this);
}

@JsonSerializable()
class MatchPhrase {
  String? query;
  int? slop;
  String? analyzer;
  @JsonKey(name: 'zero_terms_query')
  String? zeroTermsQuery;

  MatchPhrase({
    this.query,
    this.slop,
    this.analyzer,
    this.zeroTermsQuery,
  });

  factory MatchPhrase.fromJson(Map<String, dynamic> json) =>
      _$MatchPhraseFromJson(json);

  Map<String, dynamic> toJson() => _$MatchPhraseToJson(this);
}

@JsonSerializable()
class MatchPhrasePrefix {
  String? query;
  String? analyzer;
  @JsonKey(name: 'max_expansions')
  int? maxExpansions;
  int? slop;

  MatchPhrasePrefix({
    this.query,
    this.analyzer,
    this.maxExpansions,
    this.slop,
  });

  factory MatchPhrasePrefix.fromJson(Map<String, dynamic> json) =>
      _$MatchPhrasePrefixFromJson(json);

  Map<String, dynamic> toJson() => _$MatchPhrasePrefixToJson(this);
}

@JsonSerializable()
class QueryString {
  String? query;
  @JsonKey(name: 'default_field')
  String? defaultField;
  String? type;
  String? fuzziness;
  @JsonKey(name: 'fuzzy_transpositions')
  bool? fuzzyTranspositions;
  @JsonKey(name: 'fuzzy_max_expansions')
  int? fuzzyMaxExpansions;
  @JsonKey(name: 'fuzzy_prefix_length')
  int? fuzzyPrefixLength;
  @JsonKey(name: 'minimum_should_match')
  int? minimumShouldMatch;
  @JsonKey(name: 'default_operator')
  String? defaultOperator;
  String? analyzer;
  bool? lenient;
  int? boost;
  @JsonKey(name: 'allow_leading_wildcard')
  bool? allowLeadingWildcard;
  @JsonKey(name: 'enable_position_increments')
  bool? enablePositionIncrements;
  @JsonKey(name: 'phrase_slop')
  int? phraseSlop;
  @JsonKey(name: 'max_determinized_states')
  int? maxDeterminizedStates;
  @JsonKey(name: 'time_zone')
  String? timeZone;
  @JsonKey(name: 'quote_field_suffix')
  String? quoteFieldSuffix;
  @JsonKey(name: 'quote_analyzer')
  String? quoteAnalyzer;
  @JsonKey(name: 'analyze_wildcard')
  bool? analyzeWildcard;
  @JsonKey(name: 'auto_generate_synonyms_phrase_query')
  bool? autoGenerateSynonymsPhraseQuery;

  QueryString({
    this.query,
    this.defaultField,
    this.type,
    this.fuzziness,
    this.fuzzyTranspositions,
    this.fuzzyMaxExpansions,
    this.fuzzyPrefixLength,
    this.minimumShouldMatch,
    this.defaultOperator,
    this.analyzer,
    this.lenient,
    this.boost,
    this.allowLeadingWildcard,
    this.enablePositionIncrements,
    this.phraseSlop,
    this.maxDeterminizedStates,
    this.timeZone,
    this.quoteFieldSuffix,
    this.quoteAnalyzer,
    this.analyzeWildcard,
    this.autoGenerateSynonymsPhraseQuery,
  });

  factory QueryString.fromJson(Map<String, dynamic> json) =>
      _$QueryStringFromJson(json);

  Map<String, dynamic> toJson() => _$QueryStringToJson(this);
}

@JsonSerializable()
class SimpleQueryString {
  String? query;
  List<String>? fields;
  String? flags;
  @JsonKey(name: 'fuzzy_transpositions')
  bool? fuzzyTranspositions;
  @JsonKey(name: 'fuzzy_max_expansions')
  int? fuzzyMaxExpansions;
  @JsonKey(name: 'fuzzy_prefix_length')
  int? fuzzyPrefixLength;
  @JsonKey(name: 'minimum_should_match')
  int? minimumShouldMatch;
  @JsonKey(name: 'default_operator')
  String? defaultOperator;
  String? analyzer;
  bool? lenient;
  @JsonKey(name: 'quote_field_suffix')
  String? quoteFieldSuffix;
  @JsonKey(name: 'analyze_wildcard')
  bool? analyzeWildcard;
  @JsonKey(name: 'auto_generate_synonyms_phrase_query')
  bool? autoGenerateSynonymsPhraseQuery;

  SimpleQueryString({
    this.query,
    this.fields,
    this.flags,
    this.fuzzyTranspositions,
    this.fuzzyMaxExpansions,
    this.fuzzyPrefixLength,
    this.minimumShouldMatch,
    this.defaultOperator,
    this.analyzer,
    this.lenient,
    this.quoteFieldSuffix,
    this.analyzeWildcard,
    this.autoGenerateSynonymsPhraseQuery,
  });

  factory SimpleQueryString.fromJson(Map<String, dynamic> json) =>
      _$SimpleQueryStringFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleQueryStringToJson(this);
}
