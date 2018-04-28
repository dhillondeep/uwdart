import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'course_prerequisite.g.dart';

/// This Data Model wraps data related to prerequisites of a course. It only contains brief
/// information about the course.
abstract class CoursePrerequisite implements Built<CoursePrerequisite, CoursePrerequisiteBuilder> {
  @nullable
  String get subject;

  @BuiltValueField(wireName: "catalog_number")
  @nullable
  String get catalogNumber;

  @nullable
  String get title;

  @nullable
  String get prerequisites;

  @BuiltValueField(wireName: "prerequisites_parsed", serialize: false)
  @nullable
  BuiltList<Object> get prerequisitesParsed;

  CoursePrerequisite._();

  static Serializer<CoursePrerequisite> get serializer => _$coursePrerequisiteSerializer;

  factory CoursePrerequisite([updates(CoursePrerequisiteBuilder b)]) = _$CoursePrerequisite;
}
