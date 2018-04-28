// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodservices_diet.dart';

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

Serializer<FoodServicesDiet> _$foodServicesDietSerializer = new _$FoodServicesDietSerializer();

class _$FoodServicesDietSerializer implements StructuredSerializer<FoodServicesDiet> {
  @override
  final Iterable<Type> types = const [FoodServicesDiet, _$FoodServicesDiet];
  @override
  final String wireName = 'FoodServicesDiet';

  @override
  Iterable serialize(Serializers serializers, FoodServicesDiet object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.dietId != null) {
      result
        ..add('diet_id')
        ..add(serializers.serialize(object.dietId, specifiedType: const FullType(int)));
    }
    if (object.dietType != null) {
      result
        ..add('diet_type')
        ..add(serializers.serialize(object.dietType, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FoodServicesDiet deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesDietBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'diet_id':
          result.dietId = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'diet_type':
          result.dietType =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesDiet extends FoodServicesDiet {
  @override
  final int dietId;
  @override
  final String dietType;

  factory _$FoodServicesDiet([void updates(FoodServicesDietBuilder b)]) =>
      (new FoodServicesDietBuilder()..update(updates)).build();

  _$FoodServicesDiet._({this.dietId, this.dietType}) : super._();

  @override
  FoodServicesDiet rebuild(void updates(FoodServicesDietBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesDietBuilder toBuilder() => new FoodServicesDietBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesDiet) return false;
    return dietId == other.dietId && dietType == other.dietType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, dietId.hashCode), dietType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesDiet')
          ..add('dietId', dietId)
          ..add('dietType', dietType))
        .toString();
  }
}

class FoodServicesDietBuilder implements Builder<FoodServicesDiet, FoodServicesDietBuilder> {
  _$FoodServicesDiet _$v;

  int _dietId;

  int get dietId => _$this._dietId;

  set dietId(int dietId) => _$this._dietId = dietId;

  String _dietType;

  String get dietType => _$this._dietType;

  set dietType(String dietType) => _$this._dietType = dietType;

  FoodServicesDietBuilder();

  FoodServicesDietBuilder get _$this {
    if (_$v != null) {
      _dietId = _$v.dietId;
      _dietType = _$v.dietType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodServicesDiet other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesDiet;
  }

  @override
  void update(void updates(FoodServicesDietBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesDiet build() {
    final _$result = _$v ?? new _$FoodServicesDiet._(dietId: dietId, dietType: dietType);
    replace(_$result);
    return _$result;
  }
}
