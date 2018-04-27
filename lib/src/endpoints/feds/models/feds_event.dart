import 'package:dartson/dartson.dart';

/// This Data Model wraps basic information about FEDS event.
@Entity()
class FedsEvent {
  num _id;
  String _title;
  String _location;
  String _start;
  String _end;
  List<String> _categories;
  String _url;
  String _updated;

  num get id => _id;

  String get title => _title;

  String get location => _location;

  String get start => _start;

  String get end => _end;

  List<String> get categories => _categories;

  String get url => _url;

  String get updated => _updated;

  set updated(String value) {
    _updated = value;
  }

  set url(String value) {
    _url = value;
  }

  set categories(List<String> value) {
    _categories = value;
  }

  set end(String value) {
    _end = value;
  }

  set start(String value) {
    _start = value;
  }

  set location(String value) {
    _location = value;
  }

  set title(String value) {
    _title = value;
  }

  set id(num value) {
    _id = value;
  }
}
