import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'foodservices_watcard_vendor.g.dart';

/// This Data Model wraps data related to vendors that accept UW Watcard.
abstract class FoodServicesWatcardVendor
    implements Built<FoodServicesWatcardVendor, FoodServicesWatcardVendorBuilder> {
  @BuiltValueField(wireName: "vendor_id")
  @nullable
  int get vendorId;

  @BuiltValueField(wireName: "vendor_name")
  @nullable
  String get vendorName;

  @nullable
  double get latitude;

  @nullable
  double get longitude;

  @nullable
  String get address;

  @BuiltValueField(wireName: "phone_number")
  @nullable
  String get phoneNumber;

  @nullable
  String get logo;

  FoodServicesWatcardVendor._();

  static Serializer<FoodServicesWatcardVendor> get serializer =>
      _$foodServicesWatcardVendorSerializer;

  factory FoodServicesWatcardVendor([updates(FoodServicesWatcardVendorBuilder b)]) =
      _$FoodServicesWatcardVendor;
}
