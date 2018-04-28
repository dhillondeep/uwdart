// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uw_image.dart';

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<UWImage> _$uWImageSerializer = new _$UWImageSerializer();

class _$UWImageSerializer implements StructuredSerializer<UWImage> {
  @override
  final Iterable<Type> types = const [UWImage, _$UWImage];
  @override
  final String wireName = 'UWImage';

  @override
  Iterable serialize(Serializers serializers, UWImage object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result..add('id')..add(serializers.serialize(object.id, specifiedType: const FullType(int)));
    }
    if (object.file != null) {
      result
        ..add('file')
        ..add(serializers.serialize(object.file, specifiedType: const FullType(String)));
    }
    if (object.alt != null) {
      result
        ..add('alt')
        ..add(serializers.serialize(object.alt, specifiedType: const FullType(String)));
    }
    if (object.mime != null) {
      result
        ..add('mime')
        ..add(serializers.serialize(object.mime, specifiedType: const FullType(String)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size, specifiedType: const FullType(int)));
    }
    if (object.width != null) {
      result
        ..add('width')
        ..add(serializers.serialize(object.width, specifiedType: const FullType(int)));
    }
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height, specifiedType: const FullType(int)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  UWImage deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new UWImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'file':
          result.file =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'alt':
          result.alt =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'mime':
          result.mime =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'width':
          result.width = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UWImage extends UWImage {
  @override
  final int id;
  @override
  final String file;
  @override
  final String alt;
  @override
  final String mime;
  @override
  final int size;
  @override
  final int width;
  @override
  final int height;
  @override
  final String url;

  factory _$UWImage([void updates(UWImageBuilder b)]) =>
      (new UWImageBuilder()..update(updates)).build();

  _$UWImage._(
      {this.id, this.file, this.alt, this.mime, this.size, this.width, this.height, this.url})
      : super._();

  @override
  UWImage rebuild(void updates(UWImageBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  UWImageBuilder toBuilder() => new UWImageBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! UWImage) return false;
    return id == other.id &&
        file == other.file &&
        alt == other.alt &&
        mime == other.mime &&
        size == other.size &&
        width == other.width &&
        height == other.height &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc($jc(0, id.hashCode), file.hashCode), alt.hashCode), mime.hashCode),
                    size.hashCode),
                width.hashCode),
            height.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UWImage')
          ..add('id', id)
          ..add('file', file)
          ..add('alt', alt)
          ..add('mime', mime)
          ..add('size', size)
          ..add('width', width)
          ..add('height', height)
          ..add('url', url))
        .toString();
  }
}

class UWImageBuilder implements Builder<UWImage, UWImageBuilder> {
  _$UWImage _$v;

  int _id;

  int get id => _$this._id;

  set id(int id) => _$this._id = id;

  String _file;

  String get file => _$this._file;

  set file(String file) => _$this._file = file;

  String _alt;

  String get alt => _$this._alt;

  set alt(String alt) => _$this._alt = alt;

  String _mime;

  String get mime => _$this._mime;

  set mime(String mime) => _$this._mime = mime;

  int _size;

  int get size => _$this._size;

  set size(int size) => _$this._size = size;

  int _width;

  int get width => _$this._width;

  set width(int width) => _$this._width = width;

  int _height;

  int get height => _$this._height;

  set height(int height) => _$this._height = height;

  String _url;

  String get url => _$this._url;

  set url(String url) => _$this._url = url;

  UWImageBuilder();

  UWImageBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _file = _$v.file;
      _alt = _$v.alt;
      _mime = _$v.mime;
      _size = _$v.size;
      _width = _$v.width;
      _height = _$v.height;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UWImage other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$UWImage;
  }

  @override
  void update(void updates(UWImageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UWImage build() {
    final _$result = _$v ??
        new _$UWImage._(
            id: id,
            file: file,
            alt: alt,
            mime: mime,
            size: size,
            width: width,
            height: height,
            url: url);
    replace(_$result);
    return _$result;
  }
}
