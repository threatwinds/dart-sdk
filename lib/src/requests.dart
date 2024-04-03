library threatwinds_sdk.requests;

import 'dart:convert';
import 'client.dart';
import 'package:http/http.dart' as http;

class Request {
  String method;
  String endpoint;
  String? query;
  Map<String, dynamic>? params;
  Map<String, String>? headers;

  Request(
      {required this.method,
      required this.endpoint,
      this.query,
      this.params,
      this.headers});

  Future<Map<String, dynamic>> doReq({required Client cli}) async {
    http.Response resp;

    if (cli.authorization != null) {
      if (headers != null) {
        headers!.addEntries(
            [MapEntry("Authorization", cli.authorization.toString())]);
      } else {
        headers = {"Authorization": cli.authorization.toString()};
      }
    }

    if (cli.keys != null) {
      if (headers != null) {
        cli.keys!.forEach((key, secret) {
          headers!.addEntries(
              [MapEntry("api-key", key), MapEntry("api-secret", secret)]);
        });
      } else {
        cli.keys!.forEach((key, secret) {
          headers = {"api-key": key, "api-secret": secret};
        });
      }
    }

    switch (method) {
      case "GET":
        {
          resp = await http.get(Uri.https(cli.hostname, endpoint, params),
              headers: headers);
        }
        break;

      case "POST":
        {
          resp = await http.post(Uri.https(cli.hostname, endpoint, params),
              headers: headers, body: query);
        }
        break;

      case "PUT":
        {
          resp = await http.put(Uri.https(cli.hostname, endpoint, params),
              headers: headers, body: query);
        }
        break;

      case "DELETE":
        {
          resp = await http.delete(Uri.https(cli.hostname, endpoint, params),
              headers: headers, body: query);
        }
        break;

      default:
        {
          resp = await http.get(Uri.https(cli.hostname, endpoint, params),
              headers: headers);
        }
        break;
    }

    if (resp.statusCode == 200 || resp.statusCode == 202) {
      return jsonDecode(resp.body) as Map<String, dynamic>;
    } else if (resp.statusCode == 204) {
      throw Exception('empty response: ${resp.body}');
    } else {
      throw Exception('unexpected response: ${resp.body}');
    }
  }
}
