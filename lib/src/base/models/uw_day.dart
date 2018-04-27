import 'package:dartson/dartson.dart';

/// This Data Model used by [UWLocation] wraps data related to daily properties of the location.
@Entity()
class UWDay {
  String _openingHour;
  String _closingHour;
  bool _isClosed;

  String get openingHour => _openingHour;

  String get closingHour => _closingHour;

  bool get isClosed => _isClosed;

  @Property(name: "is_closed")
  set isClosed(bool value) {
    _isClosed = value;
  }

  @Property(name: "closing_hour")
  set closingHour(String value) {
    _closingHour = value;
  }

  @Property(name: "opening_hour")
  set openingHour(String value) {
    _openingHour = value;
  }
}
