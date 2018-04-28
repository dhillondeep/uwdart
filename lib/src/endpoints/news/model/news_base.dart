import 'package:built_value/built_value.dart';

part 'news_base.g.dart';

/// This Data Model wraps basic data provides for each news by UW news API. This is provided
/// when search is narrowed down to "site" level
@BuiltValue(instantiable: false)
abstract class NewsBase {
  @nullable
  int get id;

  @nullable
  String get title;

  @nullable
  String get link;

  @nullable
  String get published;

  @nullable
  String get updated;

  NewsBase rebuild(void updates(NewsBaseBuilder b));

  NewsBaseBuilder toBuilder();
}
