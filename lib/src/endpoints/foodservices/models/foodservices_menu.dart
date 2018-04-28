import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'foodservices_menu.g.dart';

/// This Data Model wraps data related to an Food Services Menu. The data is provides information
/// about various food menus available.
abstract class FoodServicesMenu implements Built<FoodServicesMenu, FoodServicesMenuBuilder> {
  @nullable
  FoodServicesDate get date;

  @nullable
  BuiltList<FoodServicesMenuOutlet> get outlets;

  FoodServicesMenu._();

  static Serializer<FoodServicesMenu> get serializer => _$foodServicesMenuSerializer;

  factory FoodServicesMenu([updates(FoodServicesMenuBuilder b)]) = _$FoodServicesMenu;
}

/// This Data Model is used by [FoodServicesMenu] to wrap data for Menu Outlets.
abstract class FoodServicesMenuOutlet
    implements Built<FoodServicesMenuOutlet, FoodServicesMenuOutletBuilder> {
  @BuiltValueField(wireName: "outlet_name")
  @nullable
  String get outletName;

  @BuiltValueField(wireName: "outlet_id")
  @nullable
  int get outletId;

  @nullable
  BuiltList<FoodServicesOutletMenu> get menu;

  FoodServicesMenuOutlet._();

  static Serializer<FoodServicesMenuOutlet> get serializer => _$foodServicesMenuOutletSerializer;

  factory FoodServicesMenuOutlet([updates(FoodServicesMenuOutletBuilder b)]) =
      _$FoodServicesMenuOutlet;
}

/// This Data Model us used by [FoodServicesOutlet] to wrap data for menu detailed information.
abstract class FoodServicesOutletMenu
    implements Built<FoodServicesOutletMenu, FoodServicesOutletMenuBuilder> {
  @nullable
  String get date;

  @nullable
  String get day;

  @nullable
  FoodServicesMeal get meals;

  @nullable
  String get notes;

  FoodServicesOutletMenu._();

  static Serializer<FoodServicesOutletMenu> get serializer => _$foodServicesOutletMenuSerializer;

  factory FoodServicesOutletMenu([updates(FoodServicesOutletMenuBuilder b)]) =
      _$FoodServicesOutletMenu;
}

/// This Data Model is used by [FoodServicesOutletMenu] to wrap data about the meal.
abstract class FoodServicesMeal implements Built<FoodServicesMeal, FoodServicesMealBuilder> {
  @nullable
  BuiltList<FoodServicesMenuItem> get lunch;

  @nullable
  BuiltList<FoodServicesMenuItem> get dinner;

  FoodServicesMeal._();

  static Serializer<FoodServicesMeal> get serializer => _$foodServicesMealSerializer;

  factory FoodServicesMeal([updates(FoodServicesMealBuilder b)]) = _$FoodServicesMeal;
}

/// This Data Model is used by [FoodServicesMeal] to wrap data about meal item.
abstract class FoodServicesMenuItem
    implements Built<FoodServicesMenuItem, FoodServicesMenuItemBuilder> {
  @BuiltValueField(wireName: "product_name")
  @nullable
  String get productName;

  @BuiltValueField(wireName: "diet_type")
  @nullable
  String get dietType;

  @BuiltValueField(wireName: "product_id")
  @nullable
  int get productId;

  FoodServicesMenuItem._();

  static Serializer<FoodServicesMenuItem> get serializer => _$foodServicesMenuItemSerializer;

  factory FoodServicesMenuItem([updates(FoodServicesMenuItemBuilder b)]) = _$FoodServicesMenuItem;
}

/// This Data Model is used by [FoodServicesMenu] to store menu date.
abstract class FoodServicesDate implements Built<FoodServicesDate, FoodServicesDateBuilder> {
  @nullable
  int get week;

  @nullable
  int get year;

  @nullable
  String get start;

  @nullable
  String get end;

  FoodServicesDate._();

  static Serializer<FoodServicesDate> get serializer => _$foodServicesDateSerializer;

  factory FoodServicesDate([updates(FoodServicesDateBuilder b)]) = _$FoodServicesDate;
}
