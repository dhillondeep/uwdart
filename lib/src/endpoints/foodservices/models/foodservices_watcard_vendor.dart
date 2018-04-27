import 'package:dartson/dartson.dart';

/// This Data Model wraps data related to vendors that accept UW Watcard.
@Entity()
class FoodServicesWatcardVendor {
  num _vendorId;
  String _vendorName;
  num _latitude;
  num _longitude;
  String _address;
  String _phoneNumber;
  String _logo;

  num get vendorId => _vendorId;

  String get vendorName => _vendorName;

  num get latitude => _latitude;

  num get longitude => _longitude;

  String get address => _address;

  String get phoneNumber => _phoneNumber;

  String get logo => _logo;

  @Property(name: "vendor_name")
  set vendorName(String value) {
    _vendorName = value;
  }

  @Property(name: "vendor_id")
  set vendorId(num value) {
    _vendorId = value;
  }

  set logo(String value) {
    _logo = value;
  }

  @Property(name: "phone_number")
  set phoneNumber(String value) {
    _phoneNumber = value;
  }

  set address(String value) {
    _address = value;
  }

  set longitude(num value) {
    _longitude = value;
  }

  set latitude(num value) {
    _latitude = value;
  }
}
