import 'package:uwdart/src/base/client.dart';

/// UWEndpoint is an abstract class that is used as a base class for every endpoint implementation.
abstract class UWEndpoint {
  final Client _client;

  UWEndpoint(Client client) : _client = client;

  /// Gives access to the http client that is being used.
  Client get client => _client;
}
