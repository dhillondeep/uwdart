import 'package:dartson/dartson.dart';

/// This Data Model wraps simple data for a course. This is used when a list of courses is wanted
/// and a lot of information about the course is not needed.
@Entity()
class CourseSimple {
  String _courseId;
  String _subject;
  String _catalogNumber;
  String _title;

  String get courseId => _courseId;

  String get subject => _subject;

  String get catalogNumber => _catalogNumber;

  String get title => _title;

  @Property(name: "course_id")
  set courseId(String value) {
    _courseId = value;
  }

  set subject(String value) {
    _subject = value;
  }

  @Property(name: "catalog_number")
  set catalogNumber(String value) {
    _catalogNumber = value;
  }

  set title(String value) {
    _title = value;
  }
}
