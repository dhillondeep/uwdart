import 'package:dartson/dartson.dart';

/// This Data Model used by [UWLocation] wraps data related to special day for the location
@Entity()
class UWSpecialDay {
  String _date;
  String _openingHour;
  String _closingHour;

  String get date => _date;

  String get openingHour => _openingHour;

  String get closingHour => _closingHour;

  @Property(name: "closing_hour")
  set closingHour(String value) {
    _closingHour = value;
  }

  @Property(name: "opening_hour")
  set openingHour(String value) {
    _openingHour = value;
  }

  set date(String value) {
    _date = value;
  }
}
