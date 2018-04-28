// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_detailed.dart';

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

Serializer<NewsDetailed> _$newsDetailedSerializer = new _$NewsDetailedSerializer();

class _$NewsDetailedSerializer implements StructuredSerializer<NewsDetailed> {
  @override
  final Iterable<Type> types = const [NewsDetailed, _$NewsDetailed];
  @override
  final String wireName = 'NewsDetailed';

  @override
  Iterable serialize(Serializers serializers, NewsDetailed object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description, specifiedType: const FullType(String)));
    }
    if (object.descriptionRaw != null) {
      result
        ..add('description_raw')
        ..add(serializers.serialize(object.descriptionRaw, specifiedType: const FullType(String)));
    }
    if (object.audience != null) {
      result
        ..add('audience')
        ..add(serializers.serialize(object.audience,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.image != null) {
      result
        ..add('image')
        ..add(serializers.serialize(object.image, specifiedType: const FullType(UWImage)));
    }
    if (object.siteId != null) {
      result
        ..add('site_id')
        ..add(serializers.serialize(object.siteId, specifiedType: const FullType(String)));
    }
    if (object.siteName != null) {
      result
        ..add('site_name')
        ..add(serializers.serialize(object.siteName, specifiedType: const FullType(String)));
    }
    if (object.revisionId != null) {
      result
        ..add('revision_id')
        ..add(serializers.serialize(object.revisionId, specifiedType: const FullType(int)));
    }
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
  NewsDetailed deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new NewsDetailedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'description':
          result.description =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'description_raw':
          result.descriptionRaw =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'audience':
          result.audience.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'image':
          result.image.replace(
              serializers.deserialize(value, specifiedType: const FullType(UWImage)) as UWImage);
          break;
        case 'site_id':
          result.siteId =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'site_name':
          result.siteName =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'revision_id':
          result.revisionId =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
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

class _$NewsDetailed extends NewsDetailed {
  @override
  final String description;
  @override
  final String descriptionRaw;
  @override
  final BuiltList<String> audience;
  @override
  final UWImage image;
  @override
  final String siteId;
  @override
  final String siteName;
  @override
  final int revisionId;
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

  factory _$NewsDetailed([void updates(NewsDetailedBuilder b)]) =>
      (new NewsDetailedBuilder()..update(updates)).build();

  _$NewsDetailed._(
      {this.description,
      this.descriptionRaw,
      this.audience,
      this.image,
      this.siteId,
      this.siteName,
      this.revisionId,
      this.id,
      this.title,
      this.link,
      this.published,
      this.updated})
      : super._();

  @override
  NewsDetailed rebuild(void updates(NewsDetailedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsDetailedBuilder toBuilder() => new NewsDetailedBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! NewsDetailed) return false;
    return description == other.description &&
        descriptionRaw == other.descriptionRaw &&
        audience == other.audience &&
        image == other.image &&
        siteId == other.siteId &&
        siteName == other.siteName &&
        revisionId == other.revisionId &&
        id == other.id &&
        title == other.title &&
        link == other.link &&
        published == other.published &&
        updated == other.updated;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, description.hashCode),
                                                descriptionRaw.hashCode),
                                            audience.hashCode),
                                        image.hashCode),
                                    siteId.hashCode),
                                siteName.hashCode),
                            revisionId.hashCode),
                        id.hashCode),
                    title.hashCode),
                link.hashCode),
            published.hashCode),
        updated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewsDetailed')
          ..add('description', description)
          ..add('descriptionRaw', descriptionRaw)
          ..add('audience', audience)
          ..add('image', image)
          ..add('siteId', siteId)
          ..add('siteName', siteName)
          ..add('revisionId', revisionId)
          ..add('id', id)
          ..add('title', title)
          ..add('link', link)
          ..add('published', published)
          ..add('updated', updated))
        .toString();
  }
}

class NewsDetailedBuilder implements Builder<NewsDetailed, NewsDetailedBuilder>, NewsBaseBuilder {
  _$NewsDetailed _$v;

  String _description;

  String get description => _$this._description;

  set description(String description) => _$this._description = description;

  String _descriptionRaw;

  String get descriptionRaw => _$this._descriptionRaw;

  set descriptionRaw(String descriptionRaw) => _$this._descriptionRaw = descriptionRaw;

  ListBuilder<String> _audience;

  ListBuilder<String> get audience => _$this._audience ??= new ListBuilder<String>();

  set audience(ListBuilder<String> audience) => _$this._audience = audience;

  UWImageBuilder _image;

  UWImageBuilder get image => _$this._image ??= new UWImageBuilder();

  set image(UWImageBuilder image) => _$this._image = image;

  String _siteId;

  String get siteId => _$this._siteId;

  set siteId(String siteId) => _$this._siteId = siteId;

  String _siteName;

  String get siteName => _$this._siteName;

  set siteName(String siteName) => _$this._siteName = siteName;

  int _revisionId;

  int get revisionId => _$this._revisionId;

  set revisionId(int revisionId) => _$this._revisionId = revisionId;

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

  NewsDetailedBuilder();

  NewsDetailedBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _descriptionRaw = _$v.descriptionRaw;
      _audience = _$v.audience?.toBuilder();
      _image = _$v.image?.toBuilder();
      _siteId = _$v.siteId;
      _siteName = _$v.siteName;
      _revisionId = _$v.revisionId;
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
  void replace(covariant NewsDetailed other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$NewsDetailed;
  }

  @override
  void update(void updates(NewsDetailedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$NewsDetailed build() {
    _$NewsDetailed _$result;
    try {
      _$result = _$v ??
          new _$NewsDetailed._(
              description: description,
              descriptionRaw: descriptionRaw,
              audience: _audience?.build(),
              image: _image?.build(),
              siteId: siteId,
              siteName: siteName,
              revisionId: revisionId,
              id: id,
              title: title,
              link: link,
              published: published,
              updated: updated);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'audience';
        _audience?.build();
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('NewsDetailed', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
