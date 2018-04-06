import 'package:dartson/dartson.dart';

/// NewsSite is a Model that contains the base data plus the site data, which is parsed from the
/// UW news API. This is provided when search is the most broad.
@Entity()
class NewsSite {
  int _id;
  String _title;
  String _link;
  String _published;
  String _updated;
  String _site;

  int get id => _id;

  String get title => _title;

  String get link => _link;

  String get published => _published;

  String get updated => _updated;

  String get site => _site;

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

  set site(String value) {
    _site = value;
  }
}
