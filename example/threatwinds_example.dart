import 'dart:convert';

import 'package:threatwinds_sdk/threatwinds_sdk.dart';

void main() {
  final client = Client(hostname: 'intelligence.threatwinds.com');

  Map<String, dynamic> params = {
    'limit': '50',
  };

  Map<String, String> headers = {'Content-Type': 'application/json'};

  final query = SimpleSearch(
    query: '8.8.8.8',
  );

  final tquery = json.encode(query.toJson());
  print(tquery);

  final req = Request(
      method: 'POST',
      endpoint: '/api/search/v1/entities/simple',
      query: tquery,
      headers: headers,
      params: params);

  final resp = req.doReq(cli: client);

  resp.then((body) {
    EntityResults result = EntityResults.fromJson(body);
    print(result.toJson());
  });

  resp.catchError((error) {
    throw Exception(error);
  });
}
