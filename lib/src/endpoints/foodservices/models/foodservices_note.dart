import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'foodservices_note.g.dart';

/// This Data Model wraps data related to Food Services note.
abstract class FoodServicesNote implements Built<FoodServicesNote, FoodServicesNoteBuilder> {
  @nullable
  String get date;

  @BuiltValueField(wireName: "outlet_name")
  @nullable
  String get outletName;

  @BuiltValueField(wireName: "outlet_id")
  @nullable
  int get outletId;

  @nullable
  String get note;

  FoodServicesNote._();

  static Serializer<FoodServicesNote> get serializer => _$foodServicesNoteSerializer;

  factory FoodServicesNote([updates(FoodServicesNoteBuilder b)]) = _$FoodServicesNote;
}
