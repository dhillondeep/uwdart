import 'package:dartson/dartson.dart';
import 'package:uwdart/src/base/models/uw_location.dart';
import 'package:uwdart/src/base/models/uw_open_hours.dart';
import 'package:uwdart/src/base/models/uw_special_day.dart';

/// This Data Model wraps the data related to Food Services Location.
@Entity()
class FoodServicesLocation extends UWLocation {
  num get outletId => super.outletId;

  String get outletName => super.outletName;

  String get building => super.building;

  String get logo => super.logo;

  num get latitude => super.latitude;

  num get longitude => super.longitude;

  String get description => super.description;

  String get notice => super.notice;

  bool get isOpenNow => super.isOpenNow;

  UWOpeningHours get openingHours => super.openingHours;

  List<UWSpecialDay> get specialHours => super.specialHours;

  List<String> get datesClosed => super.datesClosed;

  bool get is24Hrs => super.is24Hrs;

  Additional get additional => super.additional;

  @Property(name: "additional")
  set additional(Additional value) {
    super.additional = value;
  }

  @Property(name: "is_24hrs")
  set is24Hrs(bool value) {
    super.is24Hrs = value;
  }

  @Property(name: "dates_closed")
  set datesClosed(List<String> value) {
    super.datesClosed = value;
  }

  @Property(name: "special_hours")
  set specialHours(List<UWSpecialDay> value) {
    super.specialHours = value;
  }

  @Property(name: "opening_hours")
  set openingHours(UWOpeningHours value) {
    super.openingHours = value;
  }

  @Property(name: "is_open_now")
  set isOpenNow(bool value) {
    super.isOpenNow = value;
  }

  set notice(String value) {
    super.notice = value;
  }

  set description(String value) {
    super.description = value;
  }

  set longitude(num value) {
    super.longitude = value;
  }

  set latitude(num value) {
    super.latitude = value;
  }

  set logo(String value) {
    super.logo = value;
  }

  set building(String value) {
    super.building = value;
  }

  @Property(name: "outlet_name")
  set outletName(String value) {
    super.outletName = value;
  }

  @Property(name: "outlet_id")
  set outletId(num value) {
    super.outletId = value;
  }
}
