import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_version.g.dart';

/// This Data Model wraps data related to API Versions throughout the years of UW Open Data
/// API Development.
abstract class ApiVersion implements Built<ApiVersion, ApiVersionBuilder> {
  @nullable
  double get version;

  @BuiltValueField(wireName: "release_date")
  @nullable
  String get releaseDate;

  ApiVersion._();

  static Serializer<ApiVersion> get serializer => _$apiVersionSerializer;

  factory ApiVersion([updates(ApiVersionBuilder b)]) = _$ApiVersion;
}
