import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'meta.g.dart';

/// This Data Model is a wrapper for meta information about the API request
abstract class Meta implements Built<Meta, MetaBuilder> {
  int get requests;

  int get timestamp;

  int get status;

  String get message;

  @BuiltValueField(wireName: "method_id")
  @nullable
  int get methodId;

  MetaMethod get method;

  static Serializer<Meta> get serializer => _$metaSerializer;

  factory Meta([updates(MetaBuilder b)]) = _$Meta;

  Meta._();
}

abstract class MetaMethod implements Built<MetaMethod, MetaMethodBuilder> {
  @nullable
  String get disclaimer;

  @nullable
  String get license;

  static Serializer<MetaMethod> get serializer => _$metaMethodSerializer;

  factory MetaMethod([updates(MetaMethodBuilder b)]) = _$MetaMethod;

  MetaMethod._();
}
