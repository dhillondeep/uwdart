/// This Data Model wraps a generic structure for the Image that is returned from the API.
/// This is used under other models who provide detailed information for a query.

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'uw_image.g.dart';

/// This is used under other models who provide detailed information for a query.

/// This is used under other models who provide detailed information for a query.

abstract class UWImage extends Object implements Built<UWImage, UWImageBuilder> {
  @nullable
  int get id;

  @nullable
  String get file;

  @nullable
  String get alt;

  @nullable
  String get mime;

  @nullable
  int get size;

  @nullable
  int get width;

  @nullable
  int get height;

  @nullable
  String get url;

  static Serializer<UWImage> get serializer => _$uWImageSerializer;

  factory UWImage([updates(UWImageBuilder b)]) = _$UWImage;

  UWImage._();
}
