import 'package:http/http.dart' as http;

/// This client class a wrapper for HTTP Client and the key used for the API.
/// This way this [Client] object can be passed one connected. Fields are
/// immutable and hence, connection has to be closed and a new Client will be
/// created by OpenConnection.
class Client {
  final String _key;
  http.Client _client;

  Client(String key, http.Client client)
      : _key = key,
        _client = client {}

  /// Gives access to the underlying key
  String getKey() {
    return _key;
  }

  /// Gives access to the underlying http client
  http.Client getHttpClient() {
    return _client;
  }
}
