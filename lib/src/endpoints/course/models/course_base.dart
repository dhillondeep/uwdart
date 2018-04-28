import 'package:built_value/built_value.dart';

part 'course_base.g.dart';

@BuiltValue(instantiable: false)
abstract class CourseBase {
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

  CourseBase rebuild(void updates(CourseBaseBuilder b));

  CourseBaseBuilder toBuilder();
}
