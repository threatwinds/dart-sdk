import 'package:threatwinds_sdk/threatwinds_sdk.dart';
import 'package:test/test.dart';

void main() {
  group('Entities:', () {
    test('Get consolidated', () {
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

      expect(resp, completes);

      resp.then((body) {
        EntityResults result = EntityResults.fromJson(body);
        print(result);
      });
    });

    test("Get history", () {
      final client = Client(hostname: "intelligence.threatwinds.com");

      Map<String, String> params = {
        "limit": "100",
      };

      const query =
          '{"aggs":{"byTypes":{"terms":{"field":"type.keyword"}}},"query":{"must":[{"terms":{"type.keyword":["domain","hostname","url","ip","malware","sha1","sha224","sha256","sha384","sha512","sha512-224","sha512-256","sha3-224","sha3-256","sha3-384","sha3-512","authentihash","cdhash","md5"]}}]},"source":{"includes":["*"]}}';

      final req = Request(
          method: "POST",
          endpoint: "/api/search/v1/entities/history",
          query: query,
          params: params);

      final resp = req.doReq(cli: client);

      expect(resp, completes);

      resp.then((body) {
        EntityHistoryResults result = EntityHistoryResults.fromJson(body);
        print(result);
      });
    });
  });
}
