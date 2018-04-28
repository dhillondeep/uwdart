// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uw_special_day.dart';

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

Serializer<UWSpecialDay> _$uWSpecialDaySerializer = new _$UWSpecialDaySerializer();

class _$UWSpecialDaySerializer implements StructuredSerializer<UWSpecialDay> {
  @override
  final Iterable<Type> types = const [UWSpecialDay, _$UWSpecialDay];
  @override
  final String wireName = 'UWSpecialDay';

  @override
  Iterable serialize(Serializers serializers, UWSpecialDay object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date, specifiedType: const FullType(String)));
    }
    if (object.openingHour != null) {
      result
        ..add('opening_hour')
        ..add(serializers.serialize(object.openingHour, specifiedType: const FullType(String)));
    }
    if (object.closingHour != null) {
      result
        ..add('closing_hour')
        ..add(serializers.serialize(object.closingHour, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  UWSpecialDay deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new UWSpecialDayBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'opening_hour':
          result.openingHour =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'closing_hour':
          result.closingHour =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UWSpecialDay extends UWSpecialDay {
  @override
  final String date;
  @override
  final String openingHour;
  @override
  final String closingHour;

  factory _$UWSpecialDay([void updates(UWSpecialDayBuilder b)]) =>
      (new UWSpecialDayBuilder()..update(updates)).build();

  _$UWSpecialDay._({this.date, this.openingHour, this.closingHour}) : super._();

  @override
  UWSpecialDay rebuild(void updates(UWSpecialDayBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UWSpecialDayBuilder toBuilder() => new UWSpecialDayBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! UWSpecialDay) return false;
    return date == other.date &&
        openingHour == other.openingHour &&
        closingHour == other.closingHour;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, date.hashCode), openingHour.hashCode), closingHour.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UWSpecialDay')
          ..add('date', date)
          ..add('openingHour', openingHour)
          ..add('closingHour', closingHour))
        .toString();
  }
}

class UWSpecialDayBuilder implements Builder<UWSpecialDay, UWSpecialDayBuilder> {
  _$UWSpecialDay _$v;

  String _date;

  String get date => _$this._date;

  set date(String date) => _$this._date = date;

  String _openingHour;

  String get openingHour => _$this._openingHour;

  set openingHour(String openingHour) => _$this._openingHour = openingHour;

  String _closingHour;

  String get closingHour => _$this._closingHour;

  set closingHour(String closingHour) => _$this._closingHour = closingHour;

  UWSpecialDayBuilder();

  UWSpecialDayBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _openingHour = _$v.openingHour;
      _closingHour = _$v.closingHour;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UWSpecialDay other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$UWSpecialDay;
  }

  @override
  void update(void updates(UWSpecialDayBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UWSpecialDay build() {
    final _$result =
        _$v ?? new _$UWSpecialDay._(date: date, openingHour: openingHour, closingHour: closingHour);
    replace(_$result);
    return _$result;
  }
}
