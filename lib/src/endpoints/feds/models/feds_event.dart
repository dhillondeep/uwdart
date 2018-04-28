import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uwdart/src/endpoints/feds/models/feds_event_base.dart';

part 'feds_event.g.dart';

/// This Data Model wraps basic information about FEDS event.
abstract class FedsEvent implements FedsEventBase, Built<FedsEvent, FedsEventBuilder> {
  static Serializer<FedsEvent> get serializer => _$fedsEventSerializer;

  factory FedsEvent([updates(FedsEventBuilder b)]) = _$FedsEvent;

  FedsEvent._();
}
