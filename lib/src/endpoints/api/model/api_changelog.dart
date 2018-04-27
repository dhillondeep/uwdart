import 'package:dartson/dartson.dart';

/// This Data models wraps data related to change logs for the API. It contains typical date
/// and a list of changes made.
@Entity()
class ApiChangelog {
  String _date;
  List<String> _changes;

  String get date => _date;

  List<String> get changes => _changes;

  set changes(List<String> value) {
    _changes = value;
  }

  set date(String value) {
    _date = value;
  }
}
