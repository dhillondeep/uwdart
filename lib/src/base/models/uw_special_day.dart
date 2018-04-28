/// This Data Model used by [UWLocation] wraps data related to special day for the location

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uw_special_day.g.dart';

abstract class UWSpecialDay extends Object implements Built<UWSpecialDay, UWSpecialDayBuilder> {
  @nullable
  String get date;

  @BuiltValueField(wireName: "opening_hour")
  @nullable
  String get openingHour;

  @BuiltValueField(wireName: "closing_hour")
  @nullable
  String get closingHour;

  static Serializer<UWSpecialDay> get serializer => _$uWSpecialDaySerializer;

  factory UWSpecialDay([updates(UWSpecialDayBuilder b)]) = _$UWSpecialDay;

  UWSpecialDay._();
}
