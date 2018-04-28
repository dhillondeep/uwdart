// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodservices_menu.dart';

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

Serializer<FoodServicesMenu> _$foodServicesMenuSerializer = new _$FoodServicesMenuSerializer();
Serializer<FoodServicesMenuOutlet> _$foodServicesMenuOutletSerializer =
    new _$FoodServicesMenuOutletSerializer();
Serializer<FoodServicesOutletMenu> _$foodServicesOutletMenuSerializer =
    new _$FoodServicesOutletMenuSerializer();
Serializer<FoodServicesMeal> _$foodServicesMealSerializer = new _$FoodServicesMealSerializer();
Serializer<FoodServicesMenuItem> _$foodServicesMenuItemSerializer =
    new _$FoodServicesMenuItemSerializer();
Serializer<FoodServicesDate> _$foodServicesDateSerializer = new _$FoodServicesDateSerializer();

class _$FoodServicesMenuSerializer implements StructuredSerializer<FoodServicesMenu> {
  @override
  final Iterable<Type> types = const [FoodServicesMenu, _$FoodServicesMenu];
  @override
  final String wireName = 'FoodServicesMenu';

  @override
  Iterable serialize(Serializers serializers, FoodServicesMenu object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date, specifiedType: const FullType(FoodServicesDate)));
    }
    if (object.outlets != null) {
      result
        ..add('outlets')
        ..add(serializers.serialize(object.outlets,
            specifiedType:
                const FullType(BuiltList, const [const FullType(FoodServicesMenuOutlet)])));
    }

    return result;
  }

  @override
  FoodServicesMenu deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesMenuBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date.replace(serializers.deserialize(value,
              specifiedType: const FullType(FoodServicesDate)) as FoodServicesDate);
          break;
        case 'outlets':
          result.outlets.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(FoodServicesMenuOutlet)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesMenuOutletSerializer implements StructuredSerializer<FoodServicesMenuOutlet> {
  @override
  final Iterable<Type> types = const [FoodServicesMenuOutlet, _$FoodServicesMenuOutlet];
  @override
  final String wireName = 'FoodServicesMenuOutlet';

  @override
  Iterable serialize(Serializers serializers, FoodServicesMenuOutlet object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.menu != null) {
      result
        ..add('menu')
        ..add(serializers.serialize(object.menu,
            specifiedType:
                const FullType(BuiltList, const [const FullType(FoodServicesOutletMenu)])));
    }

    return result;
  }

  @override
  FoodServicesMenuOutlet deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesMenuOutletBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'outlet_name':
          result.outletName =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'outlet_id':
          result.outletId =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'menu':
          result.menu.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(FoodServicesOutletMenu)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesOutletMenuSerializer implements StructuredSerializer<FoodServicesOutletMenu> {
  @override
  final Iterable<Type> types = const [FoodServicesOutletMenu, _$FoodServicesOutletMenu];
  @override
  final String wireName = 'FoodServicesOutletMenu';

  @override
  Iterable serialize(Serializers serializers, FoodServicesOutletMenu object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date, specifiedType: const FullType(String)));
    }
    if (object.day != null) {
      result
        ..add('day')
        ..add(serializers.serialize(object.day, specifiedType: const FullType(String)));
    }
    if (object.meals != null) {
      result
        ..add('meals')
        ..add(serializers.serialize(object.meals, specifiedType: const FullType(FoodServicesMeal)));
    }
    if (object.notes != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(object.notes, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FoodServicesOutletMenu deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesOutletMenuBuilder();

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
        case 'day':
          result.day =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'meals':
          result.meals.replace(serializers.deserialize(value,
              specifiedType: const FullType(FoodServicesMeal)) as FoodServicesMeal);
          break;
        case 'notes':
          result.notes =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesMealSerializer implements StructuredSerializer<FoodServicesMeal> {
  @override
  final Iterable<Type> types = const [FoodServicesMeal, _$FoodServicesMeal];
  @override
  final String wireName = 'FoodServicesMeal';

  @override
  Iterable serialize(Serializers serializers, FoodServicesMeal object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.lunch != null) {
      result
        ..add('lunch')
        ..add(serializers.serialize(object.lunch,
            specifiedType:
                const FullType(BuiltList, const [const FullType(FoodServicesMenuItem)])));
    }
    if (object.dinner != null) {
      result
        ..add('dinner')
        ..add(serializers.serialize(object.dinner,
            specifiedType:
                const FullType(BuiltList, const [const FullType(FoodServicesMenuItem)])));
    }

    return result;
  }

  @override
  FoodServicesMeal deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesMealBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'lunch':
          result.lunch.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(FoodServicesMenuItem)]))
              as BuiltList);
          break;
        case 'dinner':
          result.dinner.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(FoodServicesMenuItem)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesMenuItemSerializer implements StructuredSerializer<FoodServicesMenuItem> {
  @override
  final Iterable<Type> types = const [FoodServicesMenuItem, _$FoodServicesMenuItem];
  @override
  final String wireName = 'FoodServicesMenuItem';

  @override
  Iterable serialize(Serializers serializers, FoodServicesMenuItem object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.productName != null) {
      result
        ..add('product_name')
        ..add(serializers.serialize(object.productName, specifiedType: const FullType(String)));
    }
    if (object.dietType != null) {
      result
        ..add('diet_type')
        ..add(serializers.serialize(object.dietType, specifiedType: const FullType(String)));
    }
    if (object.productId != null) {
      result
        ..add('product_id')
        ..add(serializers.serialize(object.productId, specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  FoodServicesMenuItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesMenuItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'product_name':
          result.productName =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'diet_type':
          result.dietType =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'product_id':
          result.productId =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesDateSerializer implements StructuredSerializer<FoodServicesDate> {
  @override
  final Iterable<Type> types = const [FoodServicesDate, _$FoodServicesDate];
  @override
  final String wireName = 'FoodServicesDate';

  @override
  Iterable serialize(Serializers serializers, FoodServicesDate object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.week != null) {
      result
        ..add('week')
        ..add(serializers.serialize(object.week, specifiedType: const FullType(int)));
    }
    if (object.year != null) {
      result
        ..add('year')
        ..add(serializers.serialize(object.year, specifiedType: const FullType(int)));
    }
    if (object.start != null) {
      result
        ..add('start')
        ..add(serializers.serialize(object.start, specifiedType: const FullType(String)));
    }
    if (object.end != null) {
      result
        ..add('end')
        ..add(serializers.serialize(object.end, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FoodServicesDate deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesDateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'week':
          result.week = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'year':
          result.year = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'start':
          result.start =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'end':
          result.end =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesMenu extends FoodServicesMenu {
  @override
  final FoodServicesDate date;
  @override
  final BuiltList<FoodServicesMenuOutlet> outlets;

  factory _$FoodServicesMenu([void updates(FoodServicesMenuBuilder b)]) =>
      (new FoodServicesMenuBuilder()..update(updates)).build();

  _$FoodServicesMenu._({this.date, this.outlets}) : super._();

  @override
  FoodServicesMenu rebuild(void updates(FoodServicesMenuBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesMenuBuilder toBuilder() => new FoodServicesMenuBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesMenu) return false;
    return date == other.date && outlets == other.outlets;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, date.hashCode), outlets.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesMenu')
          ..add('date', date)
          ..add('outlets', outlets))
        .toString();
  }
}

class FoodServicesMenuBuilder implements Builder<FoodServicesMenu, FoodServicesMenuBuilder> {
  _$FoodServicesMenu _$v;

  FoodServicesDateBuilder _date;

  FoodServicesDateBuilder get date => _$this._date ??= new FoodServicesDateBuilder();

  set date(FoodServicesDateBuilder date) => _$this._date = date;

  ListBuilder<FoodServicesMenuOutlet> _outlets;

  ListBuilder<FoodServicesMenuOutlet> get outlets =>
      _$this._outlets ??= new ListBuilder<FoodServicesMenuOutlet>();

  set outlets(ListBuilder<FoodServicesMenuOutlet> outlets) => _$this._outlets = outlets;

  FoodServicesMenuBuilder();

  FoodServicesMenuBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date?.toBuilder();
      _outlets = _$v.outlets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodServicesMenu other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesMenu;
  }

  @override
  void update(void updates(FoodServicesMenuBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesMenu build() {
    _$FoodServicesMenu _$result;
    try {
      _$result = _$v ?? new _$FoodServicesMenu._(date: _date?.build(), outlets: _outlets?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'date';
        _date?.build();
        _$failedField = 'outlets';
        _outlets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('FoodServicesMenu', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FoodServicesMenuOutlet extends FoodServicesMenuOutlet {
  @override
  final String outletName;
  @override
  final int outletId;
  @override
  final BuiltList<FoodServicesOutletMenu> menu;

  factory _$FoodServicesMenuOutlet([void updates(FoodServicesMenuOutletBuilder b)]) =>
      (new FoodServicesMenuOutletBuilder()..update(updates)).build();

  _$FoodServicesMenuOutlet._({this.outletName, this.outletId, this.menu}) : super._();

  @override
  FoodServicesMenuOutlet rebuild(void updates(FoodServicesMenuOutletBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesMenuOutletBuilder toBuilder() => new FoodServicesMenuOutletBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesMenuOutlet) return false;
    return outletName == other.outletName && outletId == other.outletId && menu == other.menu;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, outletName.hashCode), outletId.hashCode), menu.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesMenuOutlet')
          ..add('outletName', outletName)
          ..add('outletId', outletId)
          ..add('menu', menu))
        .toString();
  }
}

class FoodServicesMenuOutletBuilder
    implements Builder<FoodServicesMenuOutlet, FoodServicesMenuOutletBuilder> {
  _$FoodServicesMenuOutlet _$v;

  String _outletName;

  String get outletName => _$this._outletName;

  set outletName(String outletName) => _$this._outletName = outletName;

  int _outletId;

  int get outletId => _$this._outletId;

  set outletId(int outletId) => _$this._outletId = outletId;

  ListBuilder<FoodServicesOutletMenu> _menu;

  ListBuilder<FoodServicesOutletMenu> get menu =>
      _$this._menu ??= new ListBuilder<FoodServicesOutletMenu>();

  set menu(ListBuilder<FoodServicesOutletMenu> menu) => _$this._menu = menu;

  FoodServicesMenuOutletBuilder();

  FoodServicesMenuOutletBuilder get _$this {
    if (_$v != null) {
      _outletName = _$v.outletName;
      _outletId = _$v.outletId;
      _menu = _$v.menu?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodServicesMenuOutlet other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesMenuOutlet;
  }

  @override
  void update(void updates(FoodServicesMenuOutletBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesMenuOutlet build() {
    _$FoodServicesMenuOutlet _$result;
    try {
      _$result = _$v ??
          new _$FoodServicesMenuOutlet._(
              outletName: outletName, outletId: outletId, menu: _menu?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'menu';
        _menu?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('FoodServicesMenuOutlet', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FoodServicesOutletMenu extends FoodServicesOutletMenu {
  @override
  final String date;
  @override
  final String day;
  @override
  final FoodServicesMeal meals;
  @override
  final String notes;

  factory _$FoodServicesOutletMenu([void updates(FoodServicesOutletMenuBuilder b)]) =>
      (new FoodServicesOutletMenuBuilder()..update(updates)).build();

  _$FoodServicesOutletMenu._({this.date, this.day, this.meals, this.notes}) : super._();

  @override
  FoodServicesOutletMenu rebuild(void updates(FoodServicesOutletMenuBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesOutletMenuBuilder toBuilder() => new FoodServicesOutletMenuBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesOutletMenu) return false;
    return date == other.date && day == other.day && meals == other.meals && notes == other.notes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, date.hashCode), day.hashCode), meals.hashCode), notes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesOutletMenu')
          ..add('date', date)
          ..add('day', day)
          ..add('meals', meals)
          ..add('notes', notes))
        .toString();
  }
}

class FoodServicesOutletMenuBuilder
    implements Builder<FoodServicesOutletMenu, FoodServicesOutletMenuBuilder> {
  _$FoodServicesOutletMenu _$v;

  String _date;

  String get date => _$this._date;

  set date(String date) => _$this._date = date;

  String _day;

  String get day => _$this._day;

  set day(String day) => _$this._day = day;

  FoodServicesMealBuilder _meals;

  FoodServicesMealBuilder get meals => _$this._meals ??= new FoodServicesMealBuilder();

  set meals(FoodServicesMealBuilder meals) => _$this._meals = meals;

  String _notes;

  String get notes => _$this._notes;

  set notes(String notes) => _$this._notes = notes;

  FoodServicesOutletMenuBuilder();

  FoodServicesOutletMenuBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _day = _$v.day;
      _meals = _$v.meals?.toBuilder();
      _notes = _$v.notes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodServicesOutletMenu other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesOutletMenu;
  }

  @override
  void update(void updates(FoodServicesOutletMenuBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesOutletMenu build() {
    _$FoodServicesOutletMenu _$result;
    try {
      _$result = _$v ??
          new _$FoodServicesOutletMenu._(
              date: date, day: day, meals: _meals?.build(), notes: notes);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meals';
        _meals?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('FoodServicesOutletMenu', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FoodServicesMeal extends FoodServicesMeal {
  @override
  final BuiltList<FoodServicesMenuItem> lunch;
  @override
  final BuiltList<FoodServicesMenuItem> dinner;

  factory _$FoodServicesMeal([void updates(FoodServicesMealBuilder b)]) =>
      (new FoodServicesMealBuilder()..update(updates)).build();

  _$FoodServicesMeal._({this.lunch, this.dinner}) : super._();

  @override
  FoodServicesMeal rebuild(void updates(FoodServicesMealBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesMealBuilder toBuilder() => new FoodServicesMealBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesMeal) return false;
    return lunch == other.lunch && dinner == other.dinner;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lunch.hashCode), dinner.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesMeal')
          ..add('lunch', lunch)
          ..add('dinner', dinner))
        .toString();
  }
}

class FoodServicesMealBuilder implements Builder<FoodServicesMeal, FoodServicesMealBuilder> {
  _$FoodServicesMeal _$v;

  ListBuilder<FoodServicesMenuItem> _lunch;

  ListBuilder<FoodServicesMenuItem> get lunch =>
      _$this._lunch ??= new ListBuilder<FoodServicesMenuItem>();

  set lunch(ListBuilder<FoodServicesMenuItem> lunch) => _$this._lunch = lunch;

  ListBuilder<FoodServicesMenuItem> _dinner;

  ListBuilder<FoodServicesMenuItem> get dinner =>
      _$this._dinner ??= new ListBuilder<FoodServicesMenuItem>();

  set dinner(ListBuilder<FoodServicesMenuItem> dinner) => _$this._dinner = dinner;

  FoodServicesMealBuilder();

  FoodServicesMealBuilder get _$this {
    if (_$v != null) {
      _lunch = _$v.lunch?.toBuilder();
      _dinner = _$v.dinner?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodServicesMeal other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesMeal;
  }

  @override
  void update(void updates(FoodServicesMealBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesMeal build() {
    _$FoodServicesMeal _$result;
    try {
      _$result = _$v ?? new _$FoodServicesMeal._(lunch: _lunch?.build(), dinner: _dinner?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'lunch';
        _lunch?.build();
        _$failedField = 'dinner';
        _dinner?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('FoodServicesMeal', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FoodServicesMenuItem extends FoodServicesMenuItem {
  @override
  final String productName;
  @override
  final String dietType;
  @override
  final int productId;

  factory _$FoodServicesMenuItem([void updates(FoodServicesMenuItemBuilder b)]) =>
      (new FoodServicesMenuItemBuilder()..update(updates)).build();

  _$FoodServicesMenuItem._({this.productName, this.dietType, this.productId}) : super._();

  @override
  FoodServicesMenuItem rebuild(void updates(FoodServicesMenuItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesMenuItemBuilder toBuilder() => new FoodServicesMenuItemBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesMenuItem) return false;
    return productName == other.productName &&
        dietType == other.dietType &&
        productId == other.productId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, productName.hashCode), dietType.hashCode), productId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesMenuItem')
          ..add('productName', productName)
          ..add('dietType', dietType)
          ..add('productId', productId))
        .toString();
  }
}

class FoodServicesMenuItemBuilder
    implements Builder<FoodServicesMenuItem, FoodServicesMenuItemBuilder> {
  _$FoodServicesMenuItem _$v;

  String _productName;

  String get productName => _$this._productName;

  set productName(String productName) => _$this._productName = productName;

  String _dietType;

  String get dietType => _$this._dietType;

  set dietType(String dietType) => _$this._dietType = dietType;

  int _productId;

  int get productId => _$this._productId;

  set productId(int productId) => _$this._productId = productId;

  FoodServicesMenuItemBuilder();

  FoodServicesMenuItemBuilder get _$this {
    if (_$v != null) {
      _productName = _$v.productName;
      _dietType = _$v.dietType;
      _productId = _$v.productId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodServicesMenuItem other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesMenuItem;
  }

  @override
  void update(void updates(FoodServicesMenuItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesMenuItem build() {
    final _$result = _$v ??
        new _$FoodServicesMenuItem._(
            productName: productName, dietType: dietType, productId: productId);
    replace(_$result);
    return _$result;
  }
}

class _$FoodServicesDate extends FoodServicesDate {
  @override
  final int week;
  @override
  final int year;
  @override
  final String start;
  @override
  final String end;

  factory _$FoodServicesDate([void updates(FoodServicesDateBuilder b)]) =>
      (new FoodServicesDateBuilder()..update(updates)).build();

  _$FoodServicesDate._({this.week, this.year, this.start, this.end}) : super._();

  @override
  FoodServicesDate rebuild(void updates(FoodServicesDateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesDateBuilder toBuilder() => new FoodServicesDateBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesDate) return false;
    return week == other.week && year == other.year && start == other.start && end == other.end;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, week.hashCode), year.hashCode), start.hashCode), end.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesDate')
          ..add('week', week)
          ..add('year', year)
          ..add('start', start)
          ..add('end', end))
        .toString();
  }
}

class FoodServicesDateBuilder implements Builder<FoodServicesDate, FoodServicesDateBuilder> {
  _$FoodServicesDate _$v;

  int _week;

  int get week => _$this._week;

  set week(int week) => _$this._week = week;

  int _year;

  int get year => _$this._year;

  set year(int year) => _$this._year = year;

  String _start;

  String get start => _$this._start;

  set start(String start) => _$this._start = start;

  String _end;

  String get end => _$this._end;

  set end(String end) => _$this._end = end;

  FoodServicesDateBuilder();

  FoodServicesDateBuilder get _$this {
    if (_$v != null) {
      _week = _$v.week;
      _year = _$v.year;
      _start = _$v.start;
      _end = _$v.end;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodServicesDate other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesDate;
  }

  @override
  void update(void updates(FoodServicesDateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesDate build() {
    final _$result =
        _$v ?? new _$FoodServicesDate._(week: week, year: year, start: start, end: end);
    replace(_$result);
    return _$result;
  }
}
