import 'package:dartson/dartson.dart';

/// This Data Model warps data from Awards Endpoint. It is used for both undergraduate
/// and graduate awards.
@Entity()
class Award {
  num _id;
  String _title;
  String _status;
  String _value;
  List<String> _type;
  String _description;
  List<String> _citizenship;
  List<String> _programs;
  AwardApplication _application;
  AwardDeadline _deadlines;
  List<String> _links;
  String _contact;
  num _vid;
  String _link;

  num get id => _id;

  String get title => _title;

  String get status => _status;

  String get value => _value;

  List<String> get type => _type;

  String get description => _description;

  List<String> get citizenship => _citizenship;

  List<String> get programs => _programs;

  AwardApplication get application => _application;

  AwardDeadline get deadlines => _deadlines;

  List<String> get links => _links;

  String get contact => _contact;

  num get vid => _vid;

  String get link => _link;

  set link(String value) {
    _link = value;
  }

  set vid(num value) {
    _vid = value;
  }

  set contact(String value) {
    _contact = value;
  }

  set links(List<String> value) {
    _links = value;
  }

  set deadlines(AwardDeadline value) {
    _deadlines = value;
  }

  set application(AwardApplication value) {
    _application = value;
  }

  set programs(List<String> value) {
    _programs = value;
  }

  set citizenship(List<String> value) {
    _citizenship = value;
  }

  set description(String value) {
    _description = value;
  }

  set type(List<String> value) {
    _type = value;
  }

  set value(String value) {
    _value = value;
  }

  set status(String value) {
    _status = value;
  }

  set title(String value) {
    _title = value;
  }

  set id(num value) {
    _id = value;
  }
}

/// This Data Model used by [Award] wraps information about award deadline.
@Entity()
class AwardDeadline {
  List<String> _term;
  List<String> _application;
  String _extended;

  List<String> get term => _term;

  List<String> get application => _application;

  String get extended => _extended;

  set extended(String value) {
    _extended = value;
  }

  set application(List<String> value) {
    _application = value;
  }

  set term(List<String> value) {
    _term = value;
  }
}

/// This Data Model used by [Award] wraps information about award application.
@Entity()
class AwardApplication {
  List<String> _type;
  List<String> _enrollmentYear;
  List<String> _eligibility;
  List<String> _instructions;
  List<String> _additional;

  List<String> get type => _type;

  List<String> get enrollmentYear => _enrollmentYear;

  List<String> get eligibility => _eligibility;

  List<String> get instructions => _instructions;

  List<String> get additional => _additional;

  set additional(List<String> value) {
    _additional = value;
  }

  set instructions(List<String> value) {
    _instructions = value;
  }

  set eligibility(List<String> value) {
    _eligibility = value;
  }

  @Property(name: "enrollment_year")
  set enrollmentYear(List<String> value) {
    _enrollmentYear = value;
  }

  set type(List<String> value) {
    _type = value;
  }
}
