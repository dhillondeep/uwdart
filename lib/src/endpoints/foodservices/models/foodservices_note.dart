import 'package:dartson/dartson.dart';

/// This Data Model wraps data related to Food Services note.
@Entity()
class FoodServicesNote {
  String _date;
  String _outletName;
  String _outletId;
  String _note;

  String get date => _date;

  String get outletName => _outletName;

  String get outletId => _outletId;

  String get note => _note;

  set note(String value) {
    _note = value;
  }

  @Property(name: "outlet_id")
  set outletId(String value) {
    _outletId = value;
  }

  @Property(name: "outlet_name")
  set outletName(String value) {
    _outletName = value;
  }

  set date(String value) {
    _date = value;
  }
}
