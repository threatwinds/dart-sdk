library threatwinds_sdk.client;

class Client {
  String hostname;

  String? authorization;
  Map<String, String>? keys;

  Client({required this.hostname, this.authorization, this.keys});
}
