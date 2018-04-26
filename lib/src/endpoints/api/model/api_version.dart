import 'package:dartson/dartson.dart';

/// This Data Model wraps data related to API Versions throughout the years of UW Open Data
/// API Development.
@Entity()
class ApiVersion {
  double _version;
  String _releaseDate;

  double get version => _version;

  String get releaseDate => _releaseDate;

  @Property(name: "release_date")
  set releaseDate(String value) {
    _releaseDate = value;
  }

  @Property(name: "version")
  set version(double value) {
    _version = value;
  }
}
