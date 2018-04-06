import 'package:dartson/dartson.dart';
import 'package:uwdart/src/base/models/uw_image.dart';

/// NewsDetailed is a Model that contains the most detailed description for the news. It is the most
/// narrow search and hence contains all the fields provided by the API.
@Entity()
class NewsDetailed {
  int _id;
  String _title;
  String _link;
  String _published;
  String _updated;
  String _description;
  String _descriptionRaw;
  List<String> _audience;
  UWImage _image;
  String _siteId;
  String _siteName;
  int _revisionId;

  int get id => _id;

  String get title => _title;

  String get link => _link;

  String get published => _published;

  String get updated => _updated;

  String get description => _description;

  String get descriptionRaw => _descriptionRaw;

  List<String> get audience => _audience;

  UWImage get image => _image;

  String get siteId => _siteId;

  String get siteName => _siteName;

  int get revisionId => _revisionId;

  set updated(String value) {
    _updated = value;
  }

  set published(String value) {
    _published = value;
  }

  set link(String value) {
    _link = value;
  }

  set title(String value) {
    _title = value;
  }

  set id(int value) {
    _id = value;
  }

  set image(UWImage value) {
    _image = value;
  }

  set audience(List<String> value) {
    _audience = value;
  }

  set description(String value) {
    _description = value;
  }

  @Property(name: "description_raw")
  set descriptionRaw(String value) {
    _descriptionRaw = value;
  }

  @Property(name: "site_id")
  set siteId(String value) {
    _siteId = value;
  }

  @Property(name: "site_name")
  set siteName(String value) {
    _siteName = value;
  }

  @Property(name: "revision_id")
  set revisionId(int value) {
    _revisionId = value;
  }
}
