import 'package:threatwinds_sdk/threatwinds_sdk.dart';

void main() {
  final client = Client(hostname: "intelligence.threatwinds.com");

  Map<String, String> params = {
    "limit": "100",
  };

  const query =
      '{"aggs":{"byTypes":{"terms":{"field":"type.keyword"}}},"query":{"must":[{"terms":{"type.keyword":["domain","hostname","url","ip","malware","sha1","sha224","sha256","sha384","sha512","sha512-224","sha512-256","sha3-224","sha3-256","sha3-384","sha3-512","authentihash","cdhash","md5"]}}]},"source":{"includes":["*"]}}';

  final req = Request(
      method: "POST",
      endpoint: "/api/search/v1/entities",
      query: query,
      params: params);

  final resp = req.doReq(cli: client);

  resp.then((body) {
    EntityResults result = EntityResults();
    result.fromJson(body);
    print(result.toJson());
  });
}
