/// This is the client for IO applications. It will provide access to various
/// endpoints of UWaterloo Open API

import 'package:http/http.dart' as http;
import 'package:uwdart/src/base/uwdart_base.dart';

class UWDart extends UWDartBase {
  /// Initializes UWDart Client API based on the key provided. It also opens the
  /// connection with the API.
  UWDart(String key) : super(key, new http.Client());
}
