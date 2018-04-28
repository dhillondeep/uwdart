import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:http/http.dart' as http;
import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/models/serializers.dart';
import 'package:uwdart/src/data/model/api_response.dart';
import 'package:uwdart/src/data/model/meta.dart';

final int SUCCESS_CODE = 200;

/// Sends an HTTP GET request to UW API with a client provided. This Client
/// is gathered from http client. It also takes in a List of [String] that
/// are arguments which will be append to the URL
Future<APIResponse> CreateRequest(Client client, List<String> args,
    [List<String> filter = null]) async {
  String apiUrl = "";

  if (args != null && args.isNotEmpty) {
    apiUrl = '$API_PREFIX${args.join("/")}.json?key=${client.key}';
  } else {
    apiUrl = '${API_PREFIX}?key=${client.key}';
  }

  if (filter != null && filter.isNotEmpty) {
    apiUrl += '&${filter.join("&")}';
  }

  http.BaseClient httpClient = client.httpClient;

  return httpClient.get(apiUrl).then((responseData) {
    int internalCode = responseData.statusCode;

    String bodyData = responseData.body;

    // make every data packet a list to handle all types of data
    if (!responseData.body.contains('"data":[{')) {
      bodyData = responseData.body.replaceAll('"data":{', '"data":[{');
      bodyData = bodyData.replaceRange(bodyData.lastIndexOf('}}'), bodyData.length, '}]}');
    }

    // ignore: invalid_assignment
    final map = json.decode(bodyData);
    map['raw'] = responseData.body;

    Meta meta = new Deserializer<Meta>(Meta.serializer).apply(map["meta"]);
    final response = new APIResponse((b) => b
      ..meta = meta.toBuilder()
      ..raw = map["raw"]
      ..data = map["data"]);

    if (internalCode == SUCCESS_CODE) {
      int uwApiCode = response.meta.status;

      if (uwApiCode == SUCCESS_CODE) {
        return response;
      } else {
        throw new RangeError("UW API Request Failed: ${uwApiCode} => "
            "${response.meta.message}. Check provided Arguments!");
      }
    } else {
      throw new RangeError("Internal Request Failed: ${internalCode} => "
          "${response.meta.message}. "
          "Check provided Arguments!");
    }
  });
}

class Deserializer<T> {
  static final standardSerializers =
      (serializers.toBuilder()..addPlugin(new StandardJsonPlugin())).build();

  final Serializer<T> serializer;

  Deserializer(this.serializer);

  T apply(Map<String, Object> map) {
    return standardSerializers.deserializeWith<T>(serializer, map);
  }
}

class Fetcher<T> {
  final Serializer<T> serializer;
  final Client client;

  Fetcher(this.serializer, this.client);

  Future<List<T>> fetch(List<String> args, [List<String> filter = null]) {
    Deserializer deserializer = new Deserializer(serializer);

    return CreateRequest(client, args, filter).then((response) {
      final data = response.data;
      return data.map<T>((Map<String, Object> map) => deserializer.apply(map)).toList();
    });
  }

  Future<T> fetchSingle(List<String> args, [List<String> filter = null]) {
    Deserializer deserializer = new Deserializer(serializer);

    return CreateRequest(client, args, filter).then((response) {
      final data = response.data;
      return data.map<T>((Map<String, Object> map) => deserializer.apply(map)).toList()[0];
    });
  }
}

/// Verifies the filter key value provided and based on that returns a filter
List<String> GetValidFilter(String keyStart, String keyValue) {
  List<String> filter;

  if (keyValue == null) {
    filter = null;
  } else {
    filter = [keyStart + "=" + keyValue];
  }

  return filter;
}
