import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'dart:mirrors';
import 'package:dartson/dartson.dart';
import 'package:http/http.dart' as http;
import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/base/endpoints.dart';
import 'package:uwdart/src/data/model/api_response.dart';

final String URLPrefix = API_PREFIX;
final int SUCCESS_CODE = 200;
Dartson dson = new Dartson.JSON();

/// Sends an HTTP GET request to UW API with a client provided. This Client
/// is gathered from http client. It also takes in a List of [String] that
/// are arguments which will be append to the URL
Future<APIResponse> CreateRequest(Client client, List<String> args,
    [List<String> filter = null]) async {
  String apiUrl = "";

  if (args != null && args.length > 0) {
    apiUrl = URLPrefix + args.join("/") + ".json?" + "key=" + client.key;
  } else {
    apiUrl = URLPrefix + "key=" + client.key;
  }

  if (filter != null && filter.length > 0) {
    apiUrl += "&" + filter.join("&");
  }

  http.BaseClient httpClient = client.httpClient;

  return httpClient.get(apiUrl).then((responseData) {
    int internalCode = responseData.statusCode;

    // ignore: invalid_assignment
    Map<String, dynamic> jsonMap = JSON.decode(responseData.body);
    String bodyData = responseData.body;
    if (jsonMap["data"] is Map) {
      bodyData = responseData.body.replaceAll('"data":{', '"data":[{');
      bodyData = bodyData.replaceRange(bodyData.lastIndexOf("}}"), bodyData.length, "}]}");
    }

    // ignore: invalid_assignment
    APIResponse request = dson.decode(bodyData, new APIResponse());
    request.raw = responseData.body;

    if (internalCode == SUCCESS_CODE) {
      int uwApiCode = request.meta.status;

      if (uwApiCode == SUCCESS_CODE) {
        return request;
      } else {
        throw new RangeError("UW API Request Failed: ${uwApiCode} => "
            "${request.meta.message}. Check provided Arguments!");
      }
    } else {
      throw new RangeError("Internal Request Failed: ${internalCode} => "
          "${request.meta.message}. "
          "Check provided Arguments!");
    }
  }).catchError((e) => throw (e));
}

/// ResponseParser class allows for static type check by providing type T and then parsing the map
/// data to T type object.
class ResponseParser<T> {
  /// creates an instance of type [T] using reflection
  static createInstance(Type type) {
    if (type == null) {
      throw new ArgumentError("type: $type");
    }

    Symbol constructor = const Symbol("");
    List<String> arguments = const [];
    Map<Symbol, String> namedArguments = new Map();

    var typeMirror = reflectType(type);
    if (typeMirror is ClassMirror) {
      return typeMirror.newInstance(constructor, arguments, namedArguments).reflectee;
    } else {
      throw new ArgumentError("Cannot create the instance of the type '$type'.");
    }
  }

  /// This parses the data from JSON to a list of Objects. This should
  /// be used to convert between list of classes
  List<T> parse(APIResponse response) {
    // ignore: return_of_invalid_type
    return dson.map(response.data, createInstance(T), true);
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
