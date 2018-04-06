import 'package:dartson/dartson.dart';

/// NewBase is a Model that contains the base data parsed from the UW news API. This is provided
/// when search is narrowed down to "site" level
@Entity()
class NewsBase {
  int _id;
  String _title;
  String _link;
  String _published;
  String _updated;

  int get id => _id;

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

  set id(int value) {
    _id = value;
  }
}
