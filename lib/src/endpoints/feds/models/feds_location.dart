import 'package:dartson/dartson.dart';
import 'package:uwdart/src/base/models/uw_location.dart';
import 'package:uwdart/src/base/models/uw_open_hours.dart';
import 'package:uwdart/src/base/models/uw_special_day.dart';

/// This Data Model wraps location data for various FEDS services.
@Entity()
class FedsLocation implements UWLocation {
  @override
  String building;

  @override
  @Property(name: "dates_closed")
  List<String> datesClosed;

  @override
  String description;

  @override
  @Property(name: "is_24hrs")
  bool is24Hrs;

  @override
  @Property(name: "is_open_now")
  bool isOpenNow;

  @override
  num latitude;

  @override
  String logo;

  @override
  num longitude;

  @override
  String notice;

  @override
  @Property(name: "opening_hours")
  UWOpeningHours openingHours;

  @override
  @Property(name: "outlet_id")
  num outletId;

  @override
  @Property(name: "outlet_name")
  String outletName;

  @override
  @Property(name: "special_hours")
  List<UWSpecialDay> specialHours;

  FedsLocationAdditional _additional;

  FedsLocationAdditional get additional => _additional;

  set additional(FedsLocationAdditional value) {
    _additional = value;
  }
}

/// This Data Model used by [FedsLocation] wraps additional data provided by the location.
@Entity()
class FedsLocationAdditional {
  String _menuUrl;

  String get menuUrl => _menuUrl;

  @Property(name: "menu_url")
  set menuUrl(String value) {
    _menuUrl = value;
  }
}
