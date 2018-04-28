// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<News> _$newsSerializer = new _$NewsSerializer();

class _$NewsSerializer implements StructuredSerializer<News> {
  @override
  final Iterable<Type> types = const [News, _$News];
  @override
  final String wireName = 'News';

  @override
  Iterable serialize(Serializers serializers, News object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result..add('id')..add(serializers.serialize(object.id, specifiedType: const FullType(int)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title, specifiedType: const FullType(String)));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link, specifiedType: const FullType(String)));
    }
    if (object.published != null) {
      result
        ..add('published')
        ..add(serializers.serialize(object.published, specifiedType: const FullType(String)));
    }
    if (object.updated != null) {
      result
        ..add('updated')
        ..add(serializers.serialize(object.updated, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  News deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NewsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'link':
          result.link =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'published':
          result.published =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'updated':
          result.updated =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$News extends News {
  @override
  final int id;
  @override
  final String title;
  @override
  final String link;
  @override
  final String published;
  @override
  final String updated;

  factory _$News([void updates(NewsBuilder b)]) => (new NewsBuilder()..update(updates)).build();

  _$News._({this.id, this.title, this.link, this.published, this.updated}) : super._();

  @override
  News rebuild(void updates(NewsBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  NewsBuilder toBuilder() => new NewsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! News) return false;
    return id == other.id &&
        title == other.title &&
        link == other.link &&
        published == other.published &&
        updated == other.updated;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), title.hashCode), link.hashCode), published.hashCode),
        updated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('News')
          ..add('id', id)
          ..add('title', title)
          ..add('link', link)
          ..add('published', published)
          ..add('updated', updated))
        .toString();
  }
}

class NewsBuilder implements Builder<News, NewsBuilder>, NewsBaseBuilder {
  _$News _$v;

  int _id;

  int get id => _$this._id;

  set id(int id) => _$this._id = id;

  String _title;

  String get title => _$this._title;

  set title(String title) => _$this._title = title;

  String _link;

  String get link => _$this._link;

  set link(String link) => _$this._link = link;

  String _published;

  String get published => _$this._published;

  set published(String published) => _$this._published = published;

  String _updated;

  String get updated => _$this._updated;

  set updated(String updated) => _$this._updated = updated;

  NewsBuilder();

  NewsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _link = _$v.link;
      _published = _$v.published;
      _updated = _$v.updated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant News other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$News;
  }

  @override
  void update(void updates(NewsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$News build() {
    final _$result = _$v ??
        new _$News._(id: id, title: title, link: link, published: published, updated: updated);
    replace(_$result);
    return _$result;
  }
}
