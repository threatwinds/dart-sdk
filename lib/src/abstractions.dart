library threatwinds_sdk.abstractions;

abstract interface class Json {
  String toJson();
  void fromJson(Map<String, dynamic> object);
}