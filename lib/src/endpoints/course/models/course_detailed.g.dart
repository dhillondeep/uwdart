// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_detailed.dart';

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

Serializer<CourseDetailed> _$courseDetailedSerializer = new _$CourseDetailedSerializer();
Serializer<CourseOfferings> _$courseOfferingsSerializer = new _$CourseOfferingsSerializer();

class _$CourseDetailedSerializer implements StructuredSerializer<CourseDetailed> {
  @override
  final Iterable<Type> types = const [CourseDetailed, _$CourseDetailed];
  @override
  final String wireName = 'CourseDetailed';

  @override
  Iterable serialize(Serializers serializers, CourseDetailed object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'instructions',
      serializers.serialize(object.instructions,
          specifiedType: const FullType(BuiltList, const [const FullType(String)])),
    ];
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
    if (object.prerequisites != null) {
      result
        ..add('prerequisites')
        ..add(serializers.serialize(object.prerequisites, specifiedType: const FullType(String)));
    }
    if (object.antirequisites != null) {
      result
        ..add('antirequisites')
        ..add(serializers.serialize(object.antirequisites, specifiedType: const FullType(String)));
    }
    if (object.corequisites != null) {
      result
        ..add('corequisites')
        ..add(serializers.serialize(object.corequisites, specifiedType: const FullType(String)));
    }
    if (object.crosslistings != null) {
      result
        ..add('crosslistings')
        ..add(serializers.serialize(object.crosslistings, specifiedType: const FullType(String)));
    }
    if (object.termsOffered != null) {
      result
        ..add('terms_offered')
        ..add(serializers.serialize(object.termsOffered,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.notes != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(object.notes, specifiedType: const FullType(String)));
    }
    if (object.offerings != null) {
      result
        ..add('offerings')
        ..add(serializers.serialize(object.offerings,
            specifiedType: const FullType(CourseOfferings)));
    }
    if (object.needsDepartmentConsent != null) {
      result
        ..add('needs_department_consent')
        ..add(serializers.serialize(object.needsDepartmentConsent,
            specifiedType: const FullType(bool)));
    }
    if (object.needsInstructorConsent != null) {
      result
        ..add('needs_instructor_consent')
        ..add(serializers.serialize(object.needsInstructorConsent,
            specifiedType: const FullType(bool)));
    }
    if (object.extra != null) {
      result
        ..add('extra')
        ..add(serializers.serialize(object.extra,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.calendarYear != null) {
      result
        ..add('calendar_year')
        ..add(serializers.serialize(object.calendarYear, specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url, specifiedType: const FullType(String)));
    }
    if (object.academicLevel != null) {
      result
        ..add('academic_level')
        ..add(serializers.serialize(object.academicLevel, specifiedType: const FullType(String)));
    }
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
  CourseDetailed deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CourseDetailedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'units':
          result.units = serializers.deserialize(value, specifiedType: const FullType(num)) as num;
          break;
        case 'description':
          result.description =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'instructions':
          result.instructions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'prerequisites':
          result.prerequisites =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'antirequisites':
          result.antirequisites =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'corequisites':
          result.corequisites =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'crosslistings':
          result.crosslistings =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'terms_offered':
          result.termsOffered.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'notes':
          result.notes =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'offerings':
          result.offerings.replace(serializers.deserialize(value,
              specifiedType: const FullType(CourseOfferings)) as CourseOfferings);
          break;
        case 'needs_department_consent':
          result.needsDepartmentConsent =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'needs_instructor_consent':
          result.needsInstructorConsent =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'extra':
          result.extra.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'calendar_year':
          result.calendarYear =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'academic_level':
          result.academicLevel =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
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

class _$CourseOfferingsSerializer implements StructuredSerializer<CourseOfferings> {
  @override
  final Iterable<Type> types = const [CourseOfferings, _$CourseOfferings];
  @override
  final String wireName = 'CourseOfferings';

  @override
  Iterable serialize(Serializers serializers, CourseOfferings object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.online != null) {
      result
        ..add('online')
        ..add(serializers.serialize(object.online, specifiedType: const FullType(bool)));
    }
    if (object.onlineOnly != null) {
      result
        ..add('online_only')
        ..add(serializers.serialize(object.onlineOnly, specifiedType: const FullType(bool)));
    }
    if (object.stJerome != null) {
      result
        ..add('st_jerome')
        ..add(serializers.serialize(object.stJerome, specifiedType: const FullType(bool)));
    }
    if (object.stJeromeOnly != null) {
      result
        ..add('st_jerome_only')
        ..add(serializers.serialize(object.stJeromeOnly, specifiedType: const FullType(bool)));
    }
    if (object.renison != null) {
      result
        ..add('renison')
        ..add(serializers.serialize(object.renison, specifiedType: const FullType(bool)));
    }
    if (object.renisonOnly != null) {
      result
        ..add('renison_only')
        ..add(serializers.serialize(object.renisonOnly, specifiedType: const FullType(bool)));
    }
    if (object.conradGrebel != null) {
      result
        ..add('conrad_grebel')
        ..add(serializers.serialize(object.conradGrebel, specifiedType: const FullType(bool)));
    }
    if (object.conradGrebelOnly != null) {
      result
        ..add('conrad_grebel_only')
        ..add(serializers.serialize(object.conradGrebelOnly, specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  CourseOfferings deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CourseOfferingsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'online':
          result.online =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'online_only':
          result.onlineOnly =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'st_jerome':
          result.stJerome =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'st_jerome_only':
          result.stJeromeOnly =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'renison':
          result.renison =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'renison_only':
          result.renisonOnly =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'conrad_grebel':
          result.conradGrebel =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'conrad_grebel_only':
          result.conradGrebelOnly =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$CourseDetailed extends CourseDetailed {
  @override
  final num units;
  @override
  final String description;
  @override
  final BuiltList<String> instructions;
  @override
  final String prerequisites;
  @override
  final String antirequisites;
  @override
  final String corequisites;
  @override
  final String crosslistings;
  @override
  final BuiltList<String> termsOffered;
  @override
  final String notes;
  @override
  final CourseOfferings offerings;
  @override
  final bool needsDepartmentConsent;
  @override
  final bool needsInstructorConsent;
  @override
  final BuiltList<String> extra;
  @override
  final String calendarYear;
  @override
  final String url;
  @override
  final String academicLevel;
  @override
  final String courseId;
  @override
  final String subject;
  @override
  final String catalogNumber;
  @override
  final String title;

  factory _$CourseDetailed([void updates(CourseDetailedBuilder b)]) =>
      (new CourseDetailedBuilder()..update(updates)).build();

  _$CourseDetailed._(
      {this.units,
      this.description,
      this.instructions,
      this.prerequisites,
      this.antirequisites,
      this.corequisites,
      this.crosslistings,
      this.termsOffered,
      this.notes,
      this.offerings,
      this.needsDepartmentConsent,
      this.needsInstructorConsent,
      this.extra,
      this.calendarYear,
      this.url,
      this.academicLevel,
      this.courseId,
      this.subject,
      this.catalogNumber,
      this.title})
      : super._() {
    if (instructions == null) throw new BuiltValueNullFieldError('CourseDetailed', 'instructions');
  }

  @override
  CourseDetailed rebuild(void updates(CourseDetailedBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseDetailedBuilder toBuilder() => new CourseDetailedBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CourseDetailed) return false;
    return units == other.units &&
        description == other.description &&
        instructions == other.instructions &&
        prerequisites == other.prerequisites &&
        antirequisites == other.antirequisites &&
        corequisites == other.corequisites &&
        crosslistings == other.crosslistings &&
        termsOffered == other.termsOffered &&
        notes == other.notes &&
        offerings == other.offerings &&
        needsDepartmentConsent == other.needsDepartmentConsent &&
        needsInstructorConsent == other.needsInstructorConsent &&
        extra == other.extra &&
        calendarYear == other.calendarYear &&
        url == other.url &&
        academicLevel == other.academicLevel &&
        courseId == other.courseId &&
        subject == other.subject &&
        catalogNumber == other.catalogNumber &&
        title == other.title;
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
                                                                                $jc(0,
                                                                                    units.hashCode),
                                                                                description
                                                                                    .hashCode),
                                                                            instructions.hashCode),
                                                                        prerequisites.hashCode),
                                                                    antirequisites.hashCode),
                                                                corequisites.hashCode),
                                                            crosslistings.hashCode),
                                                        termsOffered.hashCode),
                                                    notes.hashCode),
                                                offerings.hashCode),
                                            needsDepartmentConsent.hashCode),
                                        needsInstructorConsent.hashCode),
                                    extra.hashCode),
                                calendarYear.hashCode),
                            url.hashCode),
                        academicLevel.hashCode),
                    courseId.hashCode),
                subject.hashCode),
            catalogNumber.hashCode),
        title.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourseDetailed')
          ..add('units', units)
          ..add('description', description)
          ..add('instructions', instructions)
          ..add('prerequisites', prerequisites)
          ..add('antirequisites', antirequisites)
          ..add('corequisites', corequisites)
          ..add('crosslistings', crosslistings)
          ..add('termsOffered', termsOffered)
          ..add('notes', notes)
          ..add('offerings', offerings)
          ..add('needsDepartmentConsent', needsDepartmentConsent)
          ..add('needsInstructorConsent', needsInstructorConsent)
          ..add('extra', extra)
          ..add('calendarYear', calendarYear)
          ..add('url', url)
          ..add('academicLevel', academicLevel)
          ..add('courseId', courseId)
          ..add('subject', subject)
          ..add('catalogNumber', catalogNumber)
          ..add('title', title))
        .toString();
  }
}

