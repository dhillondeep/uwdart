import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/base/models/serializers.dart';
import 'package:uwdart/src/data/data_response.dart';
import 'package:uwdart/src/data/model/api_response.dart';

final int SUCCESS_CODE = 200;

/// Sends an HTTP GET request to UW API with a client provided. It also takes in a [String] that
/// is arguments, and parameters as [Map] which will be append to the URL. It throws an error
/// if a request to the api fails.
Future<List<Object>> CreateRequest(Client client, String args,
    [Map<String, String> params = null]) async {
  String apiUrl = '${API_PREFIX}${args}.json?key=${client.key}${params == null ? "" : _joinParams(
      params)}';

  final responseData = await client.httpClient.get(apiUrl);

  final bodyData = responseData.body;

  // ignore: invalid_assignment
  Map<String, Object> map = json.decode(bodyData);
  final response = new _Deserializer<APIResponse>(APIResponse.serializer).apply(map);

  if (responseData.statusCode != SUCCESS_CODE) {
    throw new RangeError("Request Failed (${responseData.statusCode}): ${response.meta.message}");
  } else {
    return [response, map["data"]];
  }
}

/// MultipleFetcher is used when we have to deserialize a list of objects. This will make the
/// request, parse the data, and deserialize into a list of objects.
class MultipleFetcher<T> extends _Fetcher<T> {
  MultipleFetcher(Serializer<T> serializer, Client client) : super(serializer, client);

  Future<DataResponse<List<T>>> apply(String args, [Map<String, String> params]) async {
    final request = await CreateRequest(client, args, params);

    // ignore: invalid_assignment
    APIResponse apiResponse = request[0];
    // ignore: invalid_assignment
    List<Map<String, Object>> rawData = request[1];

    // ignore: return_of_invalid_type_from_closure
    final data = rawData.map<T>((Map<String, Object> map) => deserializer.apply(map)).toList();
    return new DataResponse<List<T>>(apiResponse.meta, data);
  }
}

/// SingleFetcher is used when we have to deserialize a single object. This will make the request,
/// parse the data, and deserialize into the object.
class SingleFetcher<T> extends _Fetcher<T> {
  SingleFetcher(Serializer<T> serializer, Client client) : super(serializer, client);

  Future<DataResponse<T>> apply(String args, [Map<String, String> params]) async {
    final request = await CreateRequest(client, args, params);

    // ignore: invalid_assignment
    APIResponse apiResponse = request[0];
    // ignore: invalid_assignment
    Map<String, Object> rawData = request[1];

    // ignore: invalid_assignment
    T data = deserializer.apply(rawData);
    return new DataResponse<T>(apiResponse.meta, data);
  }
}

/// It joins the arguments provides to make them in the formet accepted by an http API request.
String JoinArgs(List<String> args) {
  String toReturn = '';
  int index = 0;

  args.forEach((value) {
    if (value != '' && value != null) {
      toReturn += '${index > 0 ? '/' : ''}${value}';
      ++index;
    }
  });

  return toReturn;
}

/// This class deserialize the JSON map into a concrete object.
class _Deserializer<T> {
  static final standardSerializers =
      (serializers.toBuilder()..addPlugin(new StandardJsonPlugin())).build();

  final Serializer<T> serializer;

  _Deserializer(this.serializer);

  T apply(Map<String, Object> map) {
    return standardSerializers.deserializeWith<T>(serializer, map);
  }
}

/// A Base class Fetcher creates a new http request, fetches the data and deserialize it
class _Fetcher<T> {
  final Serializer<T> _serializer;
  final Client _client;
  final _Deserializer _deserializer;

  _Fetcher(this._serializer, this._client) : _deserializer = new _Deserializer<T>(_serializer);

  Serializer<T> get serializer => _serializer;

  Client get client => _client;

  _Deserializer get deserializer => _deserializer;
}

/// It joins the params provides to make them in the format accepted by an http API request.
String _joinParams(Map<String, String> params) {
  String toReturn = "";

  params.forEach((key, value) {
    if (value != "" && value != null) {
      toReturn += '&${key}=${value}';
    }
  });

  return toReturn;
}
