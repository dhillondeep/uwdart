import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'foodservices_outlet.g.dart';

/// This Data Model wraps data related to outlets available from Food Services.
abstract class FoodServicesOutlet implements Built<FoodServicesOutlet, FoodServicesOutletBuilder> {
  @BuiltValueField(wireName: "outlet_id")
  @nullable
  int get outletId;

  @BuiltValueField(wireName: "outlet_name")
  @nullable
  String get outletName;

  @BuiltValueField(wireName: "has_breakfast")
  @nullable
  int get hasBreakfast;

  @BuiltValueField(wireName: "has_lunch")
  @nullable
  int get hasLunch;

  @BuiltValueField(wireName: "has_dinner")
  @nullable
  int get hasDinner;

  FoodServicesOutlet._();

  static Serializer<FoodServicesOutlet> get serializer => _$foodServicesOutletSerializer;

  factory FoodServicesOutlet([updates(FoodServicesOutletBuilder b)]) = _$FoodServicesOutlet;
}
