import 'package:uwdart/src/data/model/meta.dart';

/// This class holds metadata for the http request and the endpoint data
/// All requests return an object of this class.
class DataResponse<T> {
  final Meta meta;
  final T data;

  DataResponse(this.meta, this.data);
}
