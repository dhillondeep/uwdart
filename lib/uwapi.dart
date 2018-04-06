import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:uwdart/src/base/client.dart';
import 'package:uwdart/src/data/api_request.dart' as api;
import 'package:uwdart/src/data/model/api_response.dart' as response;

/// Before making any calls to the API, connection has to be opened. This call
/// opens the connection and stores the client, which then is used to make
/// all the API calls. This is particularly useful when you need to make
/// multiple calls and opening connection multiple times is not time effective.
OpenConnection(String key) {
  return new Client(key, new http.Client());
}

/// Closes the connection that previously opened. It cleans up the resources
/// associated with it and hence must always be called. Failing to do so can
/// cause the Dart process to hang.
CloseConnection(Client client) {
  client.getHttpClient().close();
}

/// This allows the user to make raw requests to the API and get an [response.APIResponse] object
/// value pair. This is useful when testing the API. Otherwise built in API
/// parsers must be used since they do all the heavy lifting for you.
Future<response.APIResponse> MakeRawRequest(Client client, [List arguments = null]) {
  return api.createRequest(client, arguments).catchError((error) => throw error);
}
