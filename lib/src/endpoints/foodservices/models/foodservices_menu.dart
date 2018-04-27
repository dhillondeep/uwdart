import 'package:dartson/dartson.dart';

/// This Data Model wraps data related to an Food Services Menu. The data is provides information
/// about various food menus available.
@Entity()
class FoodServicesMenu {
  FoodServicesDate _date;
  List<FoodServicesMenuOutlet> _outlets;

  FoodServicesDate get date => _date;

  List<FoodServicesMenuOutlet> get outlets => _outlets;

  set outlets(List<FoodServicesMenuOutlet> value) {
    _outlets = value;
  }

  set date(FoodServicesDate value) {
    _date = value;
  }
}

/// This Data Model is used by [FoodServicesMenu] to wrap data for Menu Outlets
@Entity()
class FoodServicesMenuOutlet {
  String _outletName;
  num _outletId;
  List<FoodServicesOutletMenu> _menu;

  String get outletName => _outletName;

  num get outletId => _outletId;

  List<FoodServicesOutletMenu> get menu => _menu;

  set menu(List<FoodServicesOutletMenu> value) {
    _menu = value;
  }

  @Property(name: "outlet_id")
  set outletId(num value) {
    _outletId = value;
  }

  @Property(name: "outlet_name")
  set outletName(String value) {
    _outletName = value;
  }
}

/// This Data Model us used by [FoodServicesOutlet] to wrap data for menu detailed information
@Entity()
class FoodServicesOutletMenu {
  String _date;
  String _day;
  FoodServicesMeal _meals;
  String _notes;
  String get date => _date;

  String get day => _day;

  FoodServicesMeal get meals => _meals;

  String get notes => _notes;

  set notes(String value) {
    _notes = value;
  }

  set meals(FoodServicesMeal value) {
    _meals = value;
  }

  set day(String value) {
    _day = value;
  }

  set date(String value) {
    _date = value;
  }
}

/// This Data Model is used by [FoodServicesOutletMenu] to wrap data about the meal
@Entity()
class FoodServicesMeal {
  List<FoodServicesMenuItem> _lunch;
  List<FoodServicesMenuItem> _dinner;

  List<FoodServicesMenuItem> get lunch => _lunch;

  List<FoodServicesMenuItem> get dinner => _dinner;

  set dinner(List<FoodServicesMenuItem> value) {
    _dinner = value;
  }

  set lunch(List<FoodServicesMenuItem> value) {
    _lunch = value;
  }
}

/// This Data Model is used by [FoodServicesMeal] to wrap data about meal item
@Entity()
class FoodServicesMenuItem {
  String _productName;
  String _dietType;
  num _productId;

  String get productName => _productName;

  String get dietType => _dietType;

  num get productId => _productId;

  @Property(name: "product_id")
  set productId(num value) {
    _productId = value;
  }

  @Property(name: "diet_type")
  set dietType(String value) {
    _dietType = value;
  }

  @Property(name: "product_name")
  set productName(String value) {
    _productName = value;
  }
}

/// This Data Model is used by [FoodServicesMenu] to store menu date
@Entity()
class FoodServicesDate {
  int _week;
  int _year;
  String _start;
  String _end;

  int get week => _week;

  int get year => _year;

  String get start => _start;

  String get end => _end;

  set end(String value) {
    _end = value;
  }

  set start(String value) {
    _start = value;
  }

  set year(int value) {
    _year = value;
  }

  set week(int value) {
    _week = value;
  }
}
