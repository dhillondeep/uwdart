import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'meta.g.dart';

/// This Data Model is a wrapper for meta information about the API request
abstract class Meta implements Built<Meta, MetaBuilder> {
  int get requests;

  int get timestamp;

  int get status;

  @nullable
  int get version;

  @nullable
  int get methodId;

  String get message;

  Meta._();

  factory Meta([updates(MetaBuilder b)]) = _$Meta;

  static Serializer<Meta> get serializer => _$metaSerializer;
}
