import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uw_day.g.dart';

/// This Data Model used by [UWLocation] wraps data related to daily properties of the location.
abstract class UWDay extends Object implements Built<UWDay, UWDayBuilder> {
  @BuiltValueField(wireName: "opening_hour")
  @nullable
  String get openingHour;

  @BuiltValueField(wireName: "closing_hour")
  @nullable
  String get closingHour;

  @BuiltValueField(wireName: "is_closed")
  @nullable
  bool get isClosed;

  static Serializer<UWDay> get serializer => _$uWDaySerializer;

  factory UWDay([updates(UWDayBuilder b)]) = _$UWDay;

  UWDay._();
}
