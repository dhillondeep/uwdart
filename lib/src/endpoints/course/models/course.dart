import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uwdart/src/endpoints/course/models/course_base.dart';

part 'course.g.dart';

/// This Data Model wraps simple data for a course. This is used when a list of courses is wanted
/// and a lot of information about the course is not needed.
abstract class Course implements CourseBase, Built<Course, CourseBuilder> {
  Course._();

  static Serializer<Course> get serializer => _$courseSerializer;

  factory Course([updates(CourseBuilder b)]) = _$Course;
}
