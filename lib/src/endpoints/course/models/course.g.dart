// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

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

Serializer<Course> _$courseSerializer = new _$CourseSerializer();

class _$CourseSerializer implements StructuredSerializer<Course> {
  @override
  final Iterable<Type> types = const [Course, _$Course];
  @override
  final String wireName = 'Course';

  @override
  Iterable serialize(Serializers serializers, Course object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.courseId != null) {
      result
        ..add('course_id')
        ..add(serializers.serialize(object.courseId, specifiedType: const FullType(String)));
    }
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

    return result;
  }

  @override
  Course deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CourseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'course_id':
          result.courseId =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
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
      }
    }

    return result.build();
  }
}

class _$Course extends Course {
  @override
  final String courseId;
  @override
  final String subject;
  @override
  final String catalogNumber;
  @override
  final String title;

  factory _$Course([void updates(CourseBuilder b)]) =>
      (new CourseBuilder()..update(updates)).build();

  _$Course._({this.courseId, this.subject, this.catalogNumber, this.title}) : super._();

  @override
  Course rebuild(void updates(CourseBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  CourseBuilder toBuilder() => new CourseBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Course) return false;
    return courseId == other.courseId &&
        subject == other.subject &&
        catalogNumber == other.catalogNumber &&
        title == other.title;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, courseId.hashCode), subject.hashCode), catalogNumber.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Course')
          ..add('courseId', courseId)
          ..add('subject', subject)
          ..add('catalogNumber', catalogNumber)
          ..add('title', title))
        .toString();
  }
}

class CourseBuilder implements Builder<Course, CourseBuilder>, CourseBaseBuilder {
  _$Course _$v;

  String _courseId;

  String get courseId => _$this._courseId;

  set courseId(String courseId) => _$this._courseId = courseId;

  String _subject;

  String get subject => _$this._subject;

  set subject(String subject) => _$this._subject = subject;

  String _catalogNumber;

  String get catalogNumber => _$this._catalogNumber;

  set catalogNumber(String catalogNumber) => _$this._catalogNumber = catalogNumber;

  String _title;

  String get title => _$this._title;

  set title(String title) => _$this._title = title;

  CourseBuilder();

  CourseBuilder get _$this {
    if (_$v != null) {
      _courseId = _$v.courseId;
      _subject = _$v.subject;
      _catalogNumber = _$v.catalogNumber;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant Course other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Course;
  }

  @override
  void update(void updates(CourseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Course build() {
    final _$result = _$v ??
        new _$Course._(
            courseId: courseId, subject: subject, catalogNumber: catalogNumber, title: title);
    replace(_$result);
    return _$result;
  }
}
