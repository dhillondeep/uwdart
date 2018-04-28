// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feds_events_detailed.dart';

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

Serializer<FedsEventDetailed> _$fedsEventDetailedSerializer = new _$FedsEventDetailedSerializer();

class _$FedsEventDetailedSerializer implements StructuredSerializer<FedsEventDetailed> {
  @override
  final Iterable<Type> types = const [FedsEventDetailed, _$FedsEventDetailed];
  @override
  final String wireName = 'FedsEventDetailed';

  @override
  Iterable serialize(Serializers serializers, FedsEventDetailed object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'description',
      serializers.serialize(object.description, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'start',
      serializers.serialize(object.start, specifiedType: const FullType(String)),
      'end',
      serializers.serialize(object.end, specifiedType: const FullType(String)),
      'categories',
      serializers.serialize(object.categories,
          specifiedType: const FullType(BuiltList, const [const FullType(String)])),
      'updated',
      serializers.serialize(object.updated, specifiedType: const FullType(String)),
    ];
    if (object.descriptionRaw != null) {
      result
        ..add('descriptionRaw')
        ..add(serializers.serialize(object.descriptionRaw, specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title, specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location, specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FedsEventDetailed deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FedsEventDetailedBuilder();

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
        case 'descriptionRaw':
          result.descriptionRaw =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'start':
          result.start =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'end':
          result.end =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'categories':
          result.categories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'url':
          result.url =
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

class _$FedsEventDetailed extends FedsEventDetailed {
  @override
  final String description;
  @override
  final String descriptionRaw;
  @override
  final int id;
  @override
  final String title;
  @override
  final String location;
  @override
  final String start;
  @override
  final String end;
  @override
  final BuiltList<String> categories;
  @override
  final String url;
  @override
  final String updated;

  factory _$FedsEventDetailed([void updates(FedsEventDetailedBuilder b)]) =>
      (new FedsEventDetailedBuilder()..update(updates)).build();

  _$FedsEventDetailed._(
      {this.description,
      this.descriptionRaw,
      this.id,
      this.title,
      this.location,
      this.start,
      this.end,
      this.categories,
      this.url,
      this.updated})
      : super._() {
    if (description == null) throw new BuiltValueNullFieldError('FedsEventDetailed', 'description');
    if (id == null) throw new BuiltValueNullFieldError('FedsEventDetailed', 'id');
    if (start == null) throw new BuiltValueNullFieldError('FedsEventDetailed', 'start');
    if (end == null) throw new BuiltValueNullFieldError('FedsEventDetailed', 'end');
    if (categories == null) throw new BuiltValueNullFieldError('FedsEventDetailed', 'categories');
    if (updated == null) throw new BuiltValueNullFieldError('FedsEventDetailed', 'updated');
  }

  @override
  FedsEventDetailed rebuild(void updates(FedsEventDetailedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FedsEventDetailedBuilder toBuilder() => new FedsEventDetailedBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FedsEventDetailed) return false;
    return description == other.description &&
        descriptionRaw == other.descriptionRaw &&
        id == other.id &&
        title == other.title &&
        location == other.location &&
        start == other.start &&
        end == other.end &&
        categories == other.categories &&
        url == other.url &&
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
                                $jc($jc($jc(0, description.hashCode), descriptionRaw.hashCode),
                                    id.hashCode),
                                title.hashCode),
                            location.hashCode),
                        start.hashCode),
                    end.hashCode),
                categories.hashCode),
            url.hashCode),
        updated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FedsEventDetailed')
          ..add('description', description)
          ..add('descriptionRaw', descriptionRaw)
          ..add('id', id)
          ..add('title', title)
          ..add('location', location)
          ..add('start', start)
          ..add('end', end)
          ..add('categories', categories)
          ..add('url', url)
          ..add('updated', updated))
        .toString();
  }
}

class FedsEventDetailedBuilder
    implements Builder<FedsEventDetailed, FedsEventDetailedBuilder>, FedsEventBaseBuilder {
  _$FedsEventDetailed _$v;

  String _description;

  String get description => _$this._description;

  set description(String description) => _$this._description = description;

  String _descriptionRaw;

  String get descriptionRaw => _$this._descriptionRaw;

  set descriptionRaw(String descriptionRaw) => _$this._descriptionRaw = descriptionRaw;

  int _id;

  int get id => _$this._id;

  set id(int id) => _$this._id = id;

  String _title;

  String get title => _$this._title;

  set title(String title) => _$this._title = title;

  String _location;

  String get location => _$this._location;

  set location(String location) => _$this._location = location;

  String _start;

  String get start => _$this._start;

  set start(String start) => _$this._start = start;

  String _end;

  String get end => _$this._end;

  set end(String end) => _$this._end = end;

  ListBuilder<String> _categories;

  ListBuilder<String> get categories => _$this._categories ??= new ListBuilder<String>();

  set categories(ListBuilder<String> categories) => _$this._categories = categories;

  String _url;

  String get url => _$this._url;

  set url(String url) => _$this._url = url;

  String _updated;

  String get updated => _$this._updated;

  set updated(String updated) => _$this._updated = updated;

  FedsEventDetailedBuilder();

  FedsEventDetailedBuilder get _$this {
    if (_$v != null) {
      _description = _$v.description;
      _descriptionRaw = _$v.descriptionRaw;
      _id = _$v.id;
      _title = _$v.title;
      _location = _$v.location;
      _start = _$v.start;
      _end = _$v.end;
      _categories = _$v.categories?.toBuilder();
      _url = _$v.url;
      _updated = _$v.updated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant FedsEventDetailed other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FedsEventDetailed;
  }

  @override
  void update(void updates(FedsEventDetailedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FedsEventDetailed build() {
    _$FedsEventDetailed _$result;
    try {
      _$result = _$v ??
          new _$FedsEventDetailed._(
              description: description,
              descriptionRaw: descriptionRaw,
              id: id,
              title: title,
              location: location,
              start: start,
              end: end,
              categories: categories.build(),
              url: url,
              updated: updated);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'categories';
        categories.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('FedsEventDetailed', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
