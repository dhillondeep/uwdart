// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodservices_outlet.dart';

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

Serializer<FoodServicesOutlet> _$foodServicesOutletSerializer =
    new _$FoodServicesOutletSerializer();

class _$FoodServicesOutletSerializer implements StructuredSerializer<FoodServicesOutlet> {
  @override
  final Iterable<Type> types = const [FoodServicesOutlet, _$FoodServicesOutlet];
  @override
  final String wireName = 'FoodServicesOutlet';

  @override
  Iterable serialize(Serializers serializers, FoodServicesOutlet object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.outletId != null) {
      result
        ..add('outlet_id')
        ..add(serializers.serialize(object.outletId, specifiedType: const FullType(int)));
    }
    if (object.outletName != null) {
      result
        ..add('outlet_name')
        ..add(serializers.serialize(object.outletName, specifiedType: const FullType(String)));
    }
    if (object.hasBreakfast != null) {
      result
        ..add('has_breakfast')
        ..add(serializers.serialize(object.hasBreakfast, specifiedType: const FullType(int)));
    }
    if (object.hasLunch != null) {
      result
        ..add('has_lunch')
        ..add(serializers.serialize(object.hasLunch, specifiedType: const FullType(int)));
    }
    if (object.hasDinner != null) {
      result
        ..add('has_dinner')
        ..add(serializers.serialize(object.hasDinner, specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  FoodServicesOutlet deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesOutletBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'outlet_id':
          result.outletId =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'outlet_name':
          result.outletName =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'has_breakfast':
          result.hasBreakfast =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'has_lunch':
          result.hasLunch =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'has_dinner':
          result.hasDinner =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesOutlet extends FoodServicesOutlet {
  @override
  final int outletId;
  @override
  final String outletName;
  @override
  final int hasBreakfast;
  @override
  final int hasLunch;
  @override
  final int hasDinner;

  factory _$FoodServicesOutlet([void updates(FoodServicesOutletBuilder b)]) =>
      (new FoodServicesOutletBuilder()..update(updates)).build();

  _$FoodServicesOutlet._(
      {this.outletId, this.outletName, this.hasBreakfast, this.hasLunch, this.hasDinner})
      : super._();

  @override
  FoodServicesOutlet rebuild(void updates(FoodServicesOutletBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesOutletBuilder toBuilder() => new FoodServicesOutletBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesOutlet) return false;
    return outletId == other.outletId &&
        outletName == other.outletName &&
        hasBreakfast == other.hasBreakfast &&
        hasLunch == other.hasLunch &&
        hasDinner == other.hasDinner;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, outletId.hashCode), outletName.hashCode), hasBreakfast.hashCode),
            hasLunch.hashCode),
        hasDinner.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesOutlet')
          ..add('outletId', outletId)
          ..add('outletName', outletName)
          ..add('hasBreakfast', hasBreakfast)
          ..add('hasLunch', hasLunch)
          ..add('hasDinner', hasDinner))
        .toString();
  }
}

class FoodServicesOutletBuilder implements Builder<FoodServicesOutlet, FoodServicesOutletBuilder> {
  _$FoodServicesOutlet _$v;

  int _outletId;

  int get outletId => _$this._outletId;

  set outletId(int outletId) => _$this._outletId = outletId;

  String _outletName;

  String get outletName => _$this._outletName;

  set outletName(String outletName) => _$this._outletName = outletName;

  int _hasBreakfast;

  int get hasBreakfast => _$this._hasBreakfast;

  set hasBreakfast(int hasBreakfast) => _$this._hasBreakfast = hasBreakfast;

  int _hasLunch;

  int get hasLunch => _$this._hasLunch;

  set hasLunch(int hasLunch) => _$this._hasLunch = hasLunch;

  int _hasDinner;

  int get hasDinner => _$this._hasDinner;

  set hasDinner(int hasDinner) => _$this._hasDinner = hasDinner;

  FoodServicesOutletBuilder();

  FoodServicesOutletBuilder get _$this {
    if (_$v != null) {
      _outletId = _$v.outletId;
      _outletName = _$v.outletName;
      _hasBreakfast = _$v.hasBreakfast;
      _hasLunch = _$v.hasLunch;
      _hasDinner = _$v.hasDinner;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodServicesOutlet other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesOutlet;
  }

  @override
  void update(void updates(FoodServicesOutletBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesOutlet build() {
    final _$result = _$v ??
        new _$FoodServicesOutlet._(
            outletId: outletId,
            outletName: outletName,
            hasBreakfast: hasBreakfast,
            hasLunch: hasLunch,
            hasDinner: hasDinner);
    replace(_$result);
    return _$result;
  }
}
