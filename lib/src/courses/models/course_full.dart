import 'package:dartson/dartson.dart';

@Entity()
class CourseFull {
  String _courseId;
  String _subject;
  String _catalogNumber;
  String _title;
  num _units;
  String _description;
  List<String> _instructions;
  String _prerequisites;
  String _antirequisites;
  String _corequisites;
  String _crosslistings;
  List<String> _termsOffered;
  String _notes;
  CourseOfferings _offerings;
  bool _needsDepartmentConsent;
  bool _needsInstructorConsent;
  List<String> _extra;
  String _calendarYear;
  String _url;
  String _academicLevel;

  String get courseId => _courseId;

  String get subject => _subject;

  String get catalogNumber => _catalogNumber;

  String get title => _title;

  num get units => _units;

  String get description => _description;

  List<String> get instructions => _instructions;

  String get prerequisites => _prerequisites;

  String get antirequisites => _antirequisites;

  String get corequisites => _corequisites;

  String get crosslistings => _crosslistings;

  List<String> get termsOffered => _termsOffered;

  String get notes => _notes;

  bool get needsDepartmentConsent => _needsDepartmentConsent;

  bool get needsInstructorConsent => _needsInstructorConsent;

  String get academicLevel => _academicLevel;

  List<String> get extra => _extra;

  String get calendarYear => _calendarYear;

  String get url => _url;

  CourseOfferings get offerings => _offerings;

  @Property(name : "course_id")
  set courseId(String value) {
    _courseId = value;
  }

  set subject(String value) {
    _subject = value;
  }

  @Property(name : "catalog_number")
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

  @Property(name : "academic_level")
  set academicLevel(String value) {
    _academicLevel = value;
  }

  set url(String value) {
    _url = value;
  }

  @Property(name : "calendar_year")
  set calendarYear(String value) {
    _calendarYear = value;
  }

  set extra(List<String> value) {
    _extra = value;
  }


  set offerings(CourseOfferings value) {
    _offerings = value;
  }

  @Property(name : "needs_instructor_consent")
  set needsInstructorConsent(bool value) {
    _needsInstructorConsent = value;
  }

  @Property(name : "needs_department_consent")
  set needsDepartmentConsent(bool value) {
    _needsDepartmentConsent = value;
  }

  set notes(String value) {
    _notes = value;
  }

  @Property(name : "terms_offered")
  set termsOffered(List<String> value) {
    _termsOffered = value;
  }

  set crosslistings(String value) {
    _crosslistings = value;
  }

  set corequisites(String value) {
    _corequisites = value;
  }

  set antirequisites(String value) {
    _antirequisites = value;
  }

  set prerequisites(String value) {
    _prerequisites = value;
  }

  set instructions(List<String> value) {
    _instructions = value;
  }
}

@Entity()
class CourseOfferings {
  bool _online;
  bool _onlineOnly;
  bool _stJerome;
  bool _stJeromeOnly;
  bool _renison;
  bool _renisonOnly;
  bool _conradGrebel;
  bool _conradGrebelOnly;

  bool get online => _online;

  bool get onlineOnly => _onlineOnly;

  bool get stJerome => _stJerome;

  bool get stJeromeOnly => _stJeromeOnly;

  bool get renison => _renison;

  bool get renisonOnly => _renisonOnly;

  bool get conradGrebel => _conradGrebel;

  bool get conradGrebelOnly => _conradGrebelOnly;

  @Property(name : "conrad_grebel_only")
  set conradGrebelOnly(bool value) {
    _conradGrebelOnly = value;
  }

  @Property(name : "conrad_grebel")
  set conradGrebel(bool value) {
    _conradGrebel = value;
  }

  @Property(name : "renison_only")
  set renisonOnly(bool value) {
    _renisonOnly = value;
  }

  set renison(bool value) {
    _renison = value;
  }

  @Property(name : "st_jerome_only")
  set stJeromeOnly(bool value) {
    _stJeromeOnly = value;
  }

  @Property(name : "st_jerome")
  set stJerome(bool value) {
    _stJerome = value;
  }

  @Property(name : "online_only")
  set onlineOnly(bool value) {
    _onlineOnly = value;
  }

  set online(bool value) {
    _online = value;
  }
}
  