import 'package:dartson/dartson.dart';

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