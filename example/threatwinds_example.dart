import 'package:threatwinds_sdk/threatwinds_sdk.dart';

void main() {
  final client = Client(hostname: "intelligence.threatwinds.com");

  final req = Request(
    method: "GET",
    endpoint:
        "/api/analytics/v1/entity/ip-ba7fa36bff8d58ee45b973615e83d9aaeb921f1cc477d9c156e8a9cae8cca16e/details",
  );

  final resp = req.doReq(cli: client);

  resp.then((body) {
    Details result = Details();
    result.fromJson(body);
    print(result.toJson());
  });

  resp.catchError((error) {
    throw Exception(error);
  });
}
