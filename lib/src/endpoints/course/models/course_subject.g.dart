// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_subject.dart';

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

Serializer<CourseSubject> _$courseSubjectSerializer = new _$CourseSubjectSerializer();

class _$CourseSubjectSerializer implements StructuredSerializer<CourseSubject> {
  @override
  final Iterable<Type> types = const [CourseSubject, _$CourseSubject];
  @override
  final String wireName = 'CourseSubject';

  @override
  Iterable serialize(Serializers serializers, CourseSubject object,
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
    if (object.units != null) {
      result
        ..add('units')
        ..add(serializers.serialize(object.units, specifiedType: const FullType(num)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description, specifiedType: const FullType(String)));
    }
    if (object.academicLevel != null) {
      result
        ..add('academic_level')
        ..add(serializers.serialize(object.academicLevel, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  CourseSubject deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CourseSubjectBuilder();

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
        case 'units':
          result.units = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'description':
          result.description =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'academic_level':
          result.academicLevel =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CourseSubject extends CourseSubject {
  @override
  final String courseId;
  @override
  final String subject;
  @override
  final String catalogNumber;
  @override
  final String title;
  @override
  final num units;
  @override
  final String description;
  @override
  final String academicLevel;

  factory _$CourseSubject([void updates(CourseSubjectBuilder b)]) =>
      (new CourseSubjectBuilder()..update(updates)).build();

  _$CourseSubject._(
      {this.courseId,
      this.subject,
      this.catalogNumber,
      this.title,
      this.units,
      this.description,
      this.academicLevel})
      : super._();

  @override
  CourseSubject rebuild(void updates(CourseSubjectBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseSubjectBuilder toBuilder() => new CourseSubjectBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CourseSubject) return false;
    return courseId == other.courseId &&
        subject == other.subject &&
        catalogNumber == other.catalogNumber &&
        title == other.title &&
        units == other.units &&
        description == other.description &&
        academicLevel == other.academicLevel;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, courseId.hashCode), subject.hashCode), catalogNumber.hashCode),
                    title.hashCode),
                units.hashCode),
            description.hashCode),
        academicLevel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourseSubject')
          ..add('courseId', courseId)
          ..add('subject', subject)
          ..add('catalogNumber', catalogNumber)
          ..add('title', title)
          ..add('units', units)
          ..add('description', description)
          ..add('academicLevel', academicLevel))
        .toString();
  }
}

class CourseSubjectBuilder implements Builder<CourseSubject, CourseSubjectBuilder> {
  _$CourseSubject _$v;

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

  num _units;

  num get units => _$this._units;

  set units(num units) => _$this._units = units;

  String _description;

  String get description => _$this._description;

  set description(String description) => _$this._description = description;

  String _academicLevel;

  String get academicLevel => _$this._academicLevel;

  set academicLevel(String academicLevel) => _$this._academicLevel = academicLevel;

  CourseSubjectBuilder();

  CourseSubjectBuilder get _$this {
    if (_$v != null) {
      _courseId = _$v.courseId;
      _subject = _$v.subject;
      _catalogNumber = _$v.catalogNumber;
      _title = _$v.title;
      _units = _$v.units;
      _description = _$v.description;
      _academicLevel = _$v.academicLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseSubject other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CourseSubject;
  }

  @override
  void update(void updates(CourseSubjectBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CourseSubject build() {
    final _$result = _$v ??
        new _$CourseSubject._(
            courseId: courseId,
            subject: subject,
            catalogNumber: catalogNumber,
            title: title,
            units: units,
            description: description,
            academicLevel: academicLevel);
    replace(_$result);
    return _$result;
  }
}
