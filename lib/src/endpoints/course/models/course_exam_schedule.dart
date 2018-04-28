import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'course_exam_schedule.g.dart';

/// This Data Model wraps data related to exam schedules. It has a name of the course and examination
/// information for it's each section.
abstract class CourseExamSchedule implements Built<CourseExamSchedule, CourseExamScheduleBuilder> {
  @nullable
  String get course;

  @nullable
  BuiltList<CourseExamSection> get sections;

  CourseExamSchedule._();

  static Serializer<CourseExamSchedule> get serializer => _$courseExamScheduleSerializer;

  factory CourseExamSchedule([updates(CourseExamScheduleBuilder b)]) = _$CourseExamSchedule;
}

/// This Data Model is used by [CourseExamSchedule] to warp exam schedule information for each
/// individual section.
abstract class CourseExamSection implements Built<CourseExamSection, CourseExamSectionBuilder> {
  @nullable
  String get section;

  @nullable
  String get day;

  @nullable
  String get date;

  @BuiltValueField(wireName: "start_time")
  @nullable
  String get startTime;

  @BuiltValueField(wireName: "end_time")
  @nullable
  String get endTime;

  @nullable
  String get location;

  @nullable
  String get notes;

  CourseExamSection._();

  static Serializer<CourseExamSection> get serializer => _$courseExamSectionSerializer;

  factory CourseExamSection([updates(CourseExamSectionBuilder b)]) = _$CourseExamSection;
}
