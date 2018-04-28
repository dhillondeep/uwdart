// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uw_open_hours.dart';

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

Serializer<UWOpeningHours> _$uWOpeningHoursSerializer = new _$UWOpeningHoursSerializer();

class _$UWOpeningHoursSerializer implements StructuredSerializer<UWOpeningHours> {
  @override
  final Iterable<Type> types = const [UWOpeningHours, _$UWOpeningHours];
  @override
  final String wireName = 'UWOpeningHours';

  @override
  Iterable serialize(Serializers serializers, UWOpeningHours object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'sunday',
      serializers.serialize(object.sunday, specifiedType: const FullType(UWDay)),
      'monday',
      serializers.serialize(object.monday, specifiedType: const FullType(UWDay)),
      'tuesday',
      serializers.serialize(object.tuesday, specifiedType: const FullType(UWDay)),
      'wednesday',
      serializers.serialize(object.wednesday, specifiedType: const FullType(UWDay)),
      'thursday',
      serializers.serialize(object.thursday, specifiedType: const FullType(UWDay)),
      'friday',
      serializers.serialize(object.friday, specifiedType: const FullType(UWDay)),
      'saturday',
      serializers.serialize(object.saturday, specifiedType: const FullType(UWDay)),
    ];

    return result;
  }

  @override
  UWOpeningHours deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new UWOpeningHoursBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sunday':
          result.sunday.replace(
              serializers.deserialize(value, specifiedType: const FullType(UWDay)) as UWDay);
          break;
        case 'monday':
          result.monday.replace(
              serializers.deserialize(value, specifiedType: const FullType(UWDay)) as UWDay);
          break;
        case 'tuesday':
          result.tuesday.replace(
              serializers.deserialize(value, specifiedType: const FullType(UWDay)) as UWDay);
          break;
        case 'wednesday':
          result.wednesday.replace(
              serializers.deserialize(value, specifiedType: const FullType(UWDay)) as UWDay);
          break;
        case 'thursday':
          result.thursday.replace(
              serializers.deserialize(value, specifiedType: const FullType(UWDay)) as UWDay);
          break;
        case 'friday':
          result.friday.replace(
              serializers.deserialize(value, specifiedType: const FullType(UWDay)) as UWDay);
          break;
        case 'saturday':
          result.saturday.replace(
              serializers.deserialize(value, specifiedType: const FullType(UWDay)) as UWDay);
          break;
      }
    }

    return result.build();
  }
}

class _$UWOpeningHours extends UWOpeningHours {
  @override
  final UWDay sunday;
  @override
  final UWDay monday;
  @override
  final UWDay tuesday;
  @override
  final UWDay wednesday;
  @override
  final UWDay thursday;
  @override
  final UWDay friday;
  @override
  final UWDay saturday;

  factory _$UWOpeningHours([void updates(UWOpeningHoursBuilder b)]) =>
      (new UWOpeningHoursBuilder()..update(updates)).build();

  _$UWOpeningHours._(
      {this.sunday,
      this.monday,
      this.tuesday,
      this.wednesday,
      this.thursday,
      this.friday,
      this.saturday})
      : super._() {
    if (sunday == null) throw new BuiltValueNullFieldError('UWOpeningHours', 'sunday');
    if (monday == null) throw new BuiltValueNullFieldError('UWOpeningHours', 'monday');
    if (tuesday == null) throw new BuiltValueNullFieldError('UWOpeningHours', 'tuesday');
    if (wednesday == null) throw new BuiltValueNullFieldError('UWOpeningHours', 'wednesday');
    if (thursday == null) throw new BuiltValueNullFieldError('UWOpeningHours', 'thursday');
    if (friday == null) throw new BuiltValueNullFieldError('UWOpeningHours', 'friday');
    if (saturday == null) throw new BuiltValueNullFieldError('UWOpeningHours', 'saturday');
  }

  @override
  UWOpeningHours rebuild(void updates(UWOpeningHoursBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UWOpeningHoursBuilder toBuilder() => new UWOpeningHoursBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! UWOpeningHours) return false;
    return sunday == other.sunday &&
        monday == other.monday &&
        tuesday == other.tuesday &&
        wednesday == other.wednesday &&
        thursday == other.thursday &&
        friday == other.friday &&
        saturday == other.saturday;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, sunday.hashCode), monday.hashCode), tuesday.hashCode),
                    wednesday.hashCode),
                thursday.hashCode),
            friday.hashCode),
        saturday.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UWOpeningHours')
          ..add('sunday', sunday)
          ..add('monday', monday)
          ..add('tuesday', tuesday)
          ..add('wednesday', wednesday)
          ..add('thursday', thursday)
          ..add('friday', friday)
          ..add('saturday', saturday))
        .toString();
  }
}

class UWOpeningHoursBuilder implements Builder<UWOpeningHours, UWOpeningHoursBuilder> {
  _$UWOpeningHours _$v;

  UWDayBuilder _sunday;

  UWDayBuilder get sunday => _$this._sunday ??= new UWDayBuilder();

  set sunday(UWDayBuilder sunday) => _$this._sunday = sunday;

  UWDayBuilder _monday;

  UWDayBuilder get monday => _$this._monday ??= new UWDayBuilder();

  set monday(UWDayBuilder monday) => _$this._monday = monday;

  UWDayBuilder _tuesday;

  UWDayBuilder get tuesday => _$this._tuesday ??= new UWDayBuilder();

  set tuesday(UWDayBuilder tuesday) => _$this._tuesday = tuesday;

  UWDayBuilder _wednesday;

  UWDayBuilder get wednesday => _$this._wednesday ??= new UWDayBuilder();

  set wednesday(UWDayBuilder wednesday) => _$this._wednesday = wednesday;

  UWDayBuilder _thursday;

  UWDayBuilder get thursday => _$this._thursday ??= new UWDayBuilder();

  set thursday(UWDayBuilder thursday) => _$this._thursday = thursday;

  UWDayBuilder _friday;

  UWDayBuilder get friday => _$this._friday ??= new UWDayBuilder();

  set friday(UWDayBuilder friday) => _$this._friday = friday;

  UWDayBuilder _saturday;

  UWDayBuilder get saturday => _$this._saturday ??= new UWDayBuilder();

  set saturday(UWDayBuilder saturday) => _$this._saturday = saturday;

  UWOpeningHoursBuilder();

  UWOpeningHoursBuilder get _$this {
    if (_$v != null) {
      _sunday = _$v.sunday?.toBuilder();
      _monday = _$v.monday?.toBuilder();
      _tuesday = _$v.tuesday?.toBuilder();
      _wednesday = _$v.wednesday?.toBuilder();
      _thursday = _$v.thursday?.toBuilder();
      _friday = _$v.friday?.toBuilder();
      _saturday = _$v.saturday?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UWOpeningHours other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$UWOpeningHours;
  }

  @override
  void update(void updates(UWOpeningHoursBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UWOpeningHours build() {
    _$UWOpeningHours _$result;
    try {
      _$result = _$v ??
          new _$UWOpeningHours._(
              sunday: sunday.build(),
              monday: monday.build(),
              tuesday: tuesday.build(),
              wednesday: wednesday.build(),
              thursday: thursday.build(),
              friday: friday.build(),
              saturday: saturday.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sunday';
        sunday.build();
        _$failedField = 'monday';
        monday.build();
        _$failedField = 'tuesday';
        tuesday.build();
        _$failedField = 'wednesday';
        wednesday.build();
        _$failedField = 'thursday';
        thursday.build();
        _$failedField = 'friday';
        friday.build();
        _$failedField = 'saturday';
        saturday.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('UWOpeningHours', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
