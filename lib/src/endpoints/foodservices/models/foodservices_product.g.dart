// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodservices_product.dart';

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<FoodServicesProduct> _$foodServicesProductSerializer =
    new _$FoodServicesProductSerializer();

class _$FoodServicesProductSerializer implements StructuredSerializer<FoodServicesProduct> {
  @override
  final Iterable<Type> types = const [FoodServicesProduct, _$FoodServicesProduct];
  @override
  final String wireName = 'FoodServicesProduct';

  @override
  Iterable serialize(Serializers serializers, FoodServicesProduct object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.productId != null) {
      result
        ..add('product_id')
        ..add(serializers.serialize(object.productId, specifiedType: const FullType(int)));
    }
    if (object.productName != null) {
      result
        ..add('product_name')
        ..add(serializers.serialize(object.productName, specifiedType: const FullType(String)));
    }
    if (object.ingredients != null) {
      result
        ..add('ingredients')
        ..add(serializers.serialize(object.ingredients, specifiedType: const FullType(String)));
    }
    if (object.servingSize != null) {
      result
        ..add('serving_size')
        ..add(serializers.serialize(object.servingSize, specifiedType: const FullType(String)));
    }
    if (object.servingSizeMl != null) {
      result
        ..add('serving_size_ml')
        ..add(serializers.serialize(object.servingSizeMl, specifiedType: const FullType(int)));
    }
    if (object.servingSizeG != null) {
      result
        ..add('serving_size_g')
        ..add(serializers.serialize(object.servingSizeG, specifiedType: const FullType(int)));
    }
    if (object.calories != null) {
      result
        ..add('calories')
        ..add(serializers.serialize(object.calories, specifiedType: const FullType(int)));
    }
    if (object.totalFatG != null) {
      result
        ..add('total_fat_g')
        ..add(serializers.serialize(object.totalFatG, specifiedType: const FullType(int)));
    }
    if (object.totalFatPercent != null) {
      result
        ..add('total_fat_percentage')
        ..add(serializers.serialize(object.totalFatPercent, specifiedType: const FullType(int)));
    }
    if (object.fatSaturatedG != null) {
      result
        ..add('fat_saturated_g')
        ..add(serializers.serialize(object.fatSaturatedG, specifiedType: const FullType(int)));
    }
    if (object.fatSaturatedPercent != null) {
      result
        ..add('fat_saturated_percent')
        ..add(
            serializers.serialize(object.fatSaturatedPercent, specifiedType: const FullType(int)));
    }
    if (object.fatTransG != null) {
      result
        ..add('fat_trans_g')
        ..add(serializers.serialize(object.fatTransG, specifiedType: const FullType(int)));
    }
    if (object.fatTransPercent != null) {
      result
        ..add('fat_trans_percent')
        ..add(serializers.serialize(object.fatTransPercent, specifiedType: const FullType(int)));
    }
    if (object.cholesterolMg != null) {
      result
        ..add('cholestero_mg')
        ..add(serializers.serialize(object.cholesterolMg, specifiedType: const FullType(int)));
    }
    if (object.sodiumMg != null) {
      result
        ..add('sodium_mg')
        ..add(serializers.serialize(object.sodiumMg, specifiedType: const FullType(int)));
    }
    if (object.sodiumPercent != null) {
      result
        ..add('sodium_percent')
        ..add(serializers.serialize(object.sodiumPercent, specifiedType: const FullType(int)));
    }
    if (object.carboG != null) {
      result
        ..add('carbo_g')
        ..add(serializers.serialize(object.carboG, specifiedType: const FullType(int)));
    }
    if (object.carboPercent != null) {
      result
        ..add('carbo_percent')
        ..add(serializers.serialize(object.carboPercent, specifiedType: const FullType(int)));
    }
    if (object.carboFibreG != null) {
      result
        ..add('carbo_fibre_g')
        ..add(serializers.serialize(object.carboFibreG, specifiedType: const FullType(int)));
    }
    if (object.carboFibrePercent != null) {
      result
        ..add('carbo_fibre_percent')
        ..add(serializers.serialize(object.carboFibrePercent, specifiedType: const FullType(int)));
    }
    if (object.carboSugarsG != null) {
      result
        ..add('carbo_sugars_g')
        ..add(serializers.serialize(object.carboSugarsG, specifiedType: const FullType(int)));
    }
    if (object.proteinG != null) {
      result
        ..add('protein_g')
        ..add(serializers.serialize(object.proteinG, specifiedType: const FullType(int)));
    }
    if (object.vitaminAPercent != null) {
      result
        ..add('vitamin_a_percent')
        ..add(serializers.serialize(object.vitaminAPercent, specifiedType: const FullType(int)));
    }
    if (object.vitaminCPercent != null) {
      result
        ..add('vitamin_c_percent')
        ..add(serializers.serialize(object.vitaminCPercent, specifiedType: const FullType(int)));
    }
    if (object.calciumPercent != null) {
      result
        ..add('calcium_percent')
        ..add(serializers.serialize(object.calciumPercent, specifiedType: const FullType(int)));
    }
    if (object.ironPercent != null) {
      result
        ..add('iron_percent')
        ..add(serializers.serialize(object.ironPercent, specifiedType: const FullType(int)));
    }
    if (object.microNutrients != null) {
      result
        ..add('micro_nutrients')
        ..add(serializers.serialize(object.microNutrients, specifiedType: const FullType(String)));
    }
    if (object.tips != null) {
      result
        ..add('tips')
        ..add(serializers.serialize(object.tips, specifiedType: const FullType(String)));
    }
    if (object.dietId != null) {
      result
        ..add('diet_id')
        ..add(serializers.serialize(object.dietId, specifiedType: const FullType(int)));
    }
    if (object.dietType != null) {
      result
        ..add('diet_type')
        ..add(serializers.serialize(object.dietType, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FoodServicesProduct deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesProductBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'product_id':
          result.productId =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'product_name':
          result.productName =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'ingredients':
          result.ingredients =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'serving_size':
          result.servingSize =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'serving_size_ml':
          result.servingSizeMl =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'serving_size_g':
          result.servingSizeG =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'calories':
          result.calories =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'total_fat_g':
          result.totalFatG =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'total_fat_percentage':
          result.totalFatPercent =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'fat_saturated_g':
          result.fatSaturatedG =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'fat_saturated_percent':
          result.fatSaturatedPercent =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'fat_trans_g':
          result.fatTransG =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'fat_trans_percent':
          result.fatTransPercent =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'cholestero_mg':
          result.cholesterolMg =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'sodium_mg':
          result.sodiumMg =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'sodium_percent':
          result.sodiumPercent =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'carbo_g':
          result.carboG = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'carbo_percent':
          result.carboPercent =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'carbo_fibre_g':
          result.carboFibreG =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'carbo_fibre_percent':
          result.carboFibrePercent =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'carbo_sugars_g':
          result.carboSugarsG =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'protein_g':
          result.proteinG =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'vitamin_a_percent':
          result.vitaminAPercent =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'vitamin_c_percent':
          result.vitaminCPercent =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'calcium_percent':
          result.calciumPercent =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'iron_percent':
          result.ironPercent =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'micro_nutrients':
          result.microNutrients =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'tips':
          result.tips =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'diet_id':
          result.dietId = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'diet_type':
          result.dietType =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesProduct extends FoodServicesProduct {
  @override
  final int productId;
  @override
  final String productName;
  @override
  final String ingredients;
  @override
  final String servingSize;
  @override
  final int servingSizeMl;
  @override
  final int servingSizeG;
  @override
  final int calories;
  @override
  final int totalFatG;
  @override
  final int totalFatPercent;
  @override
  final int fatSaturatedG;
  @override
  final int fatSaturatedPercent;
  @override
  final int fatTransG;
  @override
  final int fatTransPercent;
  @override
  final int cholesterolMg;
  @override
  final int sodiumMg;
  @override
  final int sodiumPercent;
  @override
  final int carboG;
  @override
  final int carboPercent;
  @override
  final int carboFibreG;
  @override
  final int carboFibrePercent;
  @override
  final int carboSugarsG;
  @override
  final int proteinG;
  @override
  final int vitaminAPercent;
  @override
  final int vitaminCPercent;
  @override
  final int calciumPercent;
  @override
  final int ironPercent;
  @override
  final String microNutrients;
  @override
  final String tips;
  @override
  final int dietId;
  @override
  final String dietType;

  factory _$FoodServicesProduct([void updates(FoodServicesProductBuilder b)]) =>
      (new FoodServicesProductBuilder()..update(updates)).build();

  _$FoodServicesProduct._(
      {this.productId,
      this.productName,
      this.ingredients,
      this.servingSize,
      this.servingSizeMl,
      this.servingSizeG,
      this.calories,
      this.totalFatG,
      this.totalFatPercent,
      this.fatSaturatedG,
      this.fatSaturatedPercent,
      this.fatTransG,
      this.fatTransPercent,
      this.cholesterolMg,
      this.sodiumMg,
      this.sodiumPercent,
      this.carboG,
      this.carboPercent,
      this.carboFibreG,
      this.carboFibrePercent,
      this.carboSugarsG,
      this.proteinG,
      this.vitaminAPercent,
      this.vitaminCPercent,
      this.calciumPercent,
      this.ironPercent,
      this.microNutrients,
      this.tips,
      this.dietId,
      this.dietType})
      : super._();

  @override
  FoodServicesProduct rebuild(void updates(FoodServicesProductBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesProductBuilder toBuilder() => new FoodServicesProductBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesProduct) return false;
    return productId == other.productId &&
        productName == other.productName &&
        ingredients == other.ingredients &&
        servingSize == other.servingSize &&
        servingSizeMl == other.servingSizeMl &&
        servingSizeG == other.servingSizeG &&
        calories == other.calories &&
        totalFatG == other.totalFatG &&
        totalFatPercent == other.totalFatPercent &&
        fatSaturatedG == other.fatSaturatedG &&
        fatSaturatedPercent == other.fatSaturatedPercent &&
        fatTransG == other.fatTransG &&
        fatTransPercent == other.fatTransPercent &&
        cholesterolMg == other.cholesterolMg &&
        sodiumMg == other.sodiumMg &&
        sodiumPercent == other.sodiumPercent &&
        carboG == other.carboG &&
        carboPercent == other.carboPercent &&
        carboFibreG == other.carboFibreG &&
        carboFibrePercent == other.carboFibrePercent &&
        carboSugarsG == other.carboSugarsG &&
        proteinG == other.proteinG &&
        vitaminAPercent == other.vitaminAPercent &&
        vitaminCPercent == other.vitaminCPercent &&
        calciumPercent == other.calciumPercent &&
        ironPercent == other.ironPercent &&
        microNutrients == other.microNutrients &&
        tips == other.tips &&
        dietId == other.dietId &&
        dietType == other.dietType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                $jc(
                                                                                    $jc(
                                                                                        $jc(
                                                                                            $jc(
                                                                                                $jc($jc($jc($jc($jc($jc($jc(0, productId.hashCode), productName.hashCode), ingredients.hashCode), servingSize.hashCode), servingSizeMl.hashCode), servingSizeG.hashCode),
                                                                                                    calories.hashCode),
                                                                                                totalFatG.hashCode),
                                                                                            totalFatPercent.hashCode),
                                                                                        fatSaturatedG.hashCode),
                                                                                    fatSaturatedPercent.hashCode),
                                                                                fatTransG.hashCode),
                                                                            fatTransPercent.hashCode),
                                                                        cholesterolMg.hashCode),
                                                                    sodiumMg.hashCode),
                                                                sodiumPercent.hashCode),
                                                            carboG.hashCode),
                                                        carboPercent.hashCode),
                                                    carboFibreG.hashCode),
                                                carboFibrePercent.hashCode),
                                            carboSugarsG.hashCode),
                                        proteinG.hashCode),
                                    vitaminAPercent.hashCode),
                                vitaminCPercent.hashCode),
                            calciumPercent.hashCode),
                        ironPercent.hashCode),
                    microNutrients.hashCode),
                tips.hashCode),
            dietId.hashCode),
        dietType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesProduct')
          ..add('productId', productId)
          ..add('productName', productName)
          ..add('ingredients', ingredients)
          ..add('servingSize', servingSize)
          ..add('servingSizeMl', servingSizeMl)
          ..add('servingSizeG', servingSizeG)
          ..add('calories', calories)
          ..add('totalFatG', totalFatG)
          ..add('totalFatPercent', totalFatPercent)
          ..add('fatSaturatedG', fatSaturatedG)
          ..add('fatSaturatedPercent', fatSaturatedPercent)
          ..add('fatTransG', fatTransG)
          ..add('fatTransPercent', fatTransPercent)
          ..add('cholesterolMg', cholesterolMg)
          ..add('sodiumMg', sodiumMg)
          ..add('sodiumPercent', sodiumPercent)
          ..add('carboG', carboG)
          ..add('carboPercent', carboPercent)
          ..add('carboFibreG', carboFibreG)
          ..add('carboFibrePercent', carboFibrePercent)
          ..add('carboSugarsG', carboSugarsG)
          ..add('proteinG', proteinG)
          ..add('vitaminAPercent', vitaminAPercent)
          ..add('vitaminCPercent', vitaminCPercent)
          ..add('calciumPercent', calciumPercent)
          ..add('ironPercent', ironPercent)
          ..add('microNutrients', microNutrients)
          ..add('tips', tips)
          ..add('dietId', dietId)
          ..add('dietType', dietType))
        .toString();
  }
}

