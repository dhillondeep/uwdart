import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'award.g.dart';

/// This Data Model warps data from Awards Endpoint. It is used for both undergraduate
/// and graduate awards.
abstract class Award extends Object implements Built<Award, AwardBuilder> {
  @nullable
  int get id;

  @nullable
  String get title;

  @nullable
  String get status;

  @nullable
  String get value;

  @nullable
  BuiltList<String> get type;

  @nullable
  String get description;

  @nullable
  BuiltList<String> get citizenship;

  @nullable
  BuiltList<String> get programs;

  @nullable
  AwardApplication get application;

  @nullable
  AwardDeadline get deadlines;

  @nullable
  BuiltList<String> get links;

  @nullable
  String get contact;

  @nullable
  int get vid;

  @nullable
  String get link;

  static Serializer<Award> get serializer => _$awardSerializer;

  factory Award([updates(AwardBuilder b)]) = _$Award;

  Award._();
}

/// This Data Model used by [Award] wraps information about award deadline.
abstract class AwardDeadline extends Object implements Built<AwardDeadline, AwardDeadlineBuilder> {
  @nullable
  BuiltList<String> get term;

  @nullable
  BuiltList<String> get application;

  @nullable
  String get extended;

  static Serializer<AwardDeadline> get serializer => _$awardDeadlineSerializer;

  factory AwardDeadline([updates(AwardDeadlineBuilder b)]) = _$AwardDeadline;

  AwardDeadline._();
}

/// This Data Model used by [Award] wraps information about award application.
abstract class AwardApplication extends Object
    implements Built<AwardApplication, AwardApplicationBuilder> {
  @nullable
  BuiltList<String> get type;

  @BuiltValueField(wireName: "enrollment_year")
  @nullable
  BuiltList<String> get enrollmentYear;

  @nullable
  BuiltList<String> get eligibility;

  @nullable
  BuiltList<String> get instructions;

  @nullable
  BuiltList<String> get additional;

  static Serializer<AwardApplication> get serializer => _$awardApplicationSerializer;

  factory AwardApplication([updates(AwardApplicationBuilder b)]) = _$AwardApplication;

  AwardApplication._();
}
