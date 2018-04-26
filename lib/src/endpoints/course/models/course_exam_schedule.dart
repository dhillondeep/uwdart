import 'package:dartson/dartson.dart';

/// This Data Model wraps data related to exam schedules. It has a name of the course and examination
/// information for it's each section.
@Entity()
class CourseExamSchedule {
  String _course;
  List<CourseExamSection> _sections;

  String get course => _course;

  List<CourseExamSection> get sections => _sections;

  set sections(List<CourseExamSection> value) {
    _sections = value;
  }

  set course(String value) {
    _course = value;
  }
}

/// This Data Model is used by [CourseExamSchedule] to warp exam schedule information for each
/// individual section.
@Entity()
class CourseExamSection {
  String _section;
  String _day;
  String _date;
  String _startTime;
  String _endTime;
  String _location;
  String _notes;

  String get section => _section;

  String get day => _day;

  String get date => _date;

  String get startTime => _startTime;

  String get endTime => _endTime;

  String get location => _location;

  String get notes => _notes;

  set notes(String value) {
    _notes = value;
  }

  set location(String value) {
    _location = value;
  }

  @Property(name: "end_time")
  set endTime(String value) {
    _endTime = value;
  }

  @Property(name: "start_time")
  set startTime(String value) {
    _startTime = value;
  }

  set date(String value) {
    _date = value;
  }

  set day(String value) {
    _day = value;
  }

  set section(String value) {
    _section = value;
  }
}
