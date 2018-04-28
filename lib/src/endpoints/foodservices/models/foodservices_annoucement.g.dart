// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodservices_annoucement.dart';

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

Serializer<FoodServicesAnnouncement> _$foodServicesAnnouncementSerializer =
    new _$FoodServicesAnnouncementSerializer();

class _$FoodServicesAnnouncementSerializer
    implements StructuredSerializer<FoodServicesAnnouncement> {
  @override
  final Iterable<Type> types = const [FoodServicesAnnouncement, _$FoodServicesAnnouncement];
  @override
  final String wireName = 'FoodServicesAnnouncement';

  @override
  Iterable serialize(Serializers serializers, FoodServicesAnnouncement object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date, specifiedType: const FullType(String)));
    }
    if (object.adText != null) {
      result
        ..add('ad_text')
        ..add(serializers.serialize(object.adText, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FoodServicesAnnouncement deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesAnnouncementBuilder();

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
        case 'ad_text':
          result.adText =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesAnnouncement extends FoodServicesAnnouncement {
  @override
  final String date;
  @override
  final String adText;

  factory _$FoodServicesAnnouncement([void updates(FoodServicesAnnouncementBuilder b)]) =>
      (new FoodServicesAnnouncementBuilder()..update(updates)).build();

  _$FoodServicesAnnouncement._({this.date, this.adText}) : super._();

  @override
  FoodServicesAnnouncement rebuild(void updates(FoodServicesAnnouncementBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesAnnouncementBuilder toBuilder() =>
      new FoodServicesAnnouncementBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesAnnouncement) return false;
    return date == other.date && adText == other.adText;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, date.hashCode), adText.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesAnnouncement')
          ..add('date', date)
          ..add('adText', adText))
        .toString();
  }
}

class FoodServicesAnnouncementBuilder
    implements Builder<FoodServicesAnnouncement, FoodServicesAnnouncementBuilder> {
  _$FoodServicesAnnouncement _$v;

  String _date;

  String get date => _$this._date;

  set date(String date) => _$this._date = date;

  String _adText;

  String get adText => _$this._adText;

  set adText(String adText) => _$this._adText = adText;

  FoodServicesAnnouncementBuilder();

  FoodServicesAnnouncementBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _adText = _$v.adText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodServicesAnnouncement other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesAnnouncement;
  }

  @override
  void update(void updates(FoodServicesAnnouncementBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesAnnouncement build() {
    final _$result = _$v ?? new _$FoodServicesAnnouncement._(date: date, adText: adText);
    replace(_$result);
    return _$result;
  }
}
