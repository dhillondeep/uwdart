import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'foodservices_diet.g.dart';

/// This Data Model wraps data related to Food Services Diet.
abstract class FoodServicesDiet implements Built<FoodServicesDiet, FoodServicesDietBuilder> {
  @BuiltValueField(wireName: "diet_id")
  @nullable
  int get dietId;

  @BuiltValueField(wireName: "diet_type")
  @nullable
  String get dietType;

  FoodServicesDiet._();

  static Serializer<FoodServicesDiet> get serializer => _$foodServicesDietSerializer;

  factory FoodServicesDiet([updates(FoodServicesDietBuilder b)]) = _$FoodServicesDiet;
}
