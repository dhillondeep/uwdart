// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_schedule.dart';

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

Serializer<CourseSchedule> _$courseScheduleSerializer = new _$CourseScheduleSerializer();
Serializer<CourseReserves> _$courseReservesSerializer = new _$CourseReservesSerializer();
Serializer<ClassData> _$classDataSerializer = new _$ClassDataSerializer();
Serializer<CourseLocation> _$courseLocationSerializer = new _$CourseLocationSerializer();
Serializer<CourseDates> _$courseDatesSerializer = new _$CourseDatesSerializer();

class _$CourseScheduleSerializer implements StructuredSerializer<CourseSchedule> {
  @override
  final Iterable<Type> types = const [CourseSchedule, _$CourseSchedule];
  @override
  final String wireName = 'CourseSchedule';

  @override
  Iterable serialize(Serializers serializers, CourseSchedule object,
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
    if (object.units != null) {
      result
        ..add('units')
        ..add(serializers.serialize(object.units, specifiedType: const FullType(num)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title, specifiedType: const FullType(String)));
    }
    if (object.note != null) {
      result
        ..add('note')
        ..add(serializers.serialize(object.note, specifiedType: const FullType(String)));
    }
    if (object.classNumber != null) {
      result
        ..add('class_number')
        ..add(serializers.serialize(object.classNumber, specifiedType: const FullType(int)));
    }
    if (object.section != null) {
      result
        ..add('section')
        ..add(serializers.serialize(object.section, specifiedType: const FullType(String)));
    }
    if (object.campus != null) {
      result
        ..add('campus')
        ..add(serializers.serialize(object.campus, specifiedType: const FullType(String)));
    }
    if (object.associatedClass != null) {
      result
        ..add('associated_class')
        ..add(serializers.serialize(object.associatedClass, specifiedType: const FullType(int)));
    }
    if (object.relatedComponent1 != null) {
      result
        ..add('releated_component_1')
        ..add(
            serializers.serialize(object.relatedComponent1, specifiedType: const FullType(String)));
    }
    if (object.relatedComponent2 != null) {
      result
        ..add('releated_component_2')
        ..add(
            serializers.serialize(object.relatedComponent2, specifiedType: const FullType(String)));
    }
    if (object.enrollmentCapacity != null) {
      result
        ..add('enrollment_capacity')
        ..add(serializers.serialize(object.enrollmentCapacity, specifiedType: const FullType(int)));
    }
    if (object.enrollmentTotal != null) {
      result
        ..add('enrollment_total')
        ..add(serializers.serialize(object.enrollmentTotal, specifiedType: const FullType(int)));
    }
    if (object.waitingCapacity != null) {
      result
        ..add('waiting_capacity')
        ..add(serializers.serialize(object.waitingCapacity, specifiedType: const FullType(int)));
    }
    if (object.waitingTotal != null) {
      result
        ..add('waiting_total')
        ..add(serializers.serialize(object.waitingTotal, specifiedType: const FullType(num)));
    }
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total, specifiedType: const FullType(String)));
    }
    if (object.reserves != null) {
      result
        ..add('reserves')
        ..add(serializers.serialize(object.reserves,
            specifiedType: const FullType(BuiltList, const [const FullType(CourseReserves)])));
    }
    if (object.classes != null) {
      result
        ..add('classes')
        ..add(serializers.serialize(object.classes,
            specifiedType: const FullType(BuiltList, const [const FullType(ClassData)])));
    }
    if (object.heldWith != null) {
      result
        ..add('held_with')
        ..add(serializers.serialize(object.heldWith,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.term != null) {
      result
        ..add('term')
        ..add(serializers.serialize(object.term, specifiedType: const FullType(int)));
    }
    if (object.academicLevel != null) {
      result
        ..add('academic_level')
        ..add(serializers.serialize(object.academicLevel, specifiedType: const FullType(String)));
    }
    if (object.lastUpdated != null) {
      result
        ..add('last_updated')
        ..add(serializers.serialize(object.lastUpdated, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  CourseSchedule deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CourseScheduleBuilder();

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
        case 'units':
          result.units = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'title':
          result.title =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'note':
          result.note =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'class_number':
          result.classNumber =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'section':
          result.section =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'campus':
          result.campus =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'associated_class':
          result.associatedClass =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'releated_component_1':
          result.relatedComponent1 =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'releated_component_2':
          result.relatedComponent2 =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'enrollment_capacity':
          result.enrollmentCapacity =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'enrollment_total':
          result.enrollmentTotal =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'waiting_capacity':
          result.waitingCapacity =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'waiting_total':
          result.waitingTotal =
              serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'total':
          result.total =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'reserves':
          result.reserves.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(CourseReserves)]))
              as BuiltList);
          break;
        case 'classes':
          result.classes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(ClassData)]))
              as BuiltList);
          break;
        case 'held_with':
          result.heldWith.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'term':
          result.term = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'academic_level':
          result.academicLevel =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'last_updated':
          result.lastUpdated =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CourseReservesSerializer implements StructuredSerializer<CourseReserves> {
  @override
  final Iterable<Type> types = const [CourseReserves, _$CourseReserves];
  @override
  final String wireName = 'CourseReserves';

  @override
  Iterable serialize(Serializers serializers, CourseReserves object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.reserveGroup != null) {
      result
        ..add('reserve_group')
        ..add(serializers.serialize(object.reserveGroup, specifiedType: const FullType(String)));
    }
    if (object.enrollmentCapacity != null) {
      result
        ..add('enrollment_capacity')
        ..add(serializers.serialize(object.enrollmentCapacity, specifiedType: const FullType(int)));
    }
    if (object.enrollmentTotal != null) {
      result
        ..add('enrollment_total')
        ..add(serializers.serialize(object.enrollmentTotal, specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  CourseReserves deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CourseReservesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'reserve_group':
          result.reserveGroup =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'enrollment_capacity':
          result.enrollmentCapacity =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'enrollment_total':
          result.enrollmentTotal =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ClassDataSerializer implements StructuredSerializer<ClassData> {
  @override
  final Iterable<Type> types = const [ClassData, _$ClassData];
  @override
  final String wireName = 'ClassData';

  @override
  Iterable serialize(Serializers serializers, ClassData object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date, specifiedType: const FullType(CourseDates)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(
            serializers.serialize(object.location, specifiedType: const FullType(CourseLocation)));
    }
    if (object.instructors != null) {
      result
        ..add('instructors')
        ..add(serializers.serialize(object.instructors,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  ClassData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ClassDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date.replace(serializers.deserialize(value,
              specifiedType: const FullType(CourseDates)) as CourseDates);
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(CourseLocation)) as CourseLocation);
          break;
        case 'instructors':
          result.instructors.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$CourseLocationSerializer implements StructuredSerializer<CourseLocation> {
  @override
  final Iterable<Type> types = const [CourseLocation, _$CourseLocation];
  @override
  final String wireName = 'CourseLocation';

  @override
  Iterable serialize(Serializers serializers, CourseLocation object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.building != null) {
      result
        ..add('building')
        ..add(serializers.serialize(object.building, specifiedType: const FullType(String)));
    }
    if (object.room != null) {
      result
        ..add('room')
        ..add(serializers.serialize(object.room, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  CourseLocation deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CourseLocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'building':
          result.building =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'room':
          result.room =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CourseDatesSerializer implements StructuredSerializer<CourseDates> {
  @override
  final Iterable<Type> types = const [CourseDates, _$CourseDates];
  @override
  final String wireName = 'CourseDates';

  @override
  Iterable serialize(Serializers serializers, CourseDates object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.weekdays != null) {
      result
        ..add('weekdays')
        ..add(serializers.serialize(object.weekdays, specifiedType: const FullType(String)));
    }
    if (object.startDate != null) {
      result
        ..add('start_date')
        ..add(serializers.serialize(object.startDate, specifiedType: const FullType(String)));
    }
    if (object.endDate != null) {
      result
        ..add('end_date')
        ..add(serializers.serialize(object.endDate, specifiedType: const FullType(String)));
    }
    if (object.isTba != null) {
      result
        ..add('is_tba')
        ..add(serializers.serialize(object.isTba, specifiedType: const FullType(bool)));
    }
    if (object.isCancelled != null) {
      result
        ..add('is_cancelled')
        ..add(serializers.serialize(object.isCancelled, specifiedType: const FullType(bool)));
    }
    if (object.isClosed != null) {
      result
        ..add('is_closed')
        ..add(serializers.serialize(object.isClosed, specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  CourseDates deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CourseDatesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'start_time':
          result.startTime =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'end_time':
          result.endTime =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'weekdays':
          result.weekdays =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'start_date':
          result.startDate =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'end_date':
          result.endDate =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'is_tba':
          result.isTba =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_cancelled':
          result.isCancelled =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_closed':
          result.isClosed =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$CourseSchedule extends CourseSchedule {
  @override
  final String subject;
  @override
  final String catalogNumber;
  @override
  final num units;
  @override
  final String title;
  @override
  final String note;
  @override
  final int classNumber;
  @override
  final String section;
  @override
  final String campus;
  @override
  final int associatedClass;
  @override
  final String relatedComponent1;
  @override
  final String relatedComponent2;
  @override
  final int enrollmentCapacity;
  @override
  final int enrollmentTotal;
  @override
  final int waitingCapacity;
  @override
  final num waitingTotal;
  @override
  final String total;
  @override
  final BuiltList<CourseReserves> reserves;
  @override
  final BuiltList<ClassData> classes;
  @override
  final BuiltList<String> heldWith;
  @override
  final int term;
  @override
  final String academicLevel;
  @override
  final String lastUpdated;

  factory _$CourseSchedule([void updates(CourseScheduleBuilder b)]) =>
      (new CourseScheduleBuilder()..update(updates)).build();

  _$CourseSchedule._(
      {this.subject,
      this.catalogNumber,
      this.units,
      this.title,
      this.note,
      this.classNumber,
      this.section,
      this.campus,
      this.associatedClass,
      this.relatedComponent1,
      this.relatedComponent2,
      this.enrollmentCapacity,
      this.enrollmentTotal,
      this.waitingCapacity,
      this.waitingTotal,
      this.total,
      this.reserves,
      this.classes,
      this.heldWith,
      this.term,
      this.academicLevel,
      this.lastUpdated})
      : super._();

  @override
  CourseSchedule rebuild(void updates(CourseScheduleBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseScheduleBuilder toBuilder() => new CourseScheduleBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CourseSchedule) return false;
    return subject == other.subject &&
        catalogNumber == other.catalogNumber &&
        units == other.units &&
        title == other.title &&
        note == other.note &&
        classNumber == other.classNumber &&
        section == other.section &&
        campus == other.campus &&
        associatedClass == other.associatedClass &&
        relatedComponent1 == other.relatedComponent1 &&
        relatedComponent2 == other.relatedComponent2 &&
        enrollmentCapacity == other.enrollmentCapacity &&
        enrollmentTotal == other.enrollmentTotal &&
        waitingCapacity == other.waitingCapacity &&
        waitingTotal == other.waitingTotal &&
        total == other.total &&
        reserves == other.reserves &&
        classes == other.classes &&
        heldWith == other.heldWith &&
        term == other.term &&
        academicLevel == other.academicLevel &&
        lastUpdated == other.lastUpdated;
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                $jc(
                                                                                    $jc(
                                                                                        $jc(
                                                                                            0,
                                                                                            subject
                                                                                                .hashCode),
                                                                                        catalogNumber
                                                                                            .hashCode),
                                                                                    units.hashCode),
                                                                                title.hashCode),
                                                                            note.hashCode),
                                                                        classNumber.hashCode),
                                                                    section.hashCode),
                                                                campus.hashCode),
                                                            associatedClass.hashCode),
                                                        relatedComponent1.hashCode),
                                                    relatedComponent2.hashCode),
                                                enrollmentCapacity.hashCode),
                                            enrollmentTotal.hashCode),
                                        waitingCapacity.hashCode),
                                    waitingTotal.hashCode),
                                total.hashCode),
                            reserves.hashCode),
                        classes.hashCode),
                    heldWith.hashCode),
                term.hashCode),
            academicLevel.hashCode),
        lastUpdated.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourseSchedule')
          ..add('subject', subject)
          ..add('catalogNumber', catalogNumber)
          ..add('units', units)
          ..add('title', title)
          ..add('note', note)
          ..add('classNumber', classNumber)
          ..add('section', section)
          ..add('campus', campus)
          ..add('associatedClass', associatedClass)
          ..add('relatedComponent1', relatedComponent1)
          ..add('relatedComponent2', relatedComponent2)
          ..add('enrollmentCapacity', enrollmentCapacity)
          ..add('enrollmentTotal', enrollmentTotal)
          ..add('waitingCapacity', waitingCapacity)
          ..add('waitingTotal', waitingTotal)
          ..add('total', total)
          ..add('reserves', reserves)
          ..add('classes', classes)
          ..add('heldWith', heldWith)
          ..add('term', term)
          ..add('academicLevel', academicLevel)
          ..add('lastUpdated', lastUpdated))
        .toString();
  }
}

