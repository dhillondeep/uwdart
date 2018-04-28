import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_method.g.dart';

/// This Data Model wraps data related to API methods that are available for every service.
abstract class ApiMethod implements Built<ApiMethod, ApiMethodBuilder> {
  @BuiltValueField(wireName: "method_id")
  @nullable
  int get methodId;

  @BuiltValueField(wireName: "method_url")
  @nullable
  String get methodUrl;

  @BuiltValueField(wireName: "service_id")
  @nullable
  int get serviceId;

  @BuiltValueField(wireName: "service_name")
  @nullable
  String get serviceName;

  @nullable
  BuiltList<String> get parameters;

  ApiMethod._();

  static Serializer<ApiMethod> get serializer => _$apiMethodSerializer;

  factory ApiMethod([updates(ApiMethodBuilder b)]) = _$ApiMethod;
}
