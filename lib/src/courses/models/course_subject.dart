import 'package:dartson/dartson.dart';

/// This Data Model wraps more data than simple course data. It stores subject data along with
/// description and academic level.
@Entity()
class CourseSubject {
  String _courseId;
  String _subject;
  String _catalogNumber;
  String _title;
  num _units;
  String _description;
  String _academicLevel;

  String get courseId => _courseId;

  String get subject => _subject;

  String get catalogNumber => _catalogNumber;

  String get title => _title;

  num get units => _units;

  String get description => _description;

  String get academicLevel => _academicLevel;

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

  set units(num value) {
    _units = value;
  }

  set description(String value) {
    _description = value;
  }

  @Property(name: "academic_level")
  set academicLevel(String value) {
    _academicLevel = value;
  }
}
