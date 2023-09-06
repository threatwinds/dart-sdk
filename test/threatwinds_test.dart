import 'package:threatwinds_sdk/threatwinds_sdk.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Client(hostname: "intelligence.threatwinds.com");

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.hostname, awesome.hostname);
    });
  });
}
