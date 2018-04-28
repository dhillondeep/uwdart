import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uwdart/src/endpoints/course/models/course_base.dart';

part 'course_detailed.g.dart';

/// This Data Model wraps data related to an individual course. The data is full data set provides
/// by the API and is given when individual course is asked for.
abstract class CourseDetailed implements CourseBase, Built<CourseDetailed, CourseDetailedBuilder> {
  @nullable
  num get units;

  @nullable
  String get description;

  BuiltList<String> get instructions;

  @nullable
  @nullable
  String get prerequisites;

  @nullable
  String get antirequisites;

  @nullable
  String get corequisites;

  @nullable
  String get crosslistings;

  @BuiltValueField(wireName: "terms_offered")
  @nullable
  BuiltList<String> get termsOffered;

  @nullable
  String get notes;

  @nullable
  CourseOfferings get offerings;

  @BuiltValueField(wireName: "needs_department_consent")
  @nullable
  bool get needsDepartmentConsent;

  @BuiltValueField(wireName: "needs_instructor_consent")
  @nullable
  bool get needsInstructorConsent;

  @nullable
  BuiltList<String> get extra;

  @BuiltValueField(wireName: "calendar_year")
  @nullable
  String get calendarYear;

  @nullable
  String get url;

  @BuiltValueField(wireName: "academic_level")
  @nullable
  String get academicLevel;

  CourseDetailed._();

  static Serializer<CourseDetailed> get serializer => _$courseDetailedSerializer;

  factory CourseDetailed([updates(CourseDetailedBuilder b)]) = _$CourseDetailed;
}

/// This Data Model is used by [CourseDetailed] to wrap data for course offerings at UW. It let's the user
/// know what type of course offerings are available.
abstract class CourseOfferings implements Built<CourseOfferings, CourseOfferingsBuilder> {
  @nullable
  bool get online;

  @BuiltValueField(wireName: "online_only")
  @nullable
  bool get onlineOnly;

  @BuiltValueField(wireName: "st_jerome")
  @nullable
  bool get stJerome;

  @BuiltValueField(wireName: "st_jerome_only")
  @nullable
  bool get stJeromeOnly;

  @nullable
  bool get renison;

  @BuiltValueField(wireName: "renison_only")
  @nullable
  bool get renisonOnly;

  @BuiltValueField(wireName: "conrad_grebel")
  @nullable
  bool get conradGrebel;

  @BuiltValueField(wireName: "conrad_grebel_only")
  @nullable
  bool get conradGrebelOnly;

  CourseOfferings._();

  static Serializer<CourseOfferings> get serializer => _$courseOfferingsSerializer;

  factory CourseOfferings([updates(CourseOfferingsBuilder b)]) = _$CourseOfferings;
}
