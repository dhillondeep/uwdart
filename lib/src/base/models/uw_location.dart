import 'package:dartson/dartson.dart';
import 'package:uwdart/src/base/models/uw_open_hours.dart';
import 'package:uwdart/src/base/models/uw_special_day.dart';

/// This Data Model wraps a generic UW location and all the properties related to it.
@Entity()
class UWLocation {
  num _outletId;
  String _outletName;
  String _building;
  String _logo;
  num _latitude;
  num _longitude;
  String _description;
  String _notice;
  bool _isOpenNow;
  UWOpeningHours _openingHours;
  List<UWSpecialDay> _specialHours;
  List<String> _datesClosed;
  bool _is24Hrs;
  Additional _additional;

  num get outletId => _outletId;

  String get outletName => _outletName;

  String get building => _building;

  String get logo => _logo;

  num get latitude => _latitude;

  num get longitude => _longitude;

  String get description => _description;

  String get notice => _notice;

  bool get isOpenNow => _isOpenNow;

  UWOpeningHours get openingHours => _openingHours;

  List<UWSpecialDay> get specialHours => _specialHours;

  List<String> get datesClosed => _datesClosed;

  bool get is24Hrs => _is24Hrs;

  Additional get additional => _additional;

  set additional(Additional value) {
    _additional = value;
  }

  @Property(name: "is_24hrs")
  set is24Hrs(bool value) {
    _is24Hrs = value;
  }

  @Property(name: "dates_closed")
  set datesClosed(List<String> value) {
    _datesClosed = value;
  }

  @Property(name: "special_hours")
  set specialHours(List<UWSpecialDay> value) {
    _specialHours = value;
  }

  @Property(name: "opening_hours")
  set openingHours(UWOpeningHours value) {
    _openingHours = value;
  }

  @Property(name: "is_open_now")
  set isOpenNow(bool value) {
    _isOpenNow = value;
  }

  set notice(String value) {
    _notice = value;
  }

  set description(String value) {
    _description = value;
  }

  set longitude(num value) {
    _longitude = value;
  }

  set latitude(num value) {
    _latitude = value;
  }

  set logo(String value) {
    _logo = value;
  }

  set building(String value) {
    _building = value;
  }

  @Property(name: "outlet_name")
  set outletName(String value) {
    _outletName = value;
  }

  @Property(name: "outlet_id")
  set outletId(num value) {
    _outletId = value;
  }
}

/// This Data Model used by [UWLocation] wraps additional data provided by UW Location.
@Entity()
class Additional {
  String _menuUrl;

  String get menuUrl => _menuUrl;

  @Property(name: "menu_url")
  set menuUrl(String value) {
    _menuUrl = value;
  }
}
