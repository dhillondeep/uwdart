/// This Data Model wraps a generic structure for the Image that is returned from the API.
/// This is used under other models who provide detailed information for a query.
class UWImage {
  int _id;
  String _file;
  String _alt;
  String _mime;
  int _size;
  int _width;
  int _height;
  String _url;

  int get id => _id;

  String get file => _file;

  String get url => _url;

  int get height => _height;

  int get width => _width;

  int get size => _size;

  String get mime => _mime;

  String get alt => _alt;

  set url(String value) {
    _url = value;
  }

  set height(int value) {
    _height = value;
  }

  set width(int value) {
    _width = value;
  }

  set size(int value) {
    _size = value;
  }

  set mime(String value) {
    _mime = value;
  }

  set alt(String value) {
    _alt = value;
  }

  set file(String value) {
    _file = value;
  }

  set id(int value) {
    _id = value;
  }
}
