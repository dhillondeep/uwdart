import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uwdart/src/base/models/uw_day.dart';

part 'uw_open_hours.g.dart';

/// This Data Model used by [UWLocation] wraps data related to hours properties of the location.
abstract class UWOpeningHours extends Object
    implements Built<UWOpeningHours, UWOpeningHoursBuilder> {
  UWDay get sunday;

  UWDay get monday;

  UWDay get tuesday;

  UWDay get wednesday;

  UWDay get thursday;

  UWDay get friday;

  UWDay get saturday;

  static Serializer<UWOpeningHours> get serializer => _$uWOpeningHoursSerializer;

  factory UWOpeningHours([updates(UWOpeningHoursBuilder b)]) = _$UWOpeningHours;

  UWOpeningHours._();
}
