import 'package:uwdart/src/base/client.dart';

/// UWApi is an abstract class that is used as a base class for every UW API implementation.
abstract class UWApi {
  final Client _client;

  UWApi(Client client) : _client = client;

  /// Gives access to the http client that is being used.
  Client get client => _client;
}
