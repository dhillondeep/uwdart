import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:uwdart/src/base/models/uw_open_hours.dart';
import 'package:uwdart/src/base/models/uw_special_day.dart';

part 'uw_location.g.dart';

/// This Data Model wraps a generic UW location and all the properties related to it.
@BuiltValue(instantiable: false)
abstract class UWLocation {
  @BuiltValueField(wireName: "outlet_id")
  @nullable
  int get outletId;

  @BuiltValueField(wireName: "outlet_name")
  @nullable
  String get outletName;

  @nullable
  String get building;

  @nullable
  String get logo;

  @nullable
  double get latitude;

  @nullable
  double get longitude;

  @nullable
  String get description;

  @nullable
  String get notice;

  @BuiltValueField(wireName: "is_open_now")
  @nullable
  bool get isOpenNow;

  @BuiltValueField(wireName: "opening_hours")
  @nullable
  UWOpeningHours get openingHours;

  @BuiltValueField(wireName: "special_hours")
  @nullable
  BuiltList<UWSpecialDay> get specialHours;

  @BuiltValueField(wireName: "dates_closed")
  @nullable
  BuiltList<String> get datesClosed;

  @BuiltValueField(wireName: "is_24hrs")
  @nullable
  bool get is24Hrs;

  UWLocation rebuild(void updates(UWLocationBuilder b));

  UWLocationBuilder toBuilder();
}
