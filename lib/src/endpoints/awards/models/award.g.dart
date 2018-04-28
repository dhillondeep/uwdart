// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'award.dart';

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

Serializer<Award> _$awardSerializer = new _$AwardSerializer();
Serializer<AwardDeadline> _$awardDeadlineSerializer = new _$AwardDeadlineSerializer();
Serializer<AwardApplication> _$awardApplicationSerializer = new _$AwardApplicationSerializer();

class _$AwardSerializer implements StructuredSerializer<Award> {
  @override
  final Iterable<Type> types = const [Award, _$Award];
  @override
  final String wireName = 'Award';

  @override
  Iterable serialize(Serializers serializers, Award object,
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
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status, specifiedType: const FullType(String)));
    }
    if (object.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(object.value, specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description, specifiedType: const FullType(String)));
    }
    if (object.citizenship != null) {
      result
        ..add('citizenship')
        ..add(serializers.serialize(object.citizenship,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.programs != null) {
      result
        ..add('programs')
        ..add(serializers.serialize(object.programs,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.application != null) {
      result
        ..add('application')
        ..add(serializers.serialize(object.application,
            specifiedType: const FullType(AwardApplication)));
    }
    if (object.deadlines != null) {
      result
        ..add('deadlines')
        ..add(
            serializers.serialize(object.deadlines, specifiedType: const FullType(AwardDeadline)));
    }
    if (object.links != null) {
      result
        ..add('links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.contact != null) {
      result
        ..add('contact')
        ..add(serializers.serialize(object.contact, specifiedType: const FullType(String)));
    }
    if (object.vid != null) {
      result
        ..add('vid')
        ..add(serializers.serialize(object.vid, specifiedType: const FullType(int)));
    }
    if (object.link != null) {
      result
        ..add('link')
        ..add(serializers.serialize(object.link, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Award deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new AwardBuilder();

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
        case 'status':
          result.status =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'description':
          result.description =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'citizenship':
          result.citizenship.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'programs':
          result.programs.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'application':
          result.application.replace(serializers.deserialize(value,
              specifiedType: const FullType(AwardApplication)) as AwardApplication);
          break;
        case 'deadlines':
          result.deadlines.replace(serializers.deserialize(value,
              specifiedType: const FullType(AwardDeadline)) as AwardDeadline);
          break;
        case 'links':
          result.links.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'contact':
          result.contact =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'vid':
          result.vid = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'link':
          result.link =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AwardDeadlineSerializer implements StructuredSerializer<AwardDeadline> {
  @override
  final Iterable<Type> types = const [AwardDeadline, _$AwardDeadline];
  @override
  final String wireName = 'AwardDeadline';

  @override
  Iterable serialize(Serializers serializers, AwardDeadline object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.term != null) {
      result
        ..add('term')
        ..add(serializers.serialize(object.term,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.application != null) {
      result
        ..add('application')
        ..add(serializers.serialize(object.application,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.extended != null) {
      result
        ..add('extended')
        ..add(serializers.serialize(object.extended, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  AwardDeadline deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new AwardDeadlineBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'term':
          result.term.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'application':
          result.application.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'extended':
          result.extended =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AwardApplicationSerializer implements StructuredSerializer<AwardApplication> {
  @override
  final Iterable<Type> types = const [AwardApplication, _$AwardApplication];
  @override
  final String wireName = 'AwardApplication';

  @override
  Iterable serialize(Serializers serializers, AwardApplication object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.enrollmentYear != null) {
      result
        ..add('enrollment_year')
        ..add(serializers.serialize(object.enrollmentYear,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.eligibility != null) {
      result
        ..add('eligibility')
        ..add(serializers.serialize(object.eligibility,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.instructions != null) {
      result
        ..add('instructions')
        ..add(serializers.serialize(object.instructions,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.additional != null) {
      result
        ..add('additional')
        ..add(serializers.serialize(object.additional,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  AwardApplication deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new AwardApplicationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'enrollment_year':
          result.enrollmentYear.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'eligibility':
          result.eligibility.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'instructions':
          result.instructions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'additional':
          result.additional.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Award extends Award {
  @override
  final int id;
  @override
  final String title;
  @override
  final String status;
  @override
  final String value;
  @override
  final BuiltList<String> type;
  @override
  final String description;
  @override
  final BuiltList<String> citizenship;
  @override
  final BuiltList<String> programs;
  @override
  final AwardApplication application;
  @override
  final AwardDeadline deadlines;
  @override
  final BuiltList<String> links;
  @override
  final String contact;
  @override
  final int vid;
  @override
  final String link;

  factory _$Award([void updates(AwardBuilder b)]) => (new AwardBuilder()..update(updates)).build();

  _$Award._(
      {this.id,
      this.title,
      this.status,
      this.value,
      this.type,
      this.description,
      this.citizenship,
      this.programs,
      this.application,
      this.deadlines,
      this.links,
      this.contact,
      this.vid,
      this.link})
      : super._();

  @override
  Award rebuild(void updates(AwardBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  AwardBuilder toBuilder() => new AwardBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Award) return false;
    return id == other.id &&
        title == other.title &&
        status == other.status &&
        value == other.value &&
        type == other.type &&
        description == other.description &&
        citizenship == other.citizenship &&
        programs == other.programs &&
        application == other.application &&
        deadlines == other.deadlines &&
        links == other.links &&
        contact == other.contact &&
        vid == other.vid &&
        link == other.link;
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
                                                $jc($jc($jc(0, id.hashCode), title.hashCode),
                                                    status.hashCode),
                                                value.hashCode),
                                            type.hashCode),
                                        description.hashCode),
                                    citizenship.hashCode),
                                programs.hashCode),
                            application.hashCode),
                        deadlines.hashCode),
                    links.hashCode),
                contact.hashCode),
            vid.hashCode),
        link.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Award')
          ..add('id', id)
          ..add('title', title)
          ..add('status', status)
          ..add('value', value)
          ..add('type', type)
          ..add('description', description)
          ..add('citizenship', citizenship)
          ..add('programs', programs)
          ..add('application', application)
          ..add('deadlines', deadlines)
          ..add('links', links)
          ..add('contact', contact)
          ..add('vid', vid)
          ..add('link', link))
        .toString();
  }
}

class AwardBuilder implements Builder<Award, AwardBuilder> {
  _$Award _$v;

  int _id;

  int get id => _$this._id;

  set id(int id) => _$this._id = id;

  String _title;

  String get title => _$this._title;

  set title(String title) => _$this._title = title;

  String _status;

  String get status => _$this._status;

  set status(String status) => _$this._status = status;

  String _value;

  String get value => _$this._value;

  set value(String value) => _$this._value = value;

  ListBuilder<String> _type;

  ListBuilder<String> get type => _$this._type ??= new ListBuilder<String>();

  set type(ListBuilder<String> type) => _$this._type = type;

  String _description;

  String get description => _$this._description;

  set description(String description) => _$this._description = description;

  ListBuilder<String> _citizenship;

  ListBuilder<String> get citizenship => _$this._citizenship ??= new ListBuilder<String>();

  set citizenship(ListBuilder<String> citizenship) => _$this._citizenship = citizenship;

  ListBuilder<String> _programs;

  ListBuilder<String> get programs => _$this._programs ??= new ListBuilder<String>();

  set programs(ListBuilder<String> programs) => _$this._programs = programs;

  AwardApplicationBuilder _application;

  AwardApplicationBuilder get application => _$this._application ??= new AwardApplicationBuilder();

  set application(AwardApplicationBuilder application) => _$this._application = application;

  AwardDeadlineBuilder _deadlines;

  AwardDeadlineBuilder get deadlines => _$this._deadlines ??= new AwardDeadlineBuilder();

  set deadlines(AwardDeadlineBuilder deadlines) => _$this._deadlines = deadlines;

  ListBuilder<String> _links;

  ListBuilder<String> get links => _$this._links ??= new ListBuilder<String>();

  set links(ListBuilder<String> links) => _$this._links = links;

  String _contact;

  String get contact => _$this._contact;

  set contact(String contact) => _$this._contact = contact;

  int _vid;

  int get vid => _$this._vid;

  set vid(int vid) => _$this._vid = vid;

  String _link;

  String get link => _$this._link;

  set link(String link) => _$this._link = link;

  AwardBuilder();

  AwardBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _status = _$v.status;
      _value = _$v.value;
      _type = _$v.type?.toBuilder();
      _description = _$v.description;
      _citizenship = _$v.citizenship?.toBuilder();
      _programs = _$v.programs?.toBuilder();
      _application = _$v.application?.toBuilder();
      _deadlines = _$v.deadlines?.toBuilder();
      _links = _$v.links?.toBuilder();
      _contact = _$v.contact;
      _vid = _$v.vid;
      _link = _$v.link;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Award other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Award;
  }

  @override
  void update(void updates(AwardBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Award build() {
    _$Award _$result;
    try {
      _$result = _$v ??
          new _$Award._(
              id: id,
              title: title,
              status: status,
              value: value,
              type: _type?.build(),
              description: description,
              citizenship: _citizenship?.build(),
              programs: _programs?.build(),
              application: _application?.build(),
              deadlines: _deadlines?.build(),
              links: _links?.build(),
              contact: contact,
              vid: vid,
              link: link);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'type';
        _type?.build();

        _$failedField = 'citizenship';
        _citizenship?.build();
        _$failedField = 'programs';
        _programs?.build();
        _$failedField = 'application';
        _application?.build();
        _$failedField = 'deadlines';
        _deadlines?.build();
        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Award', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AwardDeadline extends AwardDeadline {
  @override
  final BuiltList<String> term;
  @override
  final BuiltList<String> application;
  @override
  final String extended;

  factory _$AwardDeadline([void updates(AwardDeadlineBuilder b)]) =>
      (new AwardDeadlineBuilder()..update(updates)).build();

  _$AwardDeadline._({this.term, this.application, this.extended}) : super._();

  @override
  AwardDeadline rebuild(void updates(AwardDeadlineBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AwardDeadlineBuilder toBuilder() => new AwardDeadlineBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! AwardDeadline) return false;
    return term == other.term && application == other.application && extended == other.extended;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, term.hashCode), application.hashCode), extended.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AwardDeadline')
          ..add('term', term)
          ..add('application', application)
          ..add('extended', extended))
        .toString();
  }
}

class AwardDeadlineBuilder implements Builder<AwardDeadline, AwardDeadlineBuilder> {
  _$AwardDeadline _$v;

  ListBuilder<String> _term;

  ListBuilder<String> get term => _$this._term ??= new ListBuilder<String>();

  set term(ListBuilder<String> term) => _$this._term = term;

  ListBuilder<String> _application;

  ListBuilder<String> get application => _$this._application ??= new ListBuilder<String>();

  set application(ListBuilder<String> application) => _$this._application = application;

  String _extended;

  String get extended => _$this._extended;

  set extended(String extended) => _$this._extended = extended;

  AwardDeadlineBuilder();

  AwardDeadlineBuilder get _$this {
    if (_$v != null) {
      _term = _$v.term?.toBuilder();
      _application = _$v.application?.toBuilder();
      _extended = _$v.extended;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AwardDeadline other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$AwardDeadline;
  }

  @override
  void update(void updates(AwardDeadlineBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AwardDeadline build() {
    _$AwardDeadline _$result;
    try {
      _$result = _$v ??
          new _$AwardDeadline._(
              term: _term?.build(), application: _application?.build(), extended: extended);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'term';
        _term?.build();
        _$failedField = 'application';
        _application?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AwardDeadline', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AwardApplication extends AwardApplication {
  @override
  final BuiltList<String> type;
  @override
  final BuiltList<String> enrollmentYear;
  @override
  final BuiltList<String> eligibility;
  @override
  final BuiltList<String> instructions;
  @override
  final BuiltList<String> additional;

  factory _$AwardApplication([void updates(AwardApplicationBuilder b)]) =>
      (new AwardApplicationBuilder()..update(updates)).build();

  _$AwardApplication._(
      {this.type, this.enrollmentYear, this.eligibility, this.instructions, this.additional})
      : super._();

  @override
  AwardApplication rebuild(void updates(AwardApplicationBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AwardApplicationBuilder toBuilder() => new AwardApplicationBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! AwardApplication) return false;
    return type == other.type &&
        enrollmentYear == other.enrollmentYear &&
        eligibility == other.eligibility &&
        instructions == other.instructions &&
        additional == other.additional;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, type.hashCode), enrollmentYear.hashCode), eligibility.hashCode),
            instructions.hashCode),
        additional.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AwardApplication')
          ..add('type', type)
          ..add('enrollmentYear', enrollmentYear)
          ..add('eligibility', eligibility)
          ..add('instructions', instructions)
          ..add('additional', additional))
        .toString();
  }
}

class AwardApplicationBuilder implements Builder<AwardApplication, AwardApplicationBuilder> {
  _$AwardApplication _$v;

  ListBuilder<String> _type;

  ListBuilder<String> get type => _$this._type ??= new ListBuilder<String>();

  set type(ListBuilder<String> type) => _$this._type = type;

  ListBuilder<String> _enrollmentYear;

  ListBuilder<String> get enrollmentYear => _$this._enrollmentYear ??= new ListBuilder<String>();

  set enrollmentYear(ListBuilder<String> enrollmentYear) => _$this._enrollmentYear = enrollmentYear;

  ListBuilder<String> _eligibility;

  ListBuilder<String> get eligibility => _$this._eligibility ??= new ListBuilder<String>();

  set eligibility(ListBuilder<String> eligibility) => _$this._eligibility = eligibility;

  ListBuilder<String> _instructions;

  ListBuilder<String> get instructions => _$this._instructions ??= new ListBuilder<String>();

  set instructions(ListBuilder<String> instructions) => _$this._instructions = instructions;

  ListBuilder<String> _additional;

  ListBuilder<String> get additional => _$this._additional ??= new ListBuilder<String>();

  set additional(ListBuilder<String> additional) => _$this._additional = additional;

  AwardApplicationBuilder();

  AwardApplicationBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type?.toBuilder();
      _enrollmentYear = _$v.enrollmentYear?.toBuilder();
      _eligibility = _$v.eligibility?.toBuilder();
      _instructions = _$v.instructions?.toBuilder();
      _additional = _$v.additional?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AwardApplication other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$AwardApplication;
  }

  @override
  void update(void updates(AwardApplicationBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AwardApplication build() {
    _$AwardApplication _$result;
    try {
      _$result = _$v ??
          new _$AwardApplication._(
              type: _type?.build(),
              enrollmentYear: _enrollmentYear?.build(),
              eligibility: _eligibility?.build(),
              instructions: _instructions?.build(),
              additional: _additional?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'type';
        _type?.build();
        _$failedField = 'enrollmentYear';
        _enrollmentYear?.build();
        _$failedField = 'eligibility';
        _eligibility?.build();
        _$failedField = 'instructions';
        _instructions?.build();
        _$failedField = 'additional';
        _additional?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('AwardApplication', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