class CourseScheduleBuilder implements Builder<CourseSchedule, CourseScheduleBuilder> {
  _$CourseSchedule _$v;

  String _subject;

  String get subject => _$this._subject;

  set subject(String subject) => _$this._subject = subject;

  String _catalogNumber;

  String get catalogNumber => _$this._catalogNumber;

  set catalogNumber(String catalogNumber) => _$this._catalogNumber = catalogNumber;

  num _units;

  num get units => _$this._units;

  set units(num units) => _$this._units = units;

  String _title;

  String get title => _$this._title;

  set title(String title) => _$this._title = title;

  String _note;

  String get note => _$this._note;

  set note(String note) => _$this._note = note;

  int _classNumber;

  int get classNumber => _$this._classNumber;

  set classNumber(int classNumber) => _$this._classNumber = classNumber;

  String _section;

  String get section => _$this._section;

  set section(String section) => _$this._section = section;

  String _campus;

  String get campus => _$this._campus;

  set campus(String campus) => _$this._campus = campus;

  int _associatedClass;

  int get associatedClass => _$this._associatedClass;

  set associatedClass(int associatedClass) => _$this._associatedClass = associatedClass;

  String _relatedComponent1;

  String get relatedComponent1 => _$this._relatedComponent1;

  set relatedComponent1(String relatedComponent1) => _$this._relatedComponent1 = relatedComponent1;

