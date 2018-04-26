/// This client class a wrapper for HTTP Client and the key used for the API.
/// This way this [Client] object can be passed one connected. Fields are
/// immutable and hence, connection has to be closed and a new Client will be
/// created by OpenConnection.

import 'package:http/http.dart' as http;

class Client {
  final String _key;
  http.Client _client;

  Client(String key, dynamic client)
      : _key = key,
        _client = client {}

  String get key => _key;

  http.Client get httpClient => _client;
}
