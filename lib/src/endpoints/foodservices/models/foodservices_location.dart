import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uwdart/src/base/models/uw_location.dart';
import 'package:uwdart/src/base/models/uw_open_hours.dart';
import 'package:uwdart/src/base/models/uw_special_day.dart';
part 'foodservices_location.g.dart';

/// This Data Model wraps the data related to Food Services Location.
abstract class FoodServicesLocation
    implements UWLocation, Built<FoodServicesLocation, FoodServicesLocationBuilder> {
  @nullable
  FoodServicesLocationAdditional get additional;

  FoodServicesLocation._();

  static Serializer<FoodServicesLocation> get serializer => _$foodServicesLocationSerializer;

  factory FoodServicesLocation([updates(FoodServicesLocationBuilder b)]) = _$FoodServicesLocation;
}

/// This Data Model used by [FoodServicesLocation] wraps additional data provided by the location.
abstract class FoodServicesLocationAdditional
    implements Built<FoodServicesLocationAdditional, FoodServicesLocationAdditionalBuilder> {
  @BuiltValueField(wireName: "menu_url")
  @nullable
  String get menuUrl;

  FoodServicesLocationAdditional._();

  static Serializer<FoodServicesLocationAdditional> get serializer =>
      _$foodServicesLocationAdditionalSerializer;

  factory FoodServicesLocationAdditional([updates(FoodServicesLocationAdditionalBuilder b)]) =
      _$FoodServicesLocationAdditional;
}