class CourseDetailedBuilder
    implements Builder<CourseDetailed, CourseDetailedBuilder>, CourseBaseBuilder {
  _$CourseDetailed _$v;

  num _units;

  num get units => _$this._units;

  set units(num units) => _$this._units = units;

  String _description;

  String get description => _$this._description;

  set description(String description) => _$this._description = description;

  ListBuilder<String> _instructions;

  ListBuilder<String> get instructions => _$this._instructions ??= new ListBuilder<String>();

  set instructions(ListBuilder<String> instructions) => _$this._instructions = instructions;

  String _prerequisites;

  String get prerequisites => _$this._prerequisites;

  set prerequisites(String prerequisites) => _$this._prerequisites = prerequisites;

  String _antirequisites;

  String get antirequisites => _$this._antirequisites;

  set antirequisites(String antirequisites) => _$this._antirequisites = antirequisites;

  String _corequisites;

  String get corequisites => _$this._corequisites;

  set corequisites(String corequisites) => _$this._corequisites = corequisites;

  String _crosslistings;

  String get crosslistings => _$this._crosslistings;

  set crosslistings(String crosslistings) => _$this._crosslistings = crosslistings;

  ListBuilder<String> _termsOffered;

  ListBuilder<String> get termsOffered => _$this._termsOffered ??= new ListBuilder<String>();

  set termsOffered(ListBuilder<String> termsOffered) => _$this._termsOffered = termsOffered;

  String _notes;

  String get notes => _$this._notes;

  set notes(String notes) => _$this._notes = notes;

  CourseOfferingsBuilder _offerings;

  CourseOfferingsBuilder get offerings => _$this._offerings ??= new CourseOfferingsBuilder();

  set offerings(CourseOfferingsBuilder offerings) => _$this._offerings = offerings;

  bool _needsDepartmentConsent;

  bool get needsDepartmentConsent => _$this._needsDepartmentConsent;

  set needsDepartmentConsent(bool needsDepartmentConsent) =>
      _$this._needsDepartmentConsent = needsDepartmentConsent;

  bool _needsInstructorConsent;

  bool get needsInstructorConsent => _$this._needsInstructorConsent;

  set needsInstructorConsent(bool needsInstructorConsent) =>
      _$this._needsInstructorConsent = needsInstructorConsent;

  ListBuilder<String> _extra;

  ListBuilder<String> get extra => _$this._extra ??= new ListBuilder<String>();

  set extra(ListBuilder<String> extra) => _$this._extra = extra;

  String _calendarYear;

  String get calendarYear => _$this._calendarYear;

  set calendarYear(String calendarYear) => _$this._calendarYear = calendarYear;

  String _url;

  String get url => _$this._url;

  set url(String url) => _$this._url = url;

  String _academicLevel;

  String get academicLevel => _$this._academicLevel;

  set academicLevel(String academicLevel) => _$this._academicLevel = academicLevel;

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

  CourseDetailedBuilder();

  CourseDetailedBuilder get _$this {
    if (_$v != null) {
      _units = _$v.units;
      _description = _$v.description;
      _instructions = _$v.instructions?.toBuilder();
      _prerequisites = _$v.prerequisites;
      _antirequisites = _$v.antirequisites;
      _corequisites = _$v.corequisites;
      _crosslistings = _$v.crosslistings;
      _termsOffered = _$v.termsOffered?.toBuilder();
      _notes = _$v.notes;
      _offerings = _$v.offerings?.toBuilder();
      _needsDepartmentConsent = _$v.needsDepartmentConsent;
      _needsInstructorConsent = _$v.needsInstructorConsent;
      _extra = _$v.extra?.toBuilder();
      _calendarYear = _$v.calendarYear;
      _url = _$v.url;
      _academicLevel = _$v.academicLevel;
      _courseId = _$v.courseId;
      _subject = _$v.subject;
      _catalogNumber = _$v.catalogNumber;
      _title = _$v.title;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant CourseDetailed other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CourseDetailed;
  }

  @override
  void update(void updates(CourseDetailedBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CourseDetailed build() {
    _$CourseDetailed _$result;
    try {
      _$result = _$v ??
          new _$CourseDetailed._(
              units: units,
              description: description,
              instructions: instructions.build(),
              prerequisites: prerequisites,
              antirequisites: antirequisites,
              corequisites: corequisites,
              crosslistings: crosslistings,
              termsOffered: _termsOffered?.build(),
              notes: notes,
              offerings: _offerings?.build(),
              needsDepartmentConsent: needsDepartmentConsent,
              needsInstructorConsent: needsInstructorConsent,
              extra: _extra?.build(),
              calendarYear: calendarYear,
              url: url,
              academicLevel: academicLevel,
              courseId: courseId,
              subject: subject,
              catalogNumber: catalogNumber,
              title: title);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'instructions';
        instructions.build();

        _$failedField = 'termsOffered';
        _termsOffered?.build();

        _$failedField = 'offerings';
        _offerings?.build();

        _$failedField = 'extra';
        _extra?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('CourseDetailed', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CourseOfferings extends CourseOfferings {
  @override
  final bool online;
  @override
  final bool onlineOnly;
  @override
  final bool stJerome;
  @override
  final bool stJeromeOnly;
  @override
  final bool renison;
  @override
  final bool renisonOnly;
  @override
  final bool conradGrebel;
  @override
  final bool conradGrebelOnly;

  factory _$CourseOfferings([void updates(CourseOfferingsBuilder b)]) =>
      (new CourseOfferingsBuilder()..update(updates)).build();

  _$CourseOfferings._(
      {this.online,
      this.onlineOnly,
      this.stJerome,
      this.stJeromeOnly,
      this.renison,
      this.renisonOnly,
      this.conradGrebel,
      this.conradGrebelOnly})
      : super._();

  @override
  CourseOfferings rebuild(void updates(CourseOfferingsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CourseOfferingsBuilder toBuilder() => new CourseOfferingsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! CourseOfferings) return false;
    return online == other.online &&
        onlineOnly == other.onlineOnly &&
        stJerome == other.stJerome &&
        stJeromeOnly == other.stJeromeOnly &&
        renison == other.renison &&
        renisonOnly == other.renisonOnly &&
        conradGrebel == other.conradGrebel &&
        conradGrebelOnly == other.conradGrebelOnly;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc($jc(0, online.hashCode), onlineOnly.hashCode), stJerome.hashCode),
                        stJeromeOnly.hashCode),
                    renison.hashCode),
                renisonOnly.hashCode),
            conradGrebel.hashCode),
        conradGrebelOnly.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CourseOfferings')
          ..add('online', online)
          ..add('onlineOnly', onlineOnly)
          ..add('stJerome', stJerome)
          ..add('stJeromeOnly', stJeromeOnly)
          ..add('renison', renison)
          ..add('renisonOnly', renisonOnly)
          ..add('conradGrebel', conradGrebel)
          ..add('conradGrebelOnly', conradGrebelOnly))
        .toString();
  }
}

class CourseOfferingsBuilder implements Builder<CourseOfferings, CourseOfferingsBuilder> {
  _$CourseOfferings _$v;

  bool _online;

  bool get online => _$this._online;

  set online(bool online) => _$this._online = online;

  bool _onlineOnly;

  bool get onlineOnly => _$this._onlineOnly;

  set onlineOnly(bool onlineOnly) => _$this._onlineOnly = onlineOnly;

  bool _stJerome;

  bool get stJerome => _$this._stJerome;

  set stJerome(bool stJerome) => _$this._stJerome = stJerome;

  bool _stJeromeOnly;

  bool get stJeromeOnly => _$this._stJeromeOnly;

  set stJeromeOnly(bool stJeromeOnly) => _$this._stJeromeOnly = stJeromeOnly;

  bool _renison;

  bool get renison => _$this._renison;

  set renison(bool renison) => _$this._renison = renison;

  bool _renisonOnly;

  bool get renisonOnly => _$this._renisonOnly;

  set renisonOnly(bool renisonOnly) => _$this._renisonOnly = renisonOnly;

  bool _conradGrebel;

  bool get conradGrebel => _$this._conradGrebel;

  set conradGrebel(bool conradGrebel) => _$this._conradGrebel = conradGrebel;

  bool _conradGrebelOnly;

  bool get conradGrebelOnly => _$this._conradGrebelOnly;

  set conradGrebelOnly(bool conradGrebelOnly) => _$this._conradGrebelOnly = conradGrebelOnly;

  CourseOfferingsBuilder();

  CourseOfferingsBuilder get _$this {
    if (_$v != null) {
      _online = _$v.online;
      _onlineOnly = _$v.onlineOnly;
      _stJerome = _$v.stJerome;
      _stJeromeOnly = _$v.stJeromeOnly;
      _renison = _$v.renison;
      _renisonOnly = _$v.renisonOnly;
      _conradGrebel = _$v.conradGrebel;
      _conradGrebelOnly = _$v.conradGrebelOnly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CourseOfferings other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$CourseOfferings;
  }

  @override
  void update(void updates(CourseOfferingsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$CourseOfferings build() {
    final _$result = _$v ??
        new _$CourseOfferings._(
            online: online,
            onlineOnly: onlineOnly,
            stJerome: stJerome,
            stJeromeOnly: stJeromeOnly,
            renison: renison,
            renisonOnly: renisonOnly,
            conradGrebel: conradGrebel,
            conradGrebelOnly: conradGrebelOnly);
    replace(_$result);
    return _$result;
  }
}
