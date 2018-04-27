import 'package:dartson/dartson.dart';

/// This Data Model wraps data related to Food Product from Food Services.
@Entity()
class FoodServicesProduct {
  num _productId;
  String _productName;
  String _ingredients;
  String _servingSize;
  num _servingSizeMl;
  num _servingSizeG;
  num _calories;
  num _totalFatG;
  num _totalFatPercent;
  num _fatSaturatedG;
  num _fatSaturatedPercent;
  num _fatTransG;
  num _fatTransPercent;
  num _cholesterolMg;
  num _sodiumMg;
  num _sodiumPercent;
  num _carboG;
  num _carboPercent;
  num _carboFibreG;
  num _carboFibrePercent;
  num _carboSugarsG;
  num _proteinG;
  num _vitaminAPercent;
  num _vitaminCPercent;
  num _calciumPercent;
  num _ironPercent;
  String _microNutrients;
  String _tips;
  num _dietId;
  String _dietType;

  num get productId => _productId;

  String get productName => _productName;

  String get dietType => _dietType;

  num get dietId => _dietId;

  String get tips => _tips;

  String get microNutrients => _microNutrients;

  num get ironPercent => _ironPercent;

  num get calciumPercent => _calciumPercent;

  num get vitaminCPercent => _vitaminCPercent;

  num get vitaminAPercent => _vitaminAPercent;

  num get proteinG => _proteinG;

  num get carboSugarsG => _carboSugarsG;

  num get carboFibrePercent => _carboFibrePercent;

  num get carboFibreG => _carboFibreG;

  num get carboPercent => _carboPercent;

  num get carboG => _carboG;

  num get sodiumPercent => _sodiumPercent;

  num get sodiumMg => _sodiumMg;

  num get cholesterolMg => _cholesterolMg;

  num get fatTransPercent => _fatTransPercent;

  num get fatTransG => _fatTransG;

  num get fatSaturatedPercent => _fatSaturatedPercent;

  num get fatSaturatedG => _fatSaturatedG;

  num get totalFatPercent => _totalFatPercent;

  num get totalFatG => _totalFatG;

  num get calories => _calories;

  num get servingSizeG => _servingSizeG;

  num get servingSizeMl => _servingSizeMl;

  String get servingSize => _servingSize;

  String get ingredients => _ingredients;

  @Property(name: "diet_type")
  set dietType(String value) {
    _dietType = value;
  }

  @Property(name: "diet_id")
  set dietId(num value) {
    _dietId = value;
  }

  set tips(String value) {
    _tips = value;
  }

  @Property(name: "micro_nutrients")
  set microNutrients(String value) {
    _microNutrients = value;
  }

  @Property(name: "iron_percent")
  set ironPercent(num value) {
    _ironPercent = value;
  }

  @Property(name: "calcium_percent")
  set calciumPercent(num value) {
    _calciumPercent = value;
  }

  @Property(name: "vitamin_c_percent")
  set vitaminCPercent(num value) {
    _vitaminCPercent = value;
  }

  @Property(name: "vitamin_a_percent")
  set vitaminAPercent(num value) {
    _vitaminAPercent = value;
  }

  @Property(name: "protein_g_percent")
  set proteinG(num value) {
    _proteinG = value;
  }

  @Property(name: "carbo_sugars_g")
  set carboSugarsG(num value) {
    _carboSugarsG = value;
  }

  @Property(name: "carbo_fibre_percent")
  set carboFibrePercent(num value) {
    _carboFibrePercent = value;
  }

  @Property(name: "carbo_fibre_g")
  set carboFibreG(num value) {
    _carboFibreG = value;
  }

  @Property(name: "carbo_percent")
  set carboPercent(num value) {
    _carboPercent = value;
  }

  @Property(name: "carbo_g")
  set carboG(num value) {
    _carboG = value;
  }

  @Property(name: "sodium_percent")
  set sodiumPercent(num value) {
    _sodiumPercent = value;
  }

  @Property(name: "sodium_mg")
  set sodiumMg(num value) {
    _sodiumMg = value;
  }

  @Property(name: "cholesterol_mg")
  set cholesterolMg(num value) {
    _cholesterolMg = value;
  }

  @Property(name: "fat_trans_percent")
  set fatTransPercent(num value) {
    _fatTransPercent = value;
  }

  @Property(name: "fat_trans_g")
  set fatTransG(num value) {
    _fatTransG = value;
  }

  @Property(name: "fat_saturated_percent")
  set fatSaturatedPercent(num value) {
    _fatSaturatedPercent = value;
  }

  @Property(name: "fat_saturated_g")
  set fatSaturatedG(num value) {
    _fatSaturatedG = value;
  }

  @Property(name: "total_fat_percent")
  set totalFatPercent(num value) {
    _totalFatPercent = value;
  }

  @Property(name: "total_fat_g")
  set totalFatG(num value) {
    _totalFatG = value;
  }

  set calories(num value) {
    _calories = value;
  }

  @Property(name: "serving_size_g")
  set servingSizeG(num value) {
    _servingSizeG = value;
  }

  @Property(name: "serving_size_ml")
  set servingSizeMl(num value) {
    _servingSizeMl = value;
  }

  @Property(name: "serving_size")
  set servingSize(String value) {
    _servingSize = value;
  }

  @Property(name: "ingredients")
  set ingredients(String value) {
    _ingredients = value;
  }

  @Property(name: "product_name")
  set productName(String value) {
    _productName = value;
  }

  @Property(name: "product_id")
  set productId(num value) {
    _productId = value;
  }
}
