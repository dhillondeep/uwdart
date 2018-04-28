// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodservices_note.dart';

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

Serializer<FoodServicesNote> _$foodServicesNoteSerializer = new _$FoodServicesNoteSerializer();

class _$FoodServicesNoteSerializer implements StructuredSerializer<FoodServicesNote> {
  @override
  final Iterable<Type> types = const [FoodServicesNote, _$FoodServicesNote];
  @override
  final String wireName = 'FoodServicesNote';

  @override
  Iterable serialize(Serializers serializers, FoodServicesNote object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date, specifiedType: const FullType(String)));
    }
    if (object.outletName != null) {
      result
        ..add('outlet_name')
        ..add(serializers.serialize(object.outletName, specifiedType: const FullType(String)));
    }
    if (object.outletId != null) {
      result
        ..add('outlet_id')
        ..add(serializers.serialize(object.outletId, specifiedType: const FullType(int)));
    }
    if (object.note != null) {
      result
        ..add('note')
        ..add(serializers.serialize(object.note, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FoodServicesNote deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesNoteBuilder();

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
        case 'outlet_name':
          result.outletName =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'outlet_id':
          result.outletId =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'note':
          result.note =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesNote extends FoodServicesNote {
  @override
  final String date;
  @override
  final String outletName;
  @override
  final int outletId;
  @override
  final String note;

  factory _$FoodServicesNote([void updates(FoodServicesNoteBuilder b)]) =>
      (new FoodServicesNoteBuilder()..update(updates)).build();

  _$FoodServicesNote._({this.date, this.outletName, this.outletId, this.note}) : super._();

  @override
  FoodServicesNote rebuild(void updates(FoodServicesNoteBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesNoteBuilder toBuilder() => new FoodServicesNoteBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesNote) return false;
    return date == other.date &&
        outletName == other.outletName &&
        outletId == other.outletId &&
        note == other.note;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, date.hashCode), outletName.hashCode), outletId.hashCode), note.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesNote')
          ..add('date', date)
          ..add('outletName', outletName)
          ..add('outletId', outletId)
          ..add('note', note))
        .toString();
  }
}

class FoodServicesNoteBuilder implements Builder<FoodServicesNote, FoodServicesNoteBuilder> {
  _$FoodServicesNote _$v;

  String _date;

  String get date => _$this._date;

  set date(String date) => _$this._date = date;

  String _outletName;

  String get outletName => _$this._outletName;

  set outletName(String outletName) => _$this._outletName = outletName;

  int _outletId;

  int get outletId => _$this._outletId;

  set outletId(int outletId) => _$this._outletId = outletId;

  String _note;

  String get note => _$this._note;

  set note(String note) => _$this._note = note;

  FoodServicesNoteBuilder();

  FoodServicesNoteBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _outletName = _$v.outletName;
      _outletId = _$v.outletId;
      _note = _$v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodServicesNote other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesNote;
  }

  @override
  void update(void updates(FoodServicesNoteBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesNote build() {
    final _$result = _$v ??
        new _$FoodServicesNote._(
            date: date, outletName: outletName, outletId: outletId, note: note);
    replace(_$result);
    return _$result;
  }
}
