import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'course_subject.g.dart';

/// This Data Model wraps more data than simple course data. It stores subject data along with
/// description and academic level.
abstract class CourseSubject implements Built<CourseSubject, CourseSubjectBuilder> {
  @BuiltValueField(wireName: "course_id")
  @nullable
  String get courseId;

  @nullable
  String get subject;

  @BuiltValueField(wireName: "catalog_number")
  @nullable
  String get catalogNumber;

  @nullable
  String get title;

  @nullable
  num get units;

  @nullable
  String get description;

  @BuiltValueField(wireName: "academic_level")
  @nullable
  String get academicLevel;

  CourseSubject._();

  static Serializer<CourseSubject> get serializer => _$courseSubjectSerializer;

  factory CourseSubject([updates(CourseSubjectBuilder b)]) = _$CourseSubject;
}
