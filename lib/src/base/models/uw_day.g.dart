// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uw_day.dart';

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

Serializer<UWDay> _$uWDaySerializer = new _$UWDaySerializer();

class _$UWDaySerializer implements StructuredSerializer<UWDay> {
  @override
  final Iterable<Type> types = const [UWDay, _$UWDay];
  @override
  final String wireName = 'UWDay';

  @override
  Iterable serialize(Serializers serializers, UWDay object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.isClosed != null) {
      result
        ..add('is_closed')
        ..add(serializers.serialize(object.isClosed, specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  UWDay deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new UWDayBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'opening_hour':
          result.openingHour =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'closing_hour':
          result.closingHour =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
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

class _$UWDay extends UWDay {
  @override
  final String openingHour;
  @override
  final String closingHour;
  @override
  final bool isClosed;

  factory _$UWDay([void updates(UWDayBuilder b)]) => (new UWDayBuilder()..update(updates)).build();

  _$UWDay._({this.openingHour, this.closingHour, this.isClosed}) : super._();

  @override
  UWDay rebuild(void updates(UWDayBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  UWDayBuilder toBuilder() => new UWDayBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! UWDay) return false;
    return openingHour == other.openingHour &&
        closingHour == other.closingHour &&
        isClosed == other.isClosed;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, openingHour.hashCode), closingHour.hashCode), isClosed.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UWDay')
          ..add('openingHour', openingHour)
          ..add('closingHour', closingHour)
          ..add('isClosed', isClosed))
        .toString();
  }
}

class UWDayBuilder implements Builder<UWDay, UWDayBuilder> {
  _$UWDay _$v;

  String _openingHour;

  String get openingHour => _$this._openingHour;

  set openingHour(String openingHour) => _$this._openingHour = openingHour;

  String _closingHour;

  String get closingHour => _$this._closingHour;

  set closingHour(String closingHour) => _$this._closingHour = closingHour;

  bool _isClosed;

  bool get isClosed => _$this._isClosed;

  set isClosed(bool isClosed) => _$this._isClosed = isClosed;

  UWDayBuilder();

  UWDayBuilder get _$this {
    if (_$v != null) {
      _openingHour = _$v.openingHour;
      _closingHour = _$v.closingHour;
      _isClosed = _$v.isClosed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UWDay other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$UWDay;
  }

  @override
  void update(void updates(UWDayBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$UWDay build() {
    final _$result = _$v ??
        new _$UWDay._(openingHour: openingHour, closingHour: closingHour, isClosed: isClosed);
    replace(_$result);
    return _$result;
  }
}
