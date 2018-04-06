import 'package:uwdart/src/data/api_request.dart';
import 'package:uwdart/src/data/model/api_response.dart';

/// ResponseParses parses the API Response to a list of specific classes. This way
/// objects can be used to access data.
class ResponseParser<T> {
  APIResponse _response;

  ResponseParser(APIResponse response) : _response = response {}

  /// parse parses the data from JSON to a list of Objects. This should
  /// be used to convert between list of classes
  List<T> parseList(Object obj) {
    return dson.map(_response.data, obj, true);
  }
}
