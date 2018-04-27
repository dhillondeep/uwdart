/// This is the client for Browser applications. It will provide access to various
/// endpoints of UWaterloo Open API

import 'package:http/browser_client.dart' as http;
import 'package:uwdart/src/base/uwdart_base.dart';

/// endpoints of UWaterloo Open API

class UWDart extends UWDartBase {
  /// Initializes UWDart Client API based on the key provided. It also opens the
  /// connection with the API.
  UWDart(String key) : super(key, new http.BrowserClient());
}
