import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'foodservices_annoucement.g.dart';

/// This Data Model wraps the data related to Food Services Announcement.
abstract class FoodServicesAnnouncement
    implements Built<FoodServicesAnnouncement, FoodServicesAnnouncementBuilder> {
  @nullable
  String get date;

  @BuiltValueField(wireName: "ad_text")
  @nullable
  String get adText;

  FoodServicesAnnouncement._();

  static Serializer<FoodServicesAnnouncement> get serializer =>
      _$foodServicesAnnouncementSerializer;

  factory FoodServicesAnnouncement([updates(FoodServicesAnnouncementBuilder b)]) =
      _$FoodServicesAnnouncement;
}
