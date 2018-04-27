import 'package:dartson/dartson.dart';
import 'package:uwdart/src/endpoints/feds/models/feds_event.dart';

/// This Data Model wraps detailed information about FEDS event.
@Entity()
class FedsEventDetailed implements FedsEvent {
  String _description;
  String _descriptionRaw;

  @override
  List<String> categories;

  @override
  String end;

  @override
  num id;

  @override
  String location;

  @override
  String start;

  @override
  String title;

  @override
  String updated;

  @override
  String url;

  String get description => _description;

  String get descriptionRaw => _descriptionRaw;

  @Property(name: "description_raw")
  set descriptionRaw(String value) {
    _descriptionRaw = value;
  }

  set description(String value) {
    _description = value;
  }
}
