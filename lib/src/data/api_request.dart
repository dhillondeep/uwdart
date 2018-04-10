import 'dart:async';
import 'dart:convert';
import 'dart:core';

import 'package:dartson/dartson.dart';
import 'package:http/http.dart' as http;
import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/data/model/api_response.dart';

final String URLPrefix = "https://api.uwaterloo.ca/v2/";
final int SUCCESS_CODE = 200;
var dson = new Dartson.JSON();

/// Sends an HTTP GET request to UW API with a client provided. This Client
/// is gathered from http client. It also takes in a List of [String] that
/// are arguments which will be append to the URL
Future<APIResponse> createRequest(Client client, List<String> args,
    [List<String> filter = null]) async {
  String apiUrl = "";

  if (args != null && args.length > 0) {
    apiUrl = URLPrefix + args.join("/") + ".json?" + "key=" + client.getKey();
  } else {
    apiUrl = URLPrefix + "key=" + client.getKey();
  }

  if (filter != null && filter.length > 0) {
    apiUrl += "&" + filter.join("&");
  }

  http.Client httpClient = client.getHttpClient();

  return httpClient.get(apiUrl).then((responseData) {
    int internalCode = responseData.statusCode;

    Map<String, dynamic> jsonMap = JSON.decode(responseData.body);
    String bodyData = responseData.body;
    if (jsonMap["data"] is Map) {
      bodyData = responseData.body.replaceAll('"data":{', '"data":[{');
      bodyData = bodyData.replaceRange(bodyData.lastIndexOf("}}"), bodyData.length, "}]}");
    }

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

/// This parses the data from JSON to a list of Objects. This should
/// be used to convert between list of classes
List parseResponse(APIResponse response, Object obj) {
  return dson.map(response.data, obj, true);
}

/// Verifies the filter key value provided and based on that returns a filter
List<String> getValidFilter(String keyStart, String keyValue) {
  List<String> filter;

  if (keyValue == null) {
    filter = null;
  } else {
    filter = [keyStart + "=" + keyValue];
  }

  return filter;
}
