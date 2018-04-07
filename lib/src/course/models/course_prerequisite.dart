import 'package:dartson/dartson.dart';

/// This Data Model wraps data related to prerequisites of a course. It only contains brief
/// information about the course.
@Entity()
class CoursePrerequisite {
  String _subject;
  String _catalogNumber;
  String _title;
  String _prerequisites;
  List<dynamic> _prerequisitesParsed;

  String get subject => _subject;

  String get catalogNumber => _catalogNumber;

  List<dynamic> get prerequisitesParsed => _prerequisitesParsed;

  String get prerequisites => _prerequisites;

  String get title => _title;

  @Property(name: "prerequisites_parsed")
  set prerequisitesParsed(List<dynamic> value) {
    _prerequisitesParsed = value;
  }

  set prerequisites(String value) {
    _prerequisites = value;
  }

  set title(String value) {
    _title = value;
  }

  @Property(name: "catalog_number")
  set catalogNumber(String value) {
    _catalogNumber = value;
  }

  set subject(String value) {
    _subject = value;
  }
}
