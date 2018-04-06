import 'package:dartson/dartson.dart';

@Entity()
class CourseSchedule {
  String _subject;
  String _catalogNumber;
  num _units;
  String _title;
  String _note;
  int _classNumber;
  String _section;
  String _campus;
  int _associatedClass;
  String _relatedComponent1;
  String _relatedComponent2;
  int _enrollmentCapacity;
  int _enrollmentTotal;
  int _waitingCapacity;
  int _waitingTotal;
  String _total;
  List<CourseReserves> _reserves;
  List<ClassData> _classes;
  List<String> _heldWith;
  int _term;
  String _academicLevel;
  String _lastUpdated;

  String get subject => _subject;

  String get catalogNumber => _catalogNumber;

  num get units => _units;

  String get title => _title;

  String get note => _note;

  int get classNumber => _classNumber;

  String get section => _section;

  String get campus => _campus;

  int get associatedClass => _associatedClass;

  String get relatedComponent1 => _relatedComponent1;

  String get relatedComponent2 => _relatedComponent2;

  int get enrollmentCapacity => _enrollmentCapacity;

  String get lastUpdated => _lastUpdated;

  String get academicLevel => _academicLevel;

  int get term => _term;

  List<String> get heldWith => _heldWith;

  List<ClassData> get classes => _classes;

  List<CourseReserves> get reserves => _reserves;

  String get total => _total;

  int get waitingTotal => _waitingTotal;

  int get waitingCapacity => _waitingCapacity;

  int get enrollmentTotal => _enrollmentTotal;

  @Property(name : "last_updated")
  set lastUpdated(String value) {
    _lastUpdated = value;
  }

  @Property(name : "academic_level")
  set academicLevel(String value) {
    _academicLevel = value;
  }

  set term(int value) {
    _term = value;
  }

  @Property(name : "held_with")
  set heldWith(List<String> value) {
    _heldWith = value;
  }

  set classes(List<ClassData> value) {
    _classes = value;
  }

  set reserves(List<CourseReserves> value) {
    _reserves = value;
  }

  set total(String value) {
    _total = value;
  }

  @Property(name : "waiting_total")
  set waitingTotal(int value) {
    _waitingTotal = value;
  }

  @Property(name : "waiting_capacity")
  set waitingCapacity(int value) {
    _waitingCapacity = value;
  }

  @Property(name : "enrollment_total")
  set enrollmentTotal(int value) {
    _enrollmentTotal = value;
  }

  @Property(name : "enrollment_capacity")
  set enrollmentCapacity(int value) {
    _enrollmentCapacity = value;
  }

  @Property(name : "releated_component_2")
  set relatedComponent2(String value) {
    _relatedComponent2 = value;
  }

  @Property(name : "related_component_1")
  set relatedComponent1(String value) {
    _relatedComponent1 = value;
  }

  @Property(name : "associated_class")
  set associatedClass(int value) {
    _associatedClass = value;
  }

  @Property(name : "campus")
  set campus(String value) {
    _campus = value;
  }

  set section(String value) {
    _section = value;
  }

  @Property(name : "class_number")
  set classNumber(int value) {
    _classNumber = value;
  }

  set note(String value) {
    _note = value;
  }

  set title(String value) {
    _title = value;
  }

  set units(num value) {
    _units = value;
  }

  @Property(name : "catalog_number")
  set catalogNumber(String value) {
    _catalogNumber = value;
  }

  set subject(String value) {
    _subject = value;
  }
}

class CourseReserves {
  String _reserveGroup;
  int _enrollmentCapacity;
  int _enrollmentTotal;

  String get reserveGroup => _reserveGroup;

  int get enrollmentCapacity => _enrollmentCapacity;

  int get enrollmentTotal => _enrollmentTotal;

  @Property(name : "enrollment_total")
  set enrollmentTotal(int value) {
    _enrollmentTotal = value;
  }

  @Property(name : "enrollment_capacity")
  set enrollmentCapacity(int value) {
    _enrollmentCapacity = value;
  }

  @Property(name : "reserve_group")
  set reserveGroup(String value) {
    _reserveGroup = value;
  }
}

@Entity()
class ClassData {
  CourseDates _date;
  CourseLocation _location;
  List<String> _instructors;

  CourseDates get date => _date;

  CourseLocation get location => _location;

  List<String> get instructors => _instructors;

  set instructors(List<String> value) {
    _instructors = value;
  }

  set location(CourseLocation value) {
    _location = value;
  }

  set date(CourseDates value) {
    _date = value;
  }
}

@Entity()
class CourseLocation {
  String _building;
  String _room;

  String get building => _building;

  String get room => _room;

  set room(String value) {
    _room = value;
  }

  set building(String value) {
    _building = value;
  }
}

@Entity()
class CourseDates {
  String _startTime;
  String _endTime;
  String _weekdays;
  String _startDate;
  String _endDate;
  bool _isTba;
  bool _isCancelled;
  bool _isClosed;

  String get startTime => _startTime;

  String get endTime => _endTime;

  String get weekdays => _weekdays;

  String get startDate => _startDate;

  String get endDate => _endDate;

  bool get isTba => _isTba;

  bool get isCancelled => _isCancelled;

  bool get isClosed => _isClosed;

  @Property(name : "is_closed")
  set isClosed(bool value) {
    _isClosed = value;
  }

  @Property(name : "is_cancelled")
  set isCancelled(bool value) {
    _isCancelled = value;
  }

  @Property(name : "is_tba")
  set isTba(bool value) {
    _isTba = value;
  }

  @Property(name : "end_date")
  set endDate(String value) {
    _endDate = value;
  }

  @Property(name : "start_date")
  set startDate(String value) {
    _startDate = value;
  }

  set weekdays(String value) {
    _weekdays = value;
  }

  @Property(name : "end_time")
  set endTime(String value) {
    _endTime = value;
  }

  @Property(name : "start_time")
  set startTime(String value) {
    _startTime = value;
  }
}
