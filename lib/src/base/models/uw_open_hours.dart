import 'package:dartson/dartson.dart';
import 'package:uwdart/src/base/models/uw_day.dart';

/// This Data Model used by [UWLocation] wraps data related to hours properties of the location.
@Entity()
class UWOpeningHours {
  UWDay _sunday;
  UWDay _monday;
  UWDay _tuesday;
  UWDay _wednesday;
  UWDay _thursday;
  UWDay _friday;
  UWDay _saturday;

  UWDay get sunday => _sunday;

  UWDay get monday => _monday;

  UWDay get saturday => _saturday;

  UWDay get friday => _friday;

  UWDay get thursday => _thursday;

  UWDay get wednesday => _wednesday;

  UWDay get tuesday => _tuesday;

  set saturday(UWDay value) {
    _saturday = value;
  }

  set friday(UWDay value) {
    _friday = value;
  }

  set thursday(UWDay value) {
    _thursday = value;
  }

  set wednesday(UWDay value) {
    _wednesday = value;
  }

  set tuesday(UWDay value) {
    _tuesday = value;
  }

  set monday(UWDay value) {
    _monday = value;
  }

  set sunday(UWDay value) {
    _sunday = value;
  }
}