  String _relatedComponent2;

  String get relatedComponent2 => _$this._relatedComponent2;

  set relatedComponent2(String relatedComponent2) => _$this._relatedComponent2 = relatedComponent2;

  int _enrollmentCapacity;

  int get enrollmentCapacity => _$this._enrollmentCapacity;

  set enrollmentCapacity(int enrollmentCapacity) => _$this._enrollmentCapacity = enrollmentCapacity;

  int _enrollmentTotal;

  int get enrollmentTotal => _$this._enrollmentTotal;

  set enrollmentTotal(int enrollmentTotal) => _$this._enrollmentTotal = enrollmentTotal;

  int _waitingCapacity;

  int get waitingCapacity => _$this._waitingCapacity;

  set waitingCapacity(int waitingCapacity) => _$this._waitingCapacity = waitingCapacity;

  num _waitingTotal;

  num get waitingTotal => _$this._waitingTotal;

  set waitingTotal(num waitingTotal) => _$this._waitingTotal = waitingTotal;

  String _total;

  String get total => _$this._total;

  set total(String total) => _$this._total = total;

  ListBuilder<CourseReserves> _reserves;

  ListBuilder<CourseReserves> get reserves =>
      _$this._reserves ??= new ListBuilder<CourseReserves>();

  set reserves(ListBuilder<CourseReserves> reserves) => _$this._reserves = reserves;

