import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_service.g.dart';

/// This Data Model wraps data related to all the API services that are offered through UW
/// Open Data API.
abstract class ApiService implements Built<ApiService, ApiServiceBuilder> {
  @BuiltValueField(wireName: "service_id")
  @nullable
  int get serviceId;

  @BuiltValueField(wireName: "service_name")
  @nullable
  String get serviceName;

  @BuiltValueField(wireName: "service_url")
  @nullable
  String get serviceUrl;

  @nullable
  BuiltList<ApiServiceMethod> get methods;

  ApiService._();

  static Serializer<ApiService> get serializer => _$apiServiceSerializer;

  factory ApiService([updates(ApiServiceBuilder b)]) = _$ApiService;
}

/// This Data Model is used by [ApiService] to store brief information about method available
/// for each API service.
abstract class ApiServiceMethod implements Built<ApiServiceMethod, ApiServiceMethodBuilder> {
  @BuiltValueField(wireName: "method_id")
  @nullable
  int get methodId;

  @BuiltValueField(wireName: "method_url")
  @nullable
  String get methodUrl;

  ApiServiceMethod._();

  static Serializer<ApiServiceMethod> get serializer => _$apiServiceMethodSerializer;

  factory ApiServiceMethod([updates(ApiServiceMethodBuilder b)]) = _$ApiServiceMethod;
}
