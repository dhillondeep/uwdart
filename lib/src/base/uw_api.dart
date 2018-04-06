import 'package:uwdart/src/base/client.dart';

/// UWApi is an abstract class that is used as a base class for every API implementation under
/// UW Open Data API.
abstract class UWApi {
  final Client _client;

  UWApi(Client client) : _client = client;

  Client get client => _client;
}
