import 'package:dartson/dartson.dart';

/// MetaModel is a wrapper for meta information about the API request
@Entity()
class Meta {
  int _requests;
  int _timestamp;
  int _status;
  int _version;
  int _methodId;
  String _message;

  int get requests => _requests;

  int get timestamp => _timestamp;

  int get status => _status;

  int get version => _version;

  int get methodId => _methodId;

  String get message => _message;

  set message(String value) {
    _message = value;
  }

  @Property(name: "methd_id")
  set methodId(int value) {
    _methodId = value;
  }

  set version(int value) {
    _version = value;
  }

  set status(int value) {
    _status = value;
  }

  set timestamp(int value) {
    _timestamp = value;
  }

  set requests(int value) {
    _requests = value;
  }
}
