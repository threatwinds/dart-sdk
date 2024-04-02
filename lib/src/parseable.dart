library threatwinds_sdk.parseable;

abstract interface class Parseable {
  String toJson();
  void fromJson(Map<String, dynamic> object);
}
