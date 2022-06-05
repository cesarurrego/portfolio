import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

enum Method { POST, GET, PUT, DELETE, PATCH }

class HttpService {

  Future<http.Response> request({
    required String apiHost,
    required String url,
    required Method method,
    dynamic body,
    Map<String, String>? headers,
    Map<String, dynamic>? params,
  }) async {
    final client = http.Client();
    final uri = Uri.parse('$apiHost$url');
    final reqHeaders = headers;
    http.Response response;
    var logger = Logger();

    try {
      if (method == Method.POST) {
        response = await client.post(uri, headers: reqHeaders, body: jsonEncode(body));
      } else if (method == Method.PUT) {
        response = await client.put(uri, headers: reqHeaders, body: body);
      } else if (method == Method.DELETE) {
        response = await client.delete(uri, headers: reqHeaders, body: body);
      } else if (method == Method.PATCH) {
        response = await client.patch(uri, headers: reqHeaders, body: body);
      } else {
        response = await client.get(uri, headers: reqHeaders);
      }
      return response;
    } catch (e) {
      logger.w(Level.warning, e);
      throw Exception(e);
    } finally {
      client.close();
    }
  }
}
