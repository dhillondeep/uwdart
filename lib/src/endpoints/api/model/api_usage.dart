import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_usage.g.dart';

/// This Data Model wraps data related to API usage by the user of the key. It contains
/// information about the name, key, monthly calls, and total calls.
abstract class ApiUsage implements Built<ApiUsage, ApiUsageBuilder> {
  @nullable
  String get name;

  @BuiltValueField(wireName: "api_key")
  @nullable
  String get apiKey;

  @BuiltValueField(wireName: "monthly_calls")
  @nullable
  int get monthlyCalls;

  @BuiltValueField(wireName: "total_calls")
  @nullable
  int get totalCalls;

  ApiUsage._();

  static Serializer<ApiUsage> get serializer => _$apiUsageSerializer;

  factory ApiUsage([updates(ApiUsageBuilder b)]) = _$ApiUsage;
}
