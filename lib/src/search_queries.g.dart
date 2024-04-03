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

AdvancedSearch _$AdvancedSearchFromJson(Map<String, dynamic> json) =>
    AdvancedSearch(
      query: json['query'] == null
          ? null
          : Bool.fromJson(json['query'] as Map<String, dynamic>),
      aggs: (json['aggs'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Aggs.fromJson(e as Map<String, dynamic>)),
      ),
      collapse: json['collapse'] == null
          ? null
          : Collapse.fromJson(json['collapse'] as Map<String, dynamic>),
      searchAfter: (json['search_after'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      source: json['source'] == null
          ? null
          : Source.fromJson(json['source'] as Map<String, dynamic>),
      scriptFields: json['script_fields'],
    );

Map<String, dynamic> _$AdvancedSearchToJson(AdvancedSearch instance) =>
    <String, dynamic>{
      'query': instance.query,
      'aggs': instance.aggs,
      'collapse': instance.collapse,
      'search_after': instance.searchAfter,
      'source': instance.source,
      'script_fields': instance.scriptFields,
    };

Bool _$BoolFromJson(Map<String, dynamic> json) => Bool(
      filter: (json['filter'] as List<dynamic>?)
          ?.map((e) => Query.fromJson(e as Map<String, dynamic>))
          .toList(),
      must: (json['must'] as List<dynamic>?)
          ?.map((e) => Query.fromJson(e as Map<String, dynamic>))
          .toList(),
      mustNot: (json['must_not'] as List<dynamic>?)
          ?.map((e) => Query.fromJson(e as Map<String, dynamic>))
          .toList(),
      should: (json['should'] as List<dynamic>?)
          ?.map((e) => Query.fromJson(e as Map<String, dynamic>))
          .toList(),
      minimumShouldMatch: json['minimum_should_match'],
    );

Map<String, dynamic> _$BoolToJson(Bool instance) => <String, dynamic>{
      'filter': instance.filter,
      'must': instance.must,
      'must_not': instance.mustNot,
      'should': instance.should,
      'minimum_should_match': instance.minimumShouldMatch,
    };

Query _$QueryFromJson(Map<String, dynamic> json) => Query(
      bool: json['bool'] == null
          ? null
          : Bool.fromJson(json['bool'] as Map<String, dynamic>),
      term: (json['term'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Map<String, dynamic>),
      ),
      terms: (json['terms'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as List<dynamic>),
      ),
      ids: (json['ids'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as List<dynamic>),
      ),
      range: (json['range'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Map<String, dynamic>),
      ),
      exists: (json['exists'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      prefix: (json['prefix'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      fuzzy: (json['fuzzy'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Map<String, dynamic>),
      ),
      wildcard: (json['wildcard'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as Map<String, dynamic>),
      ),
      regexp: (json['regexp'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      match: (json['match'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Match.fromJson(e as Map<String, dynamic>)),
      ),
      multiMatch: json['multi_match'] == null
          ? null
          : MultiMatch.fromJson(json['multi_match'] as Map<String, dynamic>),
      matchBoolPrefix:
          (json['match_bool_prefix'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, MatchBoolPrefix.fromJson(e as Map<String, dynamic>)),
      ),
      matchPhrase: (json['match_phrase'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, MatchPhrase.fromJson(e as Map<String, dynamic>)),
      ),
      matchPhrasePrefix:
          (json['match_phrase_prefix'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, MatchPhrasePrefix.fromJson(e as Map<String, dynamic>)),
      ),
      queryString: json['query_string'] == null
          ? null
          : QueryString.fromJson(json['query_string'] as Map<String, dynamic>),
      simpleQueryString: json['simple_query_string'] == null
          ? null
          : SimpleQueryString.fromJson(
              json['simple_query_string'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$QueryToJson(Query instance) => <String, dynamic>{
      'bool': instance.bool,
      'term': instance.term,
      'terms': instance.terms,
      'ids': instance.ids,
      'range': instance.range,
      'exists': instance.exists,
      'prefix': instance.prefix,
      'fuzzy': instance.fuzzy,
      'wildcard': instance.wildcard,
      'regexp': instance.regexp,
      'match': instance.match,
      'multi_match': instance.multiMatch,
      'match_bool_prefix': instance.matchBoolPrefix,
      'match_phrase': instance.matchPhrase,
      'match_phrase_prefix': instance.matchPhrasePrefix,
      'query_string': instance.queryString,
      'simple_query_string': instance.simpleQueryString,
    };

Collapse _$CollapseFromJson(Map<String, dynamic> json) => Collapse(
      field: json['field'] as String?,
    );

Map<String, dynamic> _$CollapseToJson(Collapse instance) => <String, dynamic>{
      'field': instance.field,
    };

Aggs _$AggsFromJson(Map<String, dynamic> json) => Aggs(
      aggs: (json['aggs'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Aggs.fromJson(e as Map<String, dynamic>)),
      ),
      avg: json['avg'] == null
          ? null
          : Agg.fromJson(json['avg'] as Map<String, dynamic>),
      sum: json['sum'] == null
          ? null
          : Agg.fromJson(json['sum'] as Map<String, dynamic>),
      min: json['min'] == null
          ? null
          : Agg.fromJson(json['min'] as Map<String, dynamic>),
      max: json['max'] == null
          ? null
          : Agg.fromJson(json['max'] as Map<String, dynamic>),
      cardinality: json['cardinality'] == null
          ? null
          : Cardinality.fromJson(json['cardinality'] as Map<String, dynamic>),
      valueCount: json['value_count'] == null
          ? null
          : Agg.fromJson(json['value_count'] as Map<String, dynamic>),
      stats: json['stats'] == null
          ? null
          : Agg.fromJson(json['stats'] as Map<String, dynamic>),
      extendedStats: json['extended_stats'] == null
          ? null
          : ExtendedStats.fromJson(
              json['extended_stats'] as Map<String, dynamic>),
      matrixStats: (json['matrix_stats'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      percentiles: json['percentiles'] == null
          ? null
          : Agg.fromJson(json['percentiles'] as Map<String, dynamic>),
      percentileRanks: json['percentile_ranks'] == null
          ? null
          : PercentileRanks.fromJson(
              json['percentile_ranks'] as Map<String, dynamic>),
      topHits: json['top_hits'] == null
          ? null
          : TopHits.fromJson(json['top_hits'] as Map<String, dynamic>),
      terms: json['terms'] == null
          ? null
          : Terms.fromJson(json['terms'] as Map<String, dynamic>),
      multiTerms: json['multi_terms'] == null
          ? null
          : MultiTerms.fromJson(json['multi_terms'] as Map<String, dynamic>),
      sampler: json['sampler'] as Map<String, dynamic>?,
      diversifiedSampler: json['diversified_sampler'] as Map<String, dynamic>?,
      significantTerms: json['significant_terms'] == null
          ? null
          : Agg.fromJson(json['significant_terms'] as Map<String, dynamic>),
      significantText: json['significant_text'] as Map<String, dynamic>?,
      histogram: json['histogram'] == null
          ? null
          : Histogram.fromJson(json['histogram'] as Map<String, dynamic>),
      dateHistogram: json['date_histogram'] == null
          ? null
          : Histogram.fromJson(json['date_histogram'] as Map<String, dynamic>),
      range: json['range'] == null
          ? null
          : Range.fromJson(json['range'] as Map<String, dynamic>),
      dateRange: json['date_range'] == null
          ? null
          : DateRange.fromJson(json['date_range'] as Map<String, dynamic>),
      ipRange: json['ip_range'] == null
          ? null
          : Range.fromJson(json['ip_range'] as Map<String, dynamic>),
      filter: json['filter'] as Map<String, dynamic>?,
      filters: json['filters'] as Map<String, dynamic>?,
      global: json['global'],
      nested: (json['nested'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      reverseNested: json['reverse_nested'],
      sumBucket: json['sum_bucket'] == null
          ? null
          : PipelineAgg.fromJson(json['sum_bucket'] as Map<String, dynamic>),
      avgBucket: json['avg_bucket'] == null
          ? null
          : PipelineAgg.fromJson(json['avg_bucket'] as Map<String, dynamic>),
      minBucket: json['min_bucket'] == null
          ? null
          : PipelineAgg.fromJson(json['min_bucket'] as Map<String, dynamic>),
      maxBucket: json['max_bucket'] == null
          ? null
          : PipelineAgg.fromJson(json['max_bucket'] as Map<String, dynamic>),
      statsBucket: json['stats_bucket'] == null
          ? null
          : PipelineAgg.fromJson(json['stats_bucket'] as Map<String, dynamic>),
      extendedStatsBucket: json['extended_stats_bucket'] == null
          ? null
          : PipelineAgg.fromJson(
              json['extended_stats_bucket'] as Map<String, dynamic>),
      bucketSort: json['bucket_sort'] as Map<String, dynamic>?,
      cumulativeSum: json['cumulative_sum'] == null
          ? null
          : PipelineAgg.fromJson(
              json['cumulative_sum'] as Map<String, dynamic>),
      derivative: json['derivative'] == null
          ? null
          : PipelineAgg.fromJson(json['derivative'] as Map<String, dynamic>),
      movingAvg: json['moving_avg'] == null
          ? null
          : MovingAvg.fromJson(json['moving_avg'] as Map<String, dynamic>),
      serialDiff: json['serial_diff'] == null
          ? null
          : SerialDiff.fromJson(json['serial_diff'] as Map<String, dynamic>),
      geoDistance: json['geo_distance'] == null
          ? null
          : GeoDistance.fromJson(json['geo_distance'] as Map<String, dynamic>),
      geohashGrid: json['geohash_grid'] == null
          ? null
          : Grid.fromJson(json['geohash_grid'] as Map<String, dynamic>),
      geohexGrid: json['geohex_grid'] == null
          ? null
          : Grid.fromJson(json['geohex_grid'] as Map<String, dynamic>),
      geotileGrid: json['geotile_grid'] == null
          ? null
          : Grid.fromJson(json['geotile_grid'] as Map<String, dynamic>),
      adjacencyMatrix: json['adjacency_matrix'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$AggsToJson(Aggs instance) => <String, dynamic>{
      'aggs': instance.aggs,
      'avg': instance.avg,
      'sum': instance.sum,
      'min': instance.min,
      'max': instance.max,
      'cardinality': instance.cardinality,
      'value_count': instance.valueCount,
      'stats': instance.stats,
      'extended_stats': instance.extendedStats,
      'matrix_stats': instance.matrixStats,
      'percentiles': instance.percentiles,
      'percentile_ranks': instance.percentileRanks,
      'top_hits': instance.topHits,
      'terms': instance.terms,
      'multi_terms': instance.multiTerms,
      'sampler': instance.sampler,
      'diversified_sampler': instance.diversifiedSampler,
      'significant_terms': instance.significantTerms,
      'significant_text': instance.significantText,
      'histogram': instance.histogram,
      'date_histogram': instance.dateHistogram,
      'range': instance.range,
      'date_range': instance.dateRange,
      'ip_range': instance.ipRange,
      'filter': instance.filter,
      'filters': instance.filters,
      'global': instance.global,
      'nested': instance.nested,
      'reverse_nested': instance.reverseNested,
      'sum_bucket': instance.sumBucket,
      'avg_bucket': instance.avgBucket,
      'min_bucket': instance.minBucket,
      'max_bucket': instance.maxBucket,
      'stats_bucket': instance.statsBucket,
      'extended_stats_bucket': instance.extendedStatsBucket,
      'bucket_sort': instance.bucketSort,
      'cumulative_sum': instance.cumulativeSum,
      'derivative': instance.derivative,
      'moving_avg': instance.movingAvg,
      'serial_diff': instance.serialDiff,
      'geo_distance': instance.geoDistance,
      'geohash_grid': instance.geohashGrid,
      'geohex_grid': instance.geohexGrid,
      'geotile_grid': instance.geotileGrid,
      'adjacency_matrix': instance.adjacencyMatrix,
    };

Grid _$GridFromJson(Map<String, dynamic> json) => Grid(
      field: json['field'] as String?,
      precision: json['precision'] as int?,
      bounds: json['bounds'],
      size: json['size'] as int?,
      shardSize: json['shardSize'] as int?,
    );

Map<String, dynamic> _$GridToJson(Grid instance) => <String, dynamic>{
      'field': instance.field,
      'precision': instance.precision,
      'bounds': instance.bounds,
      'size': instance.size,
      'shardSize': instance.shardSize,
    };

GeoDistance _$GeoDistanceFromJson(Map<String, dynamic> json) => GeoDistance(
      origin: json['origin'],
      range: json['range'] == null
          ? null
          : Range.fromJson(json['range'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GeoDistanceToJson(GeoDistance instance) =>
    <String, dynamic>{
      'origin': instance.origin,
      'range': instance.range,
    };

SerialDiff _$SerialDiffFromJson(Map<String, dynamic> json) => SerialDiff(
      lag: json['lag'] as int?,
      bucketsPath: json['buckets_path'] as String?,
    );

Map<String, dynamic> _$SerialDiffToJson(SerialDiff instance) =>
    <String, dynamic>{
      'lag': instance.lag,
      'buckets_path': instance.bucketsPath,
    };

MovingAvg _$MovingAvgFromJson(Map<String, dynamic> json) => MovingAvg(
      predict: json['predict'] as int?,
      window: json['window'] as int?,
      model: json['model'] as String?,
      settings: json['settings'] as Map<String, dynamic>?,
      pipelineAgg: json['pipeline_agg'] == null
          ? null
          : PipelineAgg.fromJson(json['pipeline_agg'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MovingAvgToJson(MovingAvg instance) => <String, dynamic>{
      'predict': instance.predict,
      'window': instance.window,
      'model': instance.model,
      'settings': instance.settings,
      'pipeline_agg': instance.pipelineAgg,
    };

PipelineAgg _$PipelineAggFromJson(Map<String, dynamic> json) => PipelineAgg(
      bucketsPath: json['buckets_path'] as String?,
    );

Map<String, dynamic> _$PipelineAggToJson(PipelineAgg instance) =>
    <String, dynamic>{
      'buckets_path': instance.bucketsPath,
    };

Range _$RangeFromJson(Map<String, dynamic> json) => Range(
      field: json['field'] as String?,
      ranges: (json['ranges'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$RangeToJson(Range instance) => <String, dynamic>{
      'field': instance.field,
      'ranges': instance.ranges,
    };

DateRange _$DateRangeFromJson(Map<String, dynamic> json) => DateRange(
      format: json['format'] as String?,
      field: json['field'] as String?,
      ranges: (json['ranges'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$DateRangeToJson(DateRange instance) => <String, dynamic>{
      'format': instance.format,
      'field': instance.field,
      'ranges': instance.ranges,
    };

Terms _$TermsFromJson(Map<String, dynamic> json) => Terms(
      field: json['field'] as String?,
      size: json['size'] as int?,
      missing: json['missing'] as String?,
      minDocCount: json['min_doc_count'] as int?,
    );

Map<String, dynamic> _$TermsToJson(Terms instance) => <String, dynamic>{
      'field': instance.field,
      'size': instance.size,
      'missing': instance.missing,
      'min_doc_count': instance.minDocCount,
    };

Histogram _$HistogramFromJson(Map<String, dynamic> json) => Histogram(
      field: json['field'] as String?,
      interval: json['interval'],
    );

Map<String, dynamic> _$HistogramToJson(Histogram instance) => <String, dynamic>{
      'field': instance.field,
      'interval': instance.interval,
    };

MultiTerms _$MultiTermsFromJson(Map<String, dynamic> json) => MultiTerms(
      terms: (json['terms'] as List<dynamic>?)
          ?.map((e) => Agg.fromJson(e as Map<String, dynamic>))
          .toList(),
      order: (json['order'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$MultiTermsToJson(MultiTerms instance) =>
    <String, dynamic>{
      'terms': instance.terms,
      'order': instance.order,
    };

TopHits _$TopHitsFromJson(Map<String, dynamic> json) => TopHits(
      size: json['size'] as int?,
    );

Map<String, dynamic> _$TopHitsToJson(TopHits instance) => <String, dynamic>{
      'size': instance.size,
    };

PercentileRanks _$PercentileRanksFromJson(Map<String, dynamic> json) =>
    PercentileRanks(
      field: json['field'] as String?,
      values: (json['values'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$PercentileRanksToJson(PercentileRanks instance) =>
    <String, dynamic>{
      'field': instance.field,
      'values': instance.values,
    };

Agg _$AggFromJson(Map<String, dynamic> json) => Agg(
      field: json['field'] as String?,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$AggToJson(Agg instance) => <String, dynamic>{
      'field': instance.field,
      'size': instance.size,
    };

ExtendedStats _$ExtendedStatsFromJson(Map<String, dynamic> json) =>
    ExtendedStats(
      field: json['field'] as String?,
      sigma: json['sigma'] as int?,
    );

Map<String, dynamic> _$ExtendedStatsToJson(ExtendedStats instance) =>
    <String, dynamic>{
      'field': instance.field,
      'sigma': instance.sigma,
    };

Cardinality _$CardinalityFromJson(Map<String, dynamic> json) => Cardinality(
      field: json['field'] as String?,
      precisionThreshold: json['precision_threshold'] as int?,
    );

Map<String, dynamic> _$CardinalityToJson(Cardinality instance) =>
    <String, dynamic>{
      'field': instance.field,
      'precision_threshold': instance.precisionThreshold,
    };

Match _$MatchFromJson(Map<String, dynamic> json) => Match(
      query: json['query'] as String?,
      fuzziness: json['fuzziness'] as String?,
      fuzzyTranspositions: json['fuzzy_transpositions'] as bool?,
      operator: json['operator'] as String?,
      minimumShouldMatch: json['minimum_should_match'] as int?,
      analyzer: json['analyzer'] as String?,
      zeroTermsQuery: json['zero_terms_query'] as String?,
      lenient: json['lenient'] as bool?,
      prefixLength: json['prefix_length'] as int?,
      maxExpansions: json['max_expansions'] as int?,
      boost: json['boost'] as int?,
    );

Map<String, dynamic> _$MatchToJson(Match instance) => <String, dynamic>{
      'query': instance.query,
      'fuzziness': instance.fuzziness,
      'fuzzy_transpositions': instance.fuzzyTranspositions,
      'operator': instance.operator,
      'minimum_should_match': instance.minimumShouldMatch,
      'analyzer': instance.analyzer,
      'zero_terms_query': instance.zeroTermsQuery,
      'lenient': instance.lenient,
      'prefix_length': instance.prefixLength,
      'max_expansions': instance.maxExpansions,
      'boost': instance.boost,
    };

MultiMatch _$MultiMatchFromJson(Map<String, dynamic> json) => MultiMatch(
      query: json['query'] as String?,
      fields:
          (json['fields'] as List<dynamic>?)?.map((e) => e as String).toList(),
      fuzziness: json['fuzziness'] as String?,
      fuzzyTranspositions: json['fuzzy_transpositions'] as bool?,
      operator: json['operator'] as String?,
      minimumShouldMatch: json['minimum_should_match'] as int?,
      analyzer: json['analyzer'] as String?,
      zeroTermsQuery: json['zero_terms_query'] as String?,
      lenient: json['lenient'] as bool?,
      prefixLength: json['prefix_length'] as int?,
      maxExpansions: json['max_expansions'] as int?,
      boost: json['boost'] as int?,
      type: json['type'] as String?,
      tieBreaker: (json['tie_breaker'] as num?)?.toDouble(),
      autoGenerateSynonymsPhraseQuery:
          json['auto_generate_synonyms_phrase_query'] as bool?,
    );

Map<String, dynamic> _$MultiMatchToJson(MultiMatch instance) =>
    <String, dynamic>{
      'query': instance.query,
      'fields': instance.fields,
      'fuzziness': instance.fuzziness,
      'fuzzy_transpositions': instance.fuzzyTranspositions,
      'operator': instance.operator,
      'minimum_should_match': instance.minimumShouldMatch,
      'analyzer': instance.analyzer,
      'zero_terms_query': instance.zeroTermsQuery,
      'lenient': instance.lenient,
      'prefix_length': instance.prefixLength,
      'max_expansions': instance.maxExpansions,
      'boost': instance.boost,
      'type': instance.type,
      'tie_breaker': instance.tieBreaker,
      'auto_generate_synonyms_phrase_query':
          instance.autoGenerateSynonymsPhraseQuery,
    };

MatchBoolPrefix _$MatchBoolPrefixFromJson(Map<String, dynamic> json) =>
    MatchBoolPrefix(
      query: json['query'] as String?,
      fuzziness: json['fuzziness'] as String?,
      fuzzyTranspositions: json['fuzzy_transpositions'] as bool?,
      maxExpansions: json['max_expansions'] as int?,
      prefixLength: json['prefix_length'] as int?,
      operator: json['operator'] as String?,
      minimumShouldMatch: json['minimum_should_match'] as int?,
      analyzer: json['analyzer'] as String?,
    );

Map<String, dynamic> _$MatchBoolPrefixToJson(MatchBoolPrefix instance) =>
    <String, dynamic>{
      'query': instance.query,
      'fuzziness': instance.fuzziness,
      'fuzzy_transpositions': instance.fuzzyTranspositions,
      'max_expansions': instance.maxExpansions,
      'prefix_length': instance.prefixLength,
      'operator': instance.operator,
      'minimum_should_match': instance.minimumShouldMatch,
      'analyzer': instance.analyzer,
    };

MatchPhrase _$MatchPhraseFromJson(Map<String, dynamic> json) => MatchPhrase(
      query: json['query'] as String?,
      slop: json['slop'] as int?,
      analyzer: json['analyzer'] as String?,
      zeroTermsQuery: json['zero_terms_query'] as String?,
    );

Map<String, dynamic> _$MatchPhraseToJson(MatchPhrase instance) =>
    <String, dynamic>{
      'query': instance.query,
      'slop': instance.slop,
      'analyzer': instance.analyzer,
      'zero_terms_query': instance.zeroTermsQuery,
    };

MatchPhrasePrefix _$MatchPhrasePrefixFromJson(Map<String, dynamic> json) =>
    MatchPhrasePrefix(
      query: json['query'] as String?,
      analyzer: json['analyzer'] as String?,
      maxExpansions: json['max_expansions'] as int?,
      slop: json['slop'] as int?,
    );

Map<String, dynamic> _$MatchPhrasePrefixToJson(MatchPhrasePrefix instance) =>
    <String, dynamic>{
      'query': instance.query,
      'analyzer': instance.analyzer,
      'max_expansions': instance.maxExpansions,
      'slop': instance.slop,
    };

QueryString _$QueryStringFromJson(Map<String, dynamic> json) => QueryString(
      query: json['query'] as String?,
      defaultField: json['default_field'] as String?,
      type: json['type'] as String?,
      fuzziness: json['fuzziness'] as String?,
      fuzzyTranspositions: json['fuzzy_transpositions'] as bool?,
      fuzzyMaxExpansions: json['fuzzy_max_expansions'] as int?,
      fuzzyPrefixLength: json['fuzzy_prefix_length'] as int?,
      minimumShouldMatch: json['minimum_should_match'] as int?,
      defaultOperator: json['default_operator'] as String?,
      analyzer: json['analyzer'] as String?,
      lenient: json['lenient'] as bool?,
      boost: json['boost'] as int?,
      allowLeadingWildcard: json['allow_leading_wildcard'] as bool?,
      enablePositionIncrements: json['enable_position_increments'] as bool?,
      phraseSlop: json['phrase_slop'] as int?,
      maxDeterminizedStates: json['max_determinized_states'] as int?,
      timeZone: json['time_zone'] as String?,
      quoteFieldSuffix: json['quote_field_suffix'] as String?,
      quoteAnalyzer: json['quote_analyzer'] as String?,
      analyzeWildcard: json['analyze_wildcard'] as bool?,
      autoGenerateSynonymsPhraseQuery:
          json['auto_generate_synonyms_phrase_query'] as bool?,
    );

Map<String, dynamic> _$QueryStringToJson(QueryString instance) =>
    <String, dynamic>{
      'query': instance.query,
      'default_field': instance.defaultField,
      'type': instance.type,
      'fuzziness': instance.fuzziness,
      'fuzzy_transpositions': instance.fuzzyTranspositions,
      'fuzzy_max_expansions': instance.fuzzyMaxExpansions,
      'fuzzy_prefix_length': instance.fuzzyPrefixLength,
      'minimum_should_match': instance.minimumShouldMatch,
      'default_operator': instance.defaultOperator,
      'analyzer': instance.analyzer,
      'lenient': instance.lenient,
      'boost': instance.boost,
      'allow_leading_wildcard': instance.allowLeadingWildcard,
      'enable_position_increments': instance.enablePositionIncrements,
      'phrase_slop': instance.phraseSlop,
      'max_determinized_states': instance.maxDeterminizedStates,
      'time_zone': instance.timeZone,
      'quote_field_suffix': instance.quoteFieldSuffix,
      'quote_analyzer': instance.quoteAnalyzer,
      'analyze_wildcard': instance.analyzeWildcard,
      'auto_generate_synonyms_phrase_query':
          instance.autoGenerateSynonymsPhraseQuery,
    };

SimpleQueryString _$SimpleQueryStringFromJson(Map<String, dynamic> json) =>
    SimpleQueryString(
      query: json['query'] as String?,
      fields:
          (json['fields'] as List<dynamic>?)?.map((e) => e as String).toList(),
      flags: json['flags'] as String?,
      fuzzyTranspositions: json['fuzzy_transpositions'] as bool?,
      fuzzyMaxExpansions: json['fuzzy_max_expansions'] as int?,
      fuzzyPrefixLength: json['fuzzy_prefix_length'] as int?,
      minimumShouldMatch: json['minimum_should_match'] as int?,
      defaultOperator: json['default_operator'] as String?,
      analyzer: json['analyzer'] as String?,
      lenient: json['lenient'] as bool?,
      quoteFieldSuffix: json['quote_field_suffix'] as String?,
      analyzeWildcard: json['analyze_wildcard'] as bool?,
      autoGenerateSynonymsPhraseQuery:
          json['auto_generate_synonyms_phrase_query'] as bool?,
    );

Map<String, dynamic> _$SimpleQueryStringToJson(SimpleQueryString instance) =>
    <String, dynamic>{
      'query': instance.query,
      'fields': instance.fields,
      'flags': instance.flags,
      'fuzzy_transpositions': instance.fuzzyTranspositions,
      'fuzzy_max_expansions': instance.fuzzyMaxExpansions,
      'fuzzy_prefix_length': instance.fuzzyPrefixLength,
      'minimum_should_match': instance.minimumShouldMatch,
      'default_operator': instance.defaultOperator,
      'analyzer': instance.analyzer,
      'lenient': instance.lenient,
      'quote_field_suffix': instance.quoteFieldSuffix,
      'analyze_wildcard': instance.analyzeWildcard,
      'auto_generate_synonyms_phrase_query':
          instance.autoGenerateSynonymsPhraseQuery,
    };
