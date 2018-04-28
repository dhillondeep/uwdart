import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uwdart/src/endpoints/feds/models/feds_event_base.dart';

part 'feds_events_detailed.g.dart';

/// This Data Model wraps detailed information about FEDS event.
abstract class FedsEventDetailed extends Object
    implements FedsEventBase, Built<FedsEventDetailed, FedsEventDetailedBuilder> {
  String get description;

  @nullable
  String get descriptionRaw;

  static Serializer<FedsEventDetailed> get serializer => _$fedsEventDetailedSerializer;

  factory FedsEventDetailed([updates(FedsEventDetailedBuilder b)]) = _$FedsEventDetailed;

  FedsEventDetailed._();
}
