// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_exam_schedule.dart';

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

Serializer<CourseExamSchedule> _$courseExamScheduleSerializer =
    new _$CourseExamScheduleSerializer();
Serializer<CourseExamSection> _$courseExamSectionSerializer = new _$CourseExamSectionSerializer();

class _$CourseExamScheduleSerializer implements StructuredSerializer<CourseExamSchedule> {
  @override
  final Iterable<Type> types = const [CourseExamSchedule, _$CourseExamSchedule];
  @override
  final String wireName = 'CourseExamSchedule';

  @override
  Iterable serialize(Serializers serializers, CourseExamSchedule object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.course != null) {
      result
        ..add('course')
        ..add(serializers.serialize(object.course, specifiedType: const FullType(String)));
    }
    if (object.sections != null) {
      result
        ..add('sections')
        ..add(serializers.serialize(object.sections,
            specifiedType: const FullType(BuiltList, const [const FullType(CourseExamSection)])));
    }

    return result;
  }

  @override
  CourseExamSchedule deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CourseExamScheduleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'course':
          result.course =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'sections':
          result.sections.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(CourseExamSection)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$CourseExamSectionSerializer implements StructuredSerializer<CourseExamSection> {
  @override
  final Iterable<Type> types = const [CourseExamSection, _$CourseExamSection];
  @override
  final String wireName = 'CourseExamSection';

  @override
  Iterable serialize(Serializers serializers, CourseExamSection object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.section != null) {
      result
        ..add('section')
        ..add(serializers.serialize(object.section, specifiedType: const FullType(String)));
    }
    if (object.day != null) {
      result
        ..add('day')
        ..add(serializers.serialize(object.day, specifiedType: const FullType(String)));
    }
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date, specifiedType: const FullType(String)));
    }
    if (object.startTime != null) {
      result
        ..add('start_time')
        ..add(serializers.serialize(object.startTime, specifiedType: const FullType(String)));
    }
    if (object.endTime != null) {
      result
        ..add('end_time')
        ..add(serializers.serialize(object.endTime, specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location, specifiedType: const FullType(String)));
    }
    if (object.notes != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(object.notes, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  CourseExamSection deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CourseExamSectionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'section':
          result.section =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'day':
          result.day =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'start_time':
          result.startTime =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'end_time':
          result.endTime =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'notes':
          result.notes =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CourseExamSchedule extends CourseExamSchedule {
  @override
  final String course;
  @override
  final BuiltList<CourseExamSection> sections;

  factory _$CourseExamSchedule([void updates(CourseExamScheduleBuilder b)]) =>
      (new CourseExamScheduleBuilder()..update(updates)).build();

  _$CourseExamSchedule._({this.course, this.sections}) : super._();

  @override
  CourseExamSchedule rebuild(void updates(CourseExamScheduleBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseExamScheduleBuilder toBuilder() => new CourseExamScheduleBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CourseExamSchedule) return false;
    return course == other.course && sections == other.sections;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, course.hashCode), sections.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourseExamSchedule')
          ..add('course', course)
          ..add('sections', sections))
        .toString();
  }
}

class CourseExamScheduleBuilder implements Builder<CourseExamSchedule, CourseExamScheduleBuilder> {
  _$CourseExamSchedule _$v;

  String _course;

  String get course => _$this._course;

  set course(String course) => _$this._course = course;

  ListBuilder<CourseExamSection> _sections;

  ListBuilder<CourseExamSection> get sections =>
      _$this._sections ??= new ListBuilder<CourseExamSection>();

  set sections(ListBuilder<CourseExamSection> sections) => _$this._sections = sections;

  CourseExamScheduleBuilder();

  CourseExamScheduleBuilder get _$this {
    if (_$v != null) {
      _course = _$v.course;
      _sections = _$v.sections?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseExamSchedule other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CourseExamSchedule;
  }

  @override
  void update(void updates(CourseExamScheduleBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CourseExamSchedule build() {
    _$CourseExamSchedule _$result;
    try {
      _$result = _$v ?? new _$CourseExamSchedule._(course: course, sections: _sections?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sections';
        _sections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('CourseExamSchedule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CourseExamSection extends CourseExamSection {
  @override
  final String section;
  @override
  final String day;
  @override
  final String date;
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final String location;
  @override
  final String notes;

  factory _$CourseExamSection([void updates(CourseExamSectionBuilder b)]) =>
      (new CourseExamSectionBuilder()..update(updates)).build();

  _$CourseExamSection._(
      {this.section, this.day, this.date, this.startTime, this.endTime, this.location, this.notes})
      : super._();

  @override
  CourseExamSection rebuild(void updates(CourseExamSectionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseExamSectionBuilder toBuilder() => new CourseExamSectionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CourseExamSection) return false;
    return section == other.section &&
        day == other.day &&
        date == other.date &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        location == other.location &&
        notes == other.notes;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, section.hashCode), day.hashCode), date.hashCode),
                    startTime.hashCode),
                endTime.hashCode),
            location.hashCode),
        notes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourseExamSection')
          ..add('section', section)
          ..add('day', day)
          ..add('date', date)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('location', location)
          ..add('notes', notes))
        .toString();
  }
}

class CourseExamSectionBuilder implements Builder<CourseExamSection, CourseExamSectionBuilder> {
  _$CourseExamSection _$v;

  String _section;

  String get section => _$this._section;

  set section(String section) => _$this._section = section;

  String _day;

  String get day => _$this._day;

  set day(String day) => _$this._day = day;

  String _date;

  String get date => _$this._date;

  set date(String date) => _$this._date = date;

  String _startTime;

  String get startTime => _$this._startTime;

  set startTime(String startTime) => _$this._startTime = startTime;

  String _endTime;

  String get endTime => _$this._endTime;

  set endTime(String endTime) => _$this._endTime = endTime;

  String _location;

  String get location => _$this._location;

  set location(String location) => _$this._location = location;

  String _notes;

  String get notes => _$this._notes;

  set notes(String notes) => _$this._notes = notes;

  CourseExamSectionBuilder();

  CourseExamSectionBuilder get _$this {
    if (_$v != null) {
      _section = _$v.section;
      _day = _$v.day;
      _date = _$v.date;
      _startTime = _$v.startTime;
      _endTime = _$v.endTime;
      _location = _$v.location;
      _notes = _$v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseExamSection other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CourseExamSection;
  }

  @override
  void update(void updates(CourseExamSectionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CourseExamSection build() {
    final _$result = _$v ??
        new _$CourseExamSection._(
            section: section,
            day: day,
            date: date,
            startTime: startTime,
            endTime: endTime,
            location: location,
            notes: notes);
    replace(_$result);
    return _$result;
  }
}
