import 'package:threatwinds_sdk/threatwinds_sdk.dart';
import 'package:test/test.dart';

void main() {
  group('Analytics:', () {
    test('Details', () {
      final client = Client(hostname: "intelligence.threatwinds.com");

      final req = Request(
        method: "GET",
        endpoint:
            "/api/analytics/v1/entity/ip-ef7e584b1e7de2bb6d3ae54d43dff6b98ba4f98c835cb2fcdbea0ccb2896c744/details",
      );

      final resp = req.doReq(cli: client);

      expect(resp, completes);

      resp.then((body) {
        Details result = Details.fromJson(body);
        print(result);
      });
    });
  });
}
