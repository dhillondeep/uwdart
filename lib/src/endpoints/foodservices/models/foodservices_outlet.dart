import 'package:dartson/dartson.dart';

/// This Data Model wraps data related to outlets available from Food Services
@Entity()
class FoodServicesOutlet {
  num _outletId;
  String _outletName;
  int _hasBreakfast;
  int _hasLunch;
  int _hasDinner;

  num get outletId => _outletId;

  String get outletName => _outletName;

  int get hasDinner => _hasDinner;

  int get hasLunch => _hasLunch;

  int get hasBreakfast => _hasBreakfast;

  @Property(name: "has_dinner")
  set hasDinner(int value) {
    _hasDinner = value;
  }

  @Property(name: "has_lunch")
  set hasLunch(int value) {
    _hasLunch = value;
  }

  @Property(name: "has_breakfast")
  set hasBreakfast(int value) {
    _hasBreakfast = value;
  }

  @Property(name: "outlet_name")
  set outletName(String value) {
    _outletName = value;
  }

  @Property(name: "outlet_id")
  set outletId(num value) {
    _outletId = value;
  }
}
