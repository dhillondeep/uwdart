import 'package:dartson/dartson.dart';
import 'package:uwdart/src/data/model/meta.dart';

/// APIResponse class wraps the raw response from the UW API and provides
/// getters and setters for various fields. It however also provides
/// an access to raw response as a string
@Entity()
class APIResponse {
  Meta _meta;
  List<Map<String, dynamic>> _data;
  String _raw;

  Meta get meta => _meta;

  List<Map<String, dynamic>> get data => _data;

  String get raw => _raw;

  set data(List<Map<String, dynamic>> value) {
    _data = value;
  }

  set meta(Meta value) {
    _meta = value;
  }

  set raw(String raw) {
    _raw = raw;
  }
}
