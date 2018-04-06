import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:uwdart/src/api/api.dart' as api;

http.Client _client = null;

/// Before making any calls to the API, connection has to be opened. This call
/// opens the connection and stores the client, which then is used to make
/// all the API calls. This is particularly useful when you need to make
/// multiple calls and opening connection multiple times is not time effective.
OpenConnection() {
  if (_client == null) {
    _client = new http.Client();
  } else {
    throw new StateError("There is a client already open. Close that first");
  }
}

/// Closes the connection that previously opened. It cleans up the resources
/// associated with it and hence must always be called. Failing to do so can
/// cause the Dart process to hang.
CloseConnection() {
  if (_client != null) {
    _client.close();
  }
}

/// This allows the user to make raw requests to the API and get a Map of string
/// value pair. This is useful when testing the API. Otherwise built in API
/// parsers must be used since they do all the heavy lifting for you.
Future<Map> MakeRawRequest(String key, [List arguments = null]) {
  api.setApiKey(key);
  return api
      .getApiJSONData(_client, arguments)
      .catchError((error) => throw error);
}
