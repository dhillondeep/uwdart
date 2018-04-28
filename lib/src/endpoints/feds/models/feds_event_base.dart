import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'feds_event_base.g.dart';

/// This Data Model wraps basic information about FEDS event.
@BuiltValue(instantiable: false)
abstract class FedsEventBase extends Object {
  int get id;

  @nullable
  String get title;

  @nullable
  String get location;

  String get start;

  String get end;

  BuiltList<String> get categories;

  @nullable
  String get url;

  String get updated;

  FedsEventBase rebuild(void updates(FedsEventBaseBuilder b));

  FedsEventBaseBuilder toBuilder();
}
