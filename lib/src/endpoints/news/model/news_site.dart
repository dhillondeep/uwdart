import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uwdart/src/endpoints/news/model/news_base.dart';

part 'news_site.g.dart';

/// This Data Model the basic data plus the site data, which is parsed from the
/// UW news API. This is provided when search is the most broad.
abstract class NewsSite implements NewsBase, Built<NewsSite, NewsSiteBuilder> {
  @nullable
  String get site;

  NewsSite._();

  static Serializer<NewsSite> get serializer => _$newsSiteSerializer;

  factory NewsSite([updates(NewsSiteBuilder b)]) = _$NewsSite;
}
