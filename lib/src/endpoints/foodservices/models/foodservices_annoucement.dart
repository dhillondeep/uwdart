import 'package:dartson/dartson.dart';

/// This Data Model wraps the data related to Food Services Announcement.
@Entity()
class FoodServicesAnnouncement {
  String _date;
  String _adText;

  String get date => _date;

  String get adText => _adText;

  set adText(String value) {
    _adText = value;
  }

  @Property(name: "ad_text")
  set date(String value) {
    _date = value;
  }
}
