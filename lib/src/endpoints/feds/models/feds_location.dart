import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uwdart/src/base/models/uw_location.dart';
import 'package:uwdart/src/base/models/uw_open_hours.dart';
import 'package:uwdart/src/base/models/uw_special_day.dart';

part 'feds_location.g.dart';

/// This Data Model wraps location data for various FEDS services.
abstract class FedsLocation extends Object
    implements UWLocation, Built<FedsLocation, FedsLocationBuilder> {
  FedsLocationAdditional get additional;

  static Serializer<FedsLocation> get serializer => _$fedsLocationSerializer;

  factory FedsLocation([updates(FedsLocationBuilder b)]) = _$FedsLocation;

  FedsLocation._();
}

/// This Data Model used by [FedsLocation] wraps additional data provided by the location.
abstract class FedsLocationAdditional extends Object
    implements Built<FedsLocationAdditional, FedsLocationAdditionalBuilder> {
  @BuiltValueField(wireName: "menu_url")
  @nullable
  String get menuUrl;

  static Serializer<FedsLocationAdditional> get serializer => _$fedsLocationAdditionalSerializer;

  factory FedsLocationAdditional([updates(FedsLocationAdditionalBuilder b)]) =
      _$FedsLocationAdditional;

  FedsLocationAdditional._();
}
