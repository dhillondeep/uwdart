import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uwdart/src/base/models/uw_image.dart';
import 'package:uwdart/src/endpoints/news/model/news_base.dart';

part 'news_detailed.g.dart';

/// This Data Model wraps the most detailed description for the news. It is the most
/// narrow search and hence contains all the fields provided by the API.
abstract class NewsDetailed implements NewsBase, Built<NewsDetailed, NewsDetailedBuilder> {
  @nullable
  String get description;

  @BuiltValueField(wireName: "description_raw")
  @nullable
  String get descriptionRaw;

  @nullable
  BuiltList<String> get audience;

  @nullable
  UWImage get image;

  @BuiltValueField(wireName: "site_id")
  @nullable
  String get siteId;

  @BuiltValueField(wireName: "site_name")
  @nullable
  String get siteName;

  @BuiltValueField(wireName: "revision_id")
  @nullable
  int get revisionId;

  NewsDetailed._();

  static Serializer<NewsDetailed> get serializer => _$newsDetailedSerializer;

  factory NewsDetailed([updates(NewsDetailedBuilder b)]) = _$NewsDetailed;
}