  ListBuilder<ClassData> _classes;

  ListBuilder<ClassData> get classes => _$this._classes ??= new ListBuilder<ClassData>();

  set classes(ListBuilder<ClassData> classes) => _$this._classes = classes;

  ListBuilder<String> _heldWith;

  ListBuilder<String> get heldWith => _$this._heldWith ??= new ListBuilder<String>();

  set heldWith(ListBuilder<String> heldWith) => _$this._heldWith = heldWith;

  int _term;

  int get term => _$this._term;

  set term(int term) => _$this._term = term;

  String _academicLevel;

  String get academicLevel => _$this._academicLevel;

  set academicLevel(String academicLevel) => _$this._academicLevel = academicLevel;

  String _lastUpdated;

  String get lastUpdated => _$this._lastUpdated;

  set lastUpdated(String lastUpdated) => _$this._lastUpdated = lastUpdated;

  CourseScheduleBuilder();

  CourseScheduleBuilder get _$this {
    if (_$v != null) {
      _subject = _$v.subject;
      _catalogNumber = _$v.catalogNumber;
      _units = _$v.units;
      _title = _$v.title;
      _note = _$v.note;
      _classNumber = _$v.classNumber;
      _section = _$v.section;
      _campus = _$v.campus;
      _associatedClass = _$v.associatedClass;
      _relatedComponent1 = _$v.relatedComponent1;
      _relatedComponent2 = _$v.relatedComponent2;
      _enrollmentCapacity = _$v.enrollmentCapacity;
      _enrollmentTotal = _$v.enrollmentTotal;
      _waitingCapacity = _$v.waitingCapacity;
      _waitingTotal = _$v.waitingTotal;
      _total = _$v.total;
      _reserves = _$v.reserves?.toBuilder();
      _classes = _$v.classes?.toBuilder();
      _heldWith = _$v.heldWith?.toBuilder();
      _term = _$v.term;
      _academicLevel = _$v.academicLevel;
      _lastUpdated = _$v.lastUpdated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseSchedule other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CourseSchedule;
  }

  @override
  void update(void updates(CourseScheduleBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CourseSchedule build() {
    _$CourseSchedule _$result;
    try {
      _$result = _$v ??
          new _$CourseSchedule._(
              subject: subject,
              catalogNumber: catalogNumber,
              units: units,
              title: title,
              note: note,
              classNumber: classNumber,
              section: section,
              campus: campus,
              associatedClass: associatedClass,
              relatedComponent1: relatedComponent1,
              relatedComponent2: relatedComponent2,
              enrollmentCapacity: enrollmentCapacity,
              enrollmentTotal: enrollmentTotal,
              waitingCapacity: waitingCapacity,
              waitingTotal: waitingTotal,
              total: total,
              reserves: _reserves?.build(),
              classes: _classes?.build(),
              heldWith: _heldWith?.build(),
              term: term,
              academicLevel: academicLevel,
              lastUpdated: lastUpdated);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reserves';
        _reserves?.build();
        _$failedField = 'classes';
        _classes?.build();
        _$failedField = 'heldWith';
        _heldWith?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('CourseSchedule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CourseReserves extends CourseReserves {
  @override
  final String reserveGroup;
  @override
  final int enrollmentCapacity;
  @override
  final int enrollmentTotal;

  factory _$CourseReserves([void updates(CourseReservesBuilder b)]) =>
      (new CourseReservesBuilder()..update(updates)).build();

  _$CourseReserves._({this.reserveGroup, this.enrollmentCapacity, this.enrollmentTotal})
      : super._();

  @override
  CourseReserves rebuild(void updates(CourseReservesBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseReservesBuilder toBuilder() => new CourseReservesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CourseReserves) return false;
    return reserveGroup == other.reserveGroup &&
        enrollmentCapacity == other.enrollmentCapacity &&
        enrollmentTotal == other.enrollmentTotal;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, reserveGroup.hashCode), enrollmentCapacity.hashCode), enrollmentTotal.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourseReserves')
          ..add('reserveGroup', reserveGroup)
          ..add('enrollmentCapacity', enrollmentCapacity)
          ..add('enrollmentTotal', enrollmentTotal))
        .toString();
  }
}

class CourseReservesBuilder implements Builder<CourseReserves, CourseReservesBuilder> {
  _$CourseReserves _$v;

  String _reserveGroup;

  String get reserveGroup => _$this._reserveGroup;

  set reserveGroup(String reserveGroup) => _$this._reserveGroup = reserveGroup;

  int _enrollmentCapacity;

  int get enrollmentCapacity => _$this._enrollmentCapacity;

  set enrollmentCapacity(int enrollmentCapacity) => _$this._enrollmentCapacity = enrollmentCapacity;

  int _enrollmentTotal;

  int get enrollmentTotal => _$this._enrollmentTotal;

  set enrollmentTotal(int enrollmentTotal) => _$this._enrollmentTotal = enrollmentTotal;

  CourseReservesBuilder();

  CourseReservesBuilder get _$this {
    if (_$v != null) {
      _reserveGroup = _$v.reserveGroup;
      _enrollmentCapacity = _$v.enrollmentCapacity;
      _enrollmentTotal = _$v.enrollmentTotal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseReserves other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CourseReserves;
  }

  @override
  void update(void updates(CourseReservesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CourseReserves build() {
    final _$result = _$v ??
        new _$CourseReserves._(
            reserveGroup: reserveGroup,
            enrollmentCapacity: enrollmentCapacity,
            enrollmentTotal: enrollmentTotal);
    replace(_$result);
    return _$result;
  }
}

class _$ClassData extends ClassData {
  @override
  final CourseDates date;
  @override
  final CourseLocation location;
  @override
  final BuiltList<String> instructors;

  factory _$ClassData([void updates(ClassDataBuilder b)]) =>
      (new ClassDataBuilder()..update(updates)).build();

  _$ClassData._({this.date, this.location, this.instructors}) : super._();

  @override
  ClassData rebuild(void updates(ClassDataBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  ClassDataBuilder toBuilder() => new ClassDataBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ClassData) return false;
    return date == other.date && location == other.location && instructors == other.instructors;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, date.hashCode), location.hashCode), instructors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ClassData')
          ..add('date', date)
          ..add('location', location)
          ..add('instructors', instructors))
        .toString();
  }
}

class ClassDataBuilder implements Builder<ClassData, ClassDataBuilder> {
  _$ClassData _$v;

  CourseDatesBuilder _date;

  CourseDatesBuilder get date => _$this._date ??= new CourseDatesBuilder();

  set date(CourseDatesBuilder date) => _$this._date = date;

  CourseLocationBuilder _location;

  CourseLocationBuilder get location => _$this._location ??= new CourseLocationBuilder();

  set location(CourseLocationBuilder location) => _$this._location = location;

  ListBuilder<String> _instructors;

  ListBuilder<String> get instructors => _$this._instructors ??= new ListBuilder<String>();

  set instructors(ListBuilder<String> instructors) => _$this._instructors = instructors;

  ClassDataBuilder();

  ClassDataBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date?.toBuilder();
      _location = _$v.location?.toBuilder();
      _instructors = _$v.instructors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClassData other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ClassData;
  }

  @override
  void update(void updates(ClassDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ClassData build() {
    _$ClassData _$result;
    try {
      _$result = _$v ??
          new _$ClassData._(
              date: _date?.build(),
              location: _location?.build(),
              instructors: _instructors?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'date';
        _date?.build();
        _$failedField = 'location';
        _location?.build();
        _$failedField = 'instructors';
        _instructors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('ClassData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CourseLocation extends CourseLocation {
  @override
  final String building;
  @override
  final String room;

  factory _$CourseLocation([void updates(CourseLocationBuilder b)]) =>
      (new CourseLocationBuilder()..update(updates)).build();

  _$CourseLocation._({this.building, this.room}) : super._();

  @override
  CourseLocation rebuild(void updates(CourseLocationBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseLocationBuilder toBuilder() => new CourseLocationBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CourseLocation) return false;
    return building == other.building && room == other.room;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, building.hashCode), room.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourseLocation')
          ..add('building', building)
          ..add('room', room))
        .toString();
  }
}

class CourseLocationBuilder implements Builder<CourseLocation, CourseLocationBuilder> {
  _$CourseLocation _$v;

  String _building;

  String get building => _$this._building;

  set building(String building) => _$this._building = building;

  String _room;

  String get room => _$this._room;

  set room(String room) => _$this._room = room;

  CourseLocationBuilder();

  CourseLocationBuilder get _$this {
    if (_$v != null) {
      _building = _$v.building;
      _room = _$v.room;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseLocation other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CourseLocation;
  }

  @override
  void update(void updates(CourseLocationBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CourseLocation build() {
    final _$result = _$v ?? new _$CourseLocation._(building: building, room: room);
    replace(_$result);
    return _$result;
  }
}

class _$CourseDates extends CourseDates {
  @override
  final String startTime;
  @override
  final String endTime;
  @override
  final String weekdays;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final bool isTba;
  @override
  final bool isCancelled;
  @override
  final bool isClosed;

  factory _$CourseDates([void updates(CourseDatesBuilder b)]) =>
      (new CourseDatesBuilder()..update(updates)).build();

  _$CourseDates._(
      {this.startTime,
      this.endTime,
      this.weekdays,
      this.startDate,
      this.endDate,
      this.isTba,
      this.isCancelled,
      this.isClosed})
      : super._();

  @override
  CourseDates rebuild(void updates(CourseDatesBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  CourseDatesBuilder toBuilder() => new CourseDatesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CourseDates) return false;
    return startTime == other.startTime &&
        endTime == other.endTime &&
        weekdays == other.weekdays &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        isTba == other.isTba &&
        isCancelled == other.isCancelled &&
        isClosed == other.isClosed;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc($jc(0, startTime.hashCode), endTime.hashCode), weekdays.hashCode),
                        startDate.hashCode),
                    endDate.hashCode),
                isTba.hashCode),
            isCancelled.hashCode),
        isClosed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourseDates')
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('weekdays', weekdays)
          ..add('startDate', startDate)
          ..add('endDate', endDate)
          ..add('isTba', isTba)
          ..add('isCancelled', isCancelled)
          ..add('isClosed', isClosed))
        .toString();
  }
}

class CourseDatesBuilder implements Builder<CourseDates, CourseDatesBuilder> {
  _$CourseDates _$v;

  String _startTime;

  String get startTime => _$this._startTime;

  set startTime(String startTime) => _$this._startTime = startTime;

  String _endTime;

  String get endTime => _$this._endTime;

  set endTime(String endTime) => _$this._endTime = endTime;

  String _weekdays;

  String get weekdays => _$this._weekdays;

  set weekdays(String weekdays) => _$this._weekdays = weekdays;

  String _startDate;

  String get startDate => _$this._startDate;

  set startDate(String startDate) => _$this._startDate = startDate;

  String _endDate;

  String get endDate => _$this._endDate;

  set endDate(String endDate) => _$this._endDate = endDate;

  bool _isTba;

  bool get isTba => _$this._isTba;

  set isTba(bool isTba) => _$this._isTba = isTba;

  bool _isCancelled;

  bool get isCancelled => _$this._isCancelled;

  set isCancelled(bool isCancelled) => _$this._isCancelled = isCancelled;

  bool _isClosed;

  bool get isClosed => _$this._isClosed;

  set isClosed(bool isClosed) => _$this._isClosed = isClosed;

  CourseDatesBuilder();

  CourseDatesBuilder get _$this {
    if (_$v != null) {
      _startTime = _$v.startTime;
      _endTime = _$v.endTime;
      _weekdays = _$v.weekdays;
      _startDate = _$v.startDate;
      _endDate = _$v.endDate;
      _isTba = _$v.isTba;
      _isCancelled = _$v.isCancelled;
      _isClosed = _$v.isClosed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseDates other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CourseDates;
  }

  @override
  void update(void updates(CourseDatesBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CourseDates build() {
    final _$result = _$v ??
        new _$CourseDates._(
            startTime: startTime,
            endTime: endTime,
            weekdays: weekdays,
            startDate: startDate,
            endDate: endDate,
            isTba: isTba,
            isCancelled: isCancelled,
            isClosed: isClosed);
    replace(_$result);
    return _$result;
  }
}