class FoodServicesProductBuilder
    implements Builder<FoodServicesProduct, FoodServicesProductBuilder> {
  _$FoodServicesProduct _$v;

  int _productId;

  int get productId => _$this._productId;

  set productId(int productId) => _$this._productId = productId;

  String _productName;

  String get productName => _$this._productName;

  set productName(String productName) => _$this._productName = productName;

  String _ingredients;

  String get ingredients => _$this._ingredients;

  set ingredients(String ingredients) => _$this._ingredients = ingredients;

  String _servingSize;

  String get servingSize => _$this._servingSize;

  set servingSize(String servingSize) => _$this._servingSize = servingSize;

  int _servingSizeMl;

  int get servingSizeMl => _$this._servingSizeMl;

  set servingSizeMl(int servingSizeMl) => _$this._servingSizeMl = servingSizeMl;

  int _servingSizeG;

  int get servingSizeG => _$this._servingSizeG;

  set servingSizeG(int servingSizeG) => _$this._servingSizeG = servingSizeG;

  int _calories;

  int get calories => _$this._calories;

  set calories(int calories) => _$this._calories = calories;

  int _totalFatG;

  int get totalFatG => _$this._totalFatG;

  set totalFatG(int totalFatG) => _$this._totalFatG = totalFatG;

  int _totalFatPercent;

  int get totalFatPercent => _$this._totalFatPercent;

  set totalFatPercent(int totalFatPercent) => _$this._totalFatPercent = totalFatPercent;

  int _fatSaturatedG;

  int get fatSaturatedG => _$this._fatSaturatedG;

  set fatSaturatedG(int fatSaturatedG) => _$this._fatSaturatedG = fatSaturatedG;

  int _fatSaturatedPercent;

  int get fatSaturatedPercent => _$this._fatSaturatedPercent;

  set fatSaturatedPercent(int fatSaturatedPercent) =>
      _$this._fatSaturatedPercent = fatSaturatedPercent;

  int _fatTransG;

  int get fatTransG => _$this._fatTransG;

  set fatTransG(int fatTransG) => _$this._fatTransG = fatTransG;

  int _fatTransPercent;

  int get fatTransPercent => _$this._fatTransPercent;

  set fatTransPercent(int fatTransPercent) => _$this._fatTransPercent = fatTransPercent;

  int _cholesterolMg;

  int get cholesterolMg => _$this._cholesterolMg;

  set cholesterolMg(int cholesterolMg) => _$this._cholesterolMg = cholesterolMg;

  int _sodiumMg;

  int get sodiumMg => _$this._sodiumMg;

  set sodiumMg(int sodiumMg) => _$this._sodiumMg = sodiumMg;

  int _sodiumPercent;

  int get sodiumPercent => _$this._sodiumPercent;

  set sodiumPercent(int sodiumPercent) => _$this._sodiumPercent = sodiumPercent;

  int _carboG;

  int get carboG => _$this._carboG;

  set carboG(int carboG) => _$this._carboG = carboG;

  int _carboPercent;

  int get carboPercent => _$this._carboPercent;

  set carboPercent(int carboPercent) => _$this._carboPercent = carboPercent;

  int _carboFibreG;

  int get carboFibreG => _$this._carboFibreG;

  set carboFibreG(int carboFibreG) => _$this._carboFibreG = carboFibreG;

  int _carboFibrePercent;

  int get carboFibrePercent => _$this._carboFibrePercent;

  set carboFibrePercent(int carboFibrePercent) => _$this._carboFibrePercent = carboFibrePercent;

  int _carboSugarsG;

  int get carboSugarsG => _$this._carboSugarsG;

  set carboSugarsG(int carboSugarsG) => _$this._carboSugarsG = carboSugarsG;

  int _proteinG;

  int get proteinG => _$this._proteinG;

  set proteinG(int proteinG) => _$this._proteinG = proteinG;

  int _vitaminAPercent;

  int get vitaminAPercent => _$this._vitaminAPercent;

  set vitaminAPercent(int vitaminAPercent) => _$this._vitaminAPercent = vitaminAPercent;

  int _vitaminCPercent;

  int get vitaminCPercent => _$this._vitaminCPercent;

  set vitaminCPercent(int vitaminCPercent) => _$this._vitaminCPercent = vitaminCPercent;

  int _calciumPercent;

  int get calciumPercent => _$this._calciumPercent;

  set calciumPercent(int calciumPercent) => _$this._calciumPercent = calciumPercent;

  int _ironPercent;

  int get ironPercent => _$this._ironPercent;

  set ironPercent(int ironPercent) => _$this._ironPercent = ironPercent;

  String _microNutrients;

  String get microNutrients => _$this._microNutrients;

  set microNutrients(String microNutrients) => _$this._microNutrients = microNutrients;

  String _tips;

  String get tips => _$this._tips;

  set tips(String tips) => _$this._tips = tips;

  int _dietId;

  int get dietId => _$this._dietId;

  set dietId(int dietId) => _$this._dietId = dietId;

  String _dietType;

  String get dietType => _$this._dietType;

  set dietType(String dietType) => _$this._dietType = dietType;

  FoodServicesProductBuilder();

  FoodServicesProductBuilder get _$this {
    if (_$v != null) {
      _productId = _$v.productId;
      _productName = _$v.productName;
      _ingredients = _$v.ingredients;
      _servingSize = _$v.servingSize;
      _servingSizeMl = _$v.servingSizeMl;
      _servingSizeG = _$v.servingSizeG;
      _calories = _$v.calories;
      _totalFatG = _$v.totalFatG;
      _totalFatPercent = _$v.totalFatPercent;
      _fatSaturatedG = _$v.fatSaturatedG;
      _fatSaturatedPercent = _$v.fatSaturatedPercent;
      _fatTransG = _$v.fatTransG;
      _fatTransPercent = _$v.fatTransPercent;
      _cholesterolMg = _$v.cholesterolMg;
      _sodiumMg = _$v.sodiumMg;
      _sodiumPercent = _$v.sodiumPercent;
      _carboG = _$v.carboG;
      _carboPercent = _$v.carboPercent;
      _carboFibreG = _$v.carboFibreG;
      _carboFibrePercent = _$v.carboFibrePercent;
      _carboSugarsG = _$v.carboSugarsG;
      _proteinG = _$v.proteinG;
      _vitaminAPercent = _$v.vitaminAPercent;
      _vitaminCPercent = _$v.vitaminCPercent;
      _calciumPercent = _$v.calciumPercent;
      _ironPercent = _$v.ironPercent;
      _microNutrients = _$v.microNutrients;
      _tips = _$v.tips;
      _dietId = _$v.dietId;
      _dietType = _$v.dietType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodServicesProduct other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesProduct;
  }

  @override
  void update(void updates(FoodServicesProductBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesProduct build() {
    final _$result = _$v ??
        new _$FoodServicesProduct._(
            productId: productId,
            productName: productName,
            ingredients: ingredients,
            servingSize: servingSize,
            servingSizeMl: servingSizeMl,
            servingSizeG: servingSizeG,
            calories: calories,
            totalFatG: totalFatG,
            totalFatPercent: totalFatPercent,
            fatSaturatedG: fatSaturatedG,
            fatSaturatedPercent: fatSaturatedPercent,
            fatTransG: fatTransG,
            fatTransPercent: fatTransPercent,
            cholesterolMg: cholesterolMg,
            sodiumMg: sodiumMg,
            sodiumPercent: sodiumPercent,
            carboG: carboG,
            carboPercent: carboPercent,
            carboFibreG: carboFibreG,
            carboFibrePercent: carboFibrePercent,
            carboSugarsG: carboSugarsG,
            proteinG: proteinG,
            vitaminAPercent: vitaminAPercent,
            vitaminCPercent: vitaminCPercent,
            calciumPercent: calciumPercent,
            ironPercent: ironPercent,
            microNutrients: microNutrients,
            tips: tips,
            dietId: dietId,
            dietType: dietType);
    replace(_$result);
    return _$result;
  }
}
