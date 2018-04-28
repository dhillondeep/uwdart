import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'course_schedule.g.dart';

/// This Data Model wraps data related to a schedule for a course/class. It contains enrollment
/// information and reasonable amount of course information.
abstract class CourseSchedule implements Built<CourseSchedule, CourseScheduleBuilder> {
  @nullable
  String get subject;

  @BuiltValueField(wireName: "catalog_number")
  @nullable
  String get catalogNumber;

  @nullable
  num get units;

  @nullable
  String get title;

  @nullable
  String get note;

  @BuiltValueField(wireName: "class_number")
  @nullable
  int get classNumber;

  @nullable
  String get section;

  @nullable
  String get campus;

  @BuiltValueField(wireName: "associated_class")
  @nullable
  int get associatedClass;

  @BuiltValueField(wireName: "releated_component_1")
  @nullable
  String get relatedComponent1;

  @BuiltValueField(wireName: "releated_component_2")
  @nullable
  String get relatedComponent2;

  @BuiltValueField(wireName: "enrollment_capacity")
  @nullable
  int get enrollmentCapacity;

  @BuiltValueField(wireName: "enrollment_total")
  @nullable
  int get enrollmentTotal;

  @BuiltValueField(wireName: "waiting_capacity")
  @nullable
  int get waitingCapacity;

  @BuiltValueField(wireName: "waiting_total")
  @nullable
  num get waitingTotal;

  @nullable
  String get total;

  @nullable
  BuiltList<CourseReserves> get reserves;

  @nullable
  BuiltList<ClassData> get classes;

  @BuiltValueField(wireName: "held_with")
  @nullable
  BuiltList<String> get heldWith;

  @nullable
  int get term;

  @BuiltValueField(wireName: "academic_level")
  @nullable
  String get academicLevel;

  @BuiltValueField(wireName: "last_updated")
  @nullable
  String get lastUpdated;

  CourseSchedule._();

  static Serializer<CourseSchedule> get serializer => _$courseScheduleSerializer;

  factory CourseSchedule([updates(CourseScheduleBuilder b)]) = _$CourseSchedule;
}

/// This Data Model is used by [CourseSchedule] to wrap data for the reserve groups.
abstract class CourseReserves implements Built<CourseReserves, CourseReservesBuilder> {
  @BuiltValueField(wireName: "reserve_group")
  @nullable
  String get reserveGroup;

  @BuiltValueField(wireName: "enrollment_capacity")
  @nullable
  int get enrollmentCapacity;

  @BuiltValueField(wireName: "enrollment_total")
  @nullable
  int get enrollmentTotal;

  CourseReserves._();

  static Serializer<CourseReserves> get serializer => _$courseReservesSerializer;

  factory CourseReserves([updates(CourseReservesBuilder b)]) = _$CourseReserves;
}

/// This Data Model is used by [CourseSchedule] to wrap data for class information such as: it's dates,
/// location and instructors.
abstract class ClassData implements Built<ClassData, ClassDataBuilder> {
  @nullable
  CourseDates get date;

  @nullable
  CourseLocation get location;

  @nullable
  BuiltList<String> get instructors;

  ClassData._();

  static Serializer<ClassData> get serializer => _$classDataSerializer;

  factory ClassData([updates(ClassDataBuilder b)]) = _$ClassData;
}

/// This Data Model is used by [ClassData] to wrap data about class's location.
abstract class CourseLocation implements Built<CourseLocation, CourseLocationBuilder> {
  @nullable
  String get building;

  @nullable
  String get room;

  CourseLocation._();

  static Serializer<CourseLocation> get serializer => _$courseLocationSerializer;

  factory CourseLocation([updates(CourseLocationBuilder b)]) = _$CourseLocation;
}

/// This Data Model is used by [ClassData] to wrap data about class's dates.
abstract class CourseDates implements Built<CourseDates, CourseDatesBuilder> {
  @BuiltValueField(wireName: "start_time")
  @nullable
  String get startTime;

  @BuiltValueField(wireName: "end_time")
  @nullable
  String get endTime;

  @nullable
  String get weekdays;

  @BuiltValueField(wireName: "start_date")
  @nullable
  String get startDate;

  @BuiltValueField(wireName: "end_date")
  @nullable
  String get endDate;

  @BuiltValueField(wireName: "is_tba")
  @nullable
  bool get isTba;

  @BuiltValueField(wireName: "is_cancelled")
  @nullable
  bool get isCancelled;

  @BuiltValueField(wireName: "is_closed")
  @nullable
  bool get isClosed;

  CourseDates._();

  static Serializer<CourseDates> get serializer => _$courseDatesSerializer;

  factory CourseDates([updates(CourseDatesBuilder b)]) = _$CourseDates;
}
