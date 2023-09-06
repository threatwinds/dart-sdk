import 'package:threatwinds/threatwinds.dart';

void main() {
  var client = Client(hostname: "intelligences.threatwinds.com");
  var request = Request(
      endpoint: "/api/search/v1/entities",
      method: "POST",
      query:
          '{"aggs":{"top-malware-types":{"terms":{"field":"attributes.malware-type.keyword","size":50}},"accuracy-stats":{"stats":{"field":"accuracy"}}},"query":{"filter":[{"term":{"type":{"value":"malware"}}}]},"source":{"excludes":["attributes.malware-family"],"includes":["attributes"]}}');

  final resp = request.doReq<Map<String, dynamic>>(cli: client);
  resp.then((value) => print(value));
}
