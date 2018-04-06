import 'dart:async';
import 'dart:convert';
import 'dart:core';
import 'package:http/http.dart' as http;

final String URLPrefix = "https://api.uwaterloo.ca/v2/";
final int SUCCESS_CODE = 200;
String apiKey = "";

/// Set the API key for the user. This is once set and then all the calls
/// are made using this key
setApiKey(String key) {
  apiKey = key;
}

/// Sends an HTTP GET request to UW API with a client provided. This Client
/// is gathered from http client. It also takes in a List of [String] that
/// are arguments which will be append to the URL
Future<Map> getApiJSONData(http.Client client, [List args = null]) async {
  String apiUrl = "";

  if (args != null) {
    apiUrl = URLPrefix + args.join("/") + ".json?" + "key=" + apiKey;
  } else {
    apiUrl = URLPrefix + "key=" + apiKey;
  }

  return await client.get(apiUrl).then((responseData) {
    int internalCode = responseData.statusCode;
    Map decoded = JSON.decode(responseData.body);

    if (internalCode == SUCCESS_CODE) {
      int uwApiCode = decoded["meta"]["status"];

      if (uwApiCode == SUCCESS_CODE) {
        return decoded["data"];
      } else {
        throw new RangeError("UW API Request Failed: ${uwApiCode} => "
            "${decoded["meta"]["message"]}. Check provided Arguments!");
      }
    } else {
      throw new RangeError("Internal Request Failed: ${internalCode} => "
          "${decoded["meta"]["message"]}. "
          "Check provided Arguments!");
    }
  }).catchError((e) => throw (e));
}
