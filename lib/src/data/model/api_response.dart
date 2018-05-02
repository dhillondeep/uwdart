import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:uwdart/src/data/model/meta.dart';

part 'api_response.g.dart';

/// This Data Model wraps the raw response from the UW API and provides getters and setters for
/// various fields. It however also provides an access to the raw response as a string
abstract class APIResponse implements Built<APIResponse, APIResponseBuilder> {
  @nullable
  Meta get meta;

  @nullable
  JsonObject get data;

  static Serializer<APIResponse> get serializer => _$aPIResponseSerializer;

  factory APIResponse([updates(APIResponseBuilder b)]) = _$APIResponse;

  APIResponse._();
}
