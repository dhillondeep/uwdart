import 'package:dartson/dartson.dart';

/// This Data Model wraps data related to Food Services Diet.
@Entity()
class FoodServicesDiet {
  num _dietId;
  String _dietType;

  int get dietId => _dietId;

  String get dietType => _dietType;

  @Property(name: "diet_type")
  set dietType(String value) {
    _dietType = value;
  }

  @Property(name: "diet_id")
  set dietId(num value) {
    _dietId = value;
  }
}
