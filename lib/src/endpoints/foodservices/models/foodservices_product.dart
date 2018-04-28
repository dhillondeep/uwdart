import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'foodservices_product.g.dart';

/// This Data Model wraps data related to Food Product from Food Services.
abstract class FoodServicesProduct
    implements Built<FoodServicesProduct, FoodServicesProductBuilder> {
  @BuiltValueField(wireName: "product_id")
  @nullable
  int get productId;

  @BuiltValueField(wireName: "product_name")
  @nullable
  String get productName;

  @nullable
  String get ingredients;

  @BuiltValueField(wireName: "serving_size")
  @nullable
  String get servingSize;

  @BuiltValueField(wireName: "serving_size_ml")
  @nullable
  int get servingSizeMl;

  @BuiltValueField(wireName: "serving_size_g")
  @nullable
  int get servingSizeG;

  @nullable
  int get calories;

  @BuiltValueField(wireName: "total_fat_g")
  @nullable
  int get totalFatG;

  @BuiltValueField(wireName: "total_fat_percentage")
  @nullable
  int get totalFatPercent;

  @BuiltValueField(wireName: "fat_saturated_g")
  @nullable
  int get fatSaturatedG;

  @BuiltValueField(wireName: "fat_saturated_percent")
  @nullable
  int get fatSaturatedPercent;

  @BuiltValueField(wireName: "fat_trans_g")
  @nullable
  int get fatTransG;

  @BuiltValueField(wireName: "fat_trans_percent")
  @nullable
  int get fatTransPercent;

  @BuiltValueField(wireName: "cholestero_mg")
  @nullable
  int get cholesterolMg;

  @BuiltValueField(wireName: "sodium_mg")
  @nullable
  int get sodiumMg;

  @BuiltValueField(wireName: "sodium_percent")
  @nullable
  int get sodiumPercent;

  @BuiltValueField(wireName: "carbo_g")
  @nullable
  int get carboG;

  @BuiltValueField(wireName: "carbo_percent")
  @nullable
  int get carboPercent;

  @BuiltValueField(wireName: "carbo_fibre_g")
  @nullable
  int get carboFibreG;

  @BuiltValueField(wireName: "carbo_fibre_percent")
  @nullable
  int get carboFibrePercent;

  @BuiltValueField(wireName: "carbo_sugars_g")
  @nullable
  int get carboSugarsG;

  @BuiltValueField(wireName: "protein_g")
  @nullable
  int get proteinG;

  @BuiltValueField(wireName: "vitamin_a_percent")
  @nullable
  int get vitaminAPercent;

  @BuiltValueField(wireName: "vitamin_c_percent")
  @nullable
  int get vitaminCPercent;

  @BuiltValueField(wireName: "calcium_percent")
  @nullable
  int get calciumPercent;

  @BuiltValueField(wireName: "iron_percent")
  @nullable
  int get ironPercent;

  @BuiltValueField(wireName: "micro_nutrients")
  @nullable
  String get microNutrients;

  @nullable
  String get tips;

  @BuiltValueField(wireName: "diet_id")
  @nullable
  int get dietId;

  @BuiltValueField(wireName: "diet_type")
  @nullable
  String get dietType;

  FoodServicesProduct._();

  static Serializer<FoodServicesProduct> get serializer => _$foodServicesProductSerializer;

  factory FoodServicesProduct([updates(FoodServicesProductBuilder b)]) = _$FoodServicesProduct;
}
