// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_prerequisite.dart';

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

Serializer<CoursePrerequisite> _$coursePrerequisiteSerializer =
    new _$CoursePrerequisiteSerializer();

class _$CoursePrerequisiteSerializer implements StructuredSerializer<CoursePrerequisite> {
  @override
  final Iterable<Type> types = const [CoursePrerequisite, _$CoursePrerequisite];
  @override
  final String wireName = 'CoursePrerequisite';

  @override
  Iterable serialize(Serializers serializers, CoursePrerequisite object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.subject != null) {
      result
        ..add('subject')
        ..add(serializers.serialize(object.subject, specifiedType: const FullType(String)));
    }
    if (object.catalogNumber != null) {
      result
        ..add('catalog_number')
        ..add(serializers.serialize(object.catalogNumber, specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title, specifiedType: const FullType(String)));
    }
    if (object.prerequisites != null) {
      result
        ..add('prerequisites')
        ..add(serializers.serialize(object.prerequisites, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  CoursePrerequisite deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CoursePrerequisiteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'subject':
          result.subject =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'catalog_number':
          result.catalogNumber =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'prerequisites':
          result.prerequisites =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CoursePrerequisite extends CoursePrerequisite {
  @override
  final String subject;
  @override
  final String catalogNumber;
  @override
  final String title;
  @override
  final String prerequisites;
  @override
  final BuiltList<Object> prerequisitesParsed;

  factory _$CoursePrerequisite([void updates(CoursePrerequisiteBuilder b)]) =>
      (new CoursePrerequisiteBuilder()..update(updates)).build();

  _$CoursePrerequisite._(
      {this.subject, this.catalogNumber, this.title, this.prerequisites, this.prerequisitesParsed})
      : super._();

  @override
  CoursePrerequisite rebuild(void updates(CoursePrerequisiteBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CoursePrerequisiteBuilder toBuilder() => new CoursePrerequisiteBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CoursePrerequisite) return false;
    return subject == other.subject &&
        catalogNumber == other.catalogNumber &&
        title == other.title &&
        prerequisites == other.prerequisites &&
        prerequisitesParsed == other.prerequisitesParsed;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, subject.hashCode), catalogNumber.hashCode), title.hashCode),
            prerequisites.hashCode),
        prerequisitesParsed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CoursePrerequisite')
          ..add('subject', subject)
          ..add('catalogNumber', catalogNumber)
          ..add('title', title)
          ..add('prerequisites', prerequisites)
          ..add('prerequisitesParsed', prerequisitesParsed))
        .toString();
  }
}

class CoursePrerequisiteBuilder implements Builder<CoursePrerequisite, CoursePrerequisiteBuilder> {
  _$CoursePrerequisite _$v;

  String _subject;

  String get subject => _$this._subject;

  set subject(String subject) => _$this._subject = subject;

  String _catalogNumber;

  String get catalogNumber => _$this._catalogNumber;

  set catalogNumber(String catalogNumber) => _$this._catalogNumber = catalogNumber;

  String _title;

  String get title => _$this._title;

  set title(String title) => _$this._title = title;

  String _prerequisites;

  String get prerequisites => _$this._prerequisites;

  set prerequisites(String prerequisites) => _$this._prerequisites = prerequisites;

  ListBuilder<Object> _prerequisitesParsed;

  ListBuilder<Object> get prerequisitesParsed =>
      _$this._prerequisitesParsed ??= new ListBuilder<Object>();

  set prerequisitesParsed(ListBuilder<Object> prerequisitesParsed) =>
      _$this._prerequisitesParsed = prerequisitesParsed;

  CoursePrerequisiteBuilder();

  CoursePrerequisiteBuilder get _$this {
    if (_$v != null) {
      _subject = _$v.subject;
      _catalogNumber = _$v.catalogNumber;
      _title = _$v.title;
      _prerequisites = _$v.prerequisites;
      _prerequisitesParsed = _$v.prerequisitesParsed?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoursePrerequisite other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CoursePrerequisite;
  }

  @override
  void update(void updates(CoursePrerequisiteBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CoursePrerequisite build() {
    _$CoursePrerequisite _$result;
    try {
      _$result = _$v ??
          new _$CoursePrerequisite._(
              subject: subject,
              catalogNumber: catalogNumber,
              title: title,
              prerequisites: prerequisites,
              prerequisitesParsed: _prerequisitesParsed?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'prerequisitesParsed';
        _prerequisitesParsed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('CoursePrerequisite', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
