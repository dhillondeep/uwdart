import 'package:dartson/dartson.dart';

/// This Data Model wraps basic data provides for each news by UW news API. This is provided
/// when search is narrowed down to "site" level
@Entity()
class NewsBase {
  num _id;
  String _title;
  String _link;
  String _published;
  String _updated;

  num get id => _id;

  String get title => _title;

  String get link => _link;

  String get published => _published;

  String get updated => _updated;

  set updated(String value) {
    _updated = value;
  }

  set published(String value) {
    _published = value;
  }

  set link(String value) {
    _link = value;
  }

  set title(String value) {
    _title = value;
  }

  set id(num value) {
    _id = value;
  }
}
