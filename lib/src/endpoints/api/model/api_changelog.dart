import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_changelog.g.dart';

/// This Data models wraps data related to change logs for the API. It contains typical date
/// and a list of changes made.
abstract class ApiChangelog implements Built<ApiChangelog, ApiChangelogBuilder> {
  @nullable
  String get date;

  @nullable
  BuiltList<String> get changes;

  ApiChangelog._();

  static Serializer<ApiChangelog> get serializer => _$apiChangelogSerializer;

  factory ApiChangelog([updates(ApiChangelogBuilder b)]) = _$ApiChangelog;
}
