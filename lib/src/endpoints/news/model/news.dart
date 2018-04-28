import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uwdart/src/endpoints/news/model/news_base.dart';

part 'news.g.dart';

abstract class News implements NewsBase, Built<News, NewsBuilder> {
  News._();

  static Serializer<News> get serializer => _$newsSerializer;

  factory News([updates(NewsBuilder b)]) = _$News;
}
