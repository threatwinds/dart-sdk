import 'package:threatwinds/threatwinds.dart';

void main() {
  var client = Client(hostname: "intelligence.threatwinds.com");
  var request = Request(
      endpoint: "/api/search/v1/entities",
      method: "POST",
      query:
          '{"aggs":{"top-malware-types":{"terms":{"field":"attributes.malware-type.keyword","size":50}},"accuracy-stats":{"stats":{"field":"accuracy"}}},"query":{"filter":[{"term":{"type":{"value":"malware"}}}]},"source":{"excludes":["attributes.malware-family"],"includes":["attributes"]}}');

  var resp = request.doReq<Map<String, dynamic>>(cli: client);
  print("waiting for values...");
  resp.then((value) => print(value));
}
