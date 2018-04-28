// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodservices_location.dart';

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

Serializer<FoodServicesLocation> _$foodServicesLocationSerializer =
    new _$FoodServicesLocationSerializer();
Serializer<FoodServicesLocationAdditional> _$foodServicesLocationAdditionalSerializer =
    new _$FoodServicesLocationAdditionalSerializer();

class _$FoodServicesLocationSerializer implements StructuredSerializer<FoodServicesLocation> {
  @override
  final Iterable<Type> types = const [FoodServicesLocation, _$FoodServicesLocation];
  @override
  final String wireName = 'FoodServicesLocation';

  @override
  Iterable serialize(Serializers serializers, FoodServicesLocation object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.additional != null) {
      result
        ..add('additional')
        ..add(serializers.serialize(object.additional,
            specifiedType: const FullType(FoodServicesLocationAdditional)));
    }
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
    if (object.building != null) {
      result
        ..add('building')
        ..add(serializers.serialize(object.building, specifiedType: const FullType(String)));
    }
    if (object.logo != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(object.logo, specifiedType: const FullType(String)));
    }
    if (object.latitude != null) {
      result
        ..add('latitude')
        ..add(serializers.serialize(object.latitude, specifiedType: const FullType(double)));
    }
    if (object.longitude != null) {
      result
        ..add('longitude')
        ..add(serializers.serialize(object.longitude, specifiedType: const FullType(double)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description, specifiedType: const FullType(String)));
    }
    if (object.notice != null) {
      result
        ..add('notice')
        ..add(serializers.serialize(object.notice, specifiedType: const FullType(String)));
    }
    if (object.isOpenNow != null) {
      result
        ..add('is_open_now')
        ..add(serializers.serialize(object.isOpenNow, specifiedType: const FullType(bool)));
    }
    if (object.openingHours != null) {
      result
        ..add('opening_hours')
        ..add(serializers.serialize(object.openingHours,
            specifiedType: const FullType(UWOpeningHours)));
    }
    if (object.specialHours != null) {
      result
        ..add('special_hours')
        ..add(serializers.serialize(object.specialHours,
            specifiedType: const FullType(BuiltList, const [const FullType(UWSpecialDay)])));
    }
    if (object.datesClosed != null) {
      result
        ..add('dates_closed')
        ..add(serializers.serialize(object.datesClosed,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.is24Hrs != null) {
      result
        ..add('is_24hrs')
        ..add(serializers.serialize(object.is24Hrs, specifiedType: const FullType(bool)));
    }

    return result;
  }

  @override
  FoodServicesLocation deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesLocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'additional':
          result.additional.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FoodServicesLocationAdditional))
              as FoodServicesLocationAdditional);
          break;
        case 'outlet_id':
          result.outletId =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'outlet_name':
          result.outletName =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'building':
          result.building =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'logo':
          result.logo =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'latitude':
          result.latitude =
              serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude =
              serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'description':
          result.description =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'notice':
          result.notice =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'is_open_now':
          result.isOpenNow =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'opening_hours':
          result.openingHours.replace(serializers.deserialize(value,
              specifiedType: const FullType(UWOpeningHours)) as UWOpeningHours);
          break;
        case 'special_hours':
          result.specialHours.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(UWSpecialDay)]))
              as BuiltList);
          break;
        case 'dates_closed':
          result.datesClosed.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'is_24hrs':
          result.is24Hrs =
              serializers.deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesLocationAdditionalSerializer
    implements StructuredSerializer<FoodServicesLocationAdditional> {
  @override
  final Iterable<Type> types = const [
    FoodServicesLocationAdditional,
    _$FoodServicesLocationAdditional
  ];
  @override
  final String wireName = 'FoodServicesLocationAdditional';

  @override
  Iterable serialize(Serializers serializers, FoodServicesLocationAdditional object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.menuUrl != null) {
      result
        ..add('menu_url')
        ..add(serializers.serialize(object.menuUrl, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FoodServicesLocationAdditional deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesLocationAdditionalBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'menu_url':
          result.menuUrl =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesLocation extends FoodServicesLocation {
  @override
  final FoodServicesLocationAdditional additional;
  @override
  final int outletId;
  @override
  final String outletName;
  @override
  final String building;
  @override
  final String logo;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String description;
  @override
  final String notice;
  @override
  final bool isOpenNow;
  @override
  final UWOpeningHours openingHours;
  @override
  final BuiltList<UWSpecialDay> specialHours;
  @override
  final BuiltList<String> datesClosed;
  @override
  final bool is24Hrs;

  factory _$FoodServicesLocation([void updates(FoodServicesLocationBuilder b)]) =>
      (new FoodServicesLocationBuilder()..update(updates)).build();

  _$FoodServicesLocation._(
      {this.additional,
      this.outletId,
      this.outletName,
      this.building,
      this.logo,
      this.latitude,
      this.longitude,
      this.description,
      this.notice,
      this.isOpenNow,
      this.openingHours,
      this.specialHours,
      this.datesClosed,
      this.is24Hrs})
      : super._();

  @override
  FoodServicesLocation rebuild(void updates(FoodServicesLocationBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesLocationBuilder toBuilder() => new FoodServicesLocationBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesLocation) return false;
    return additional == other.additional &&
        outletId == other.outletId &&
        outletName == other.outletName &&
        building == other.building &&
        logo == other.logo &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        description == other.description &&
        notice == other.notice &&
        isOpenNow == other.isOpenNow &&
        openingHours == other.openingHours &&
        specialHours == other.specialHours &&
        datesClosed == other.datesClosed &&
        is24Hrs == other.is24Hrs;
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
                                                    $jc($jc(0, additional.hashCode),
                                                        outletId.hashCode),
                                                    outletName.hashCode),
                                                building.hashCode),
                                            logo.hashCode),
                                        latitude.hashCode),
                                    longitude.hashCode),
                                description.hashCode),
                            notice.hashCode),
                        isOpenNow.hashCode),
                    openingHours.hashCode),
                specialHours.hashCode),
            datesClosed.hashCode),
        is24Hrs.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesLocation')
          ..add('additional', additional)
          ..add('outletId', outletId)
          ..add('outletName', outletName)
          ..add('building', building)
          ..add('logo', logo)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('description', description)
          ..add('notice', notice)
          ..add('isOpenNow', isOpenNow)
          ..add('openingHours', openingHours)
          ..add('specialHours', specialHours)
          ..add('datesClosed', datesClosed)
          ..add('is24Hrs', is24Hrs))
        .toString();
  }
}

class FoodServicesLocationBuilder
    implements Builder<FoodServicesLocation, FoodServicesLocationBuilder>, UWLocationBuilder {
  _$FoodServicesLocation _$v;

  FoodServicesLocationAdditionalBuilder _additional;

  FoodServicesLocationAdditionalBuilder get additional =>
      _$this._additional ??= new FoodServicesLocationAdditionalBuilder();

  set additional(FoodServicesLocationAdditionalBuilder additional) =>
      _$this._additional = additional;

  int _outletId;

  int get outletId => _$this._outletId;

  set outletId(int outletId) => _$this._outletId = outletId;

  String _outletName;

  String get outletName => _$this._outletName;

  set outletName(String outletName) => _$this._outletName = outletName;

  String _building;

  String get building => _$this._building;

  set building(String building) => _$this._building = building;

  String _logo;

  String get logo => _$this._logo;

  set logo(String logo) => _$this._logo = logo;

  double _latitude;

  double get latitude => _$this._latitude;

  set latitude(double latitude) => _$this._latitude = latitude;

  double _longitude;

  double get longitude => _$this._longitude;

  set longitude(double longitude) => _$this._longitude = longitude;

  String _description;

  String get description => _$this._description;

  set description(String description) => _$this._description = description;

  String _notice;

  String get notice => _$this._notice;

  set notice(String notice) => _$this._notice = notice;

  bool _isOpenNow;

  bool get isOpenNow => _$this._isOpenNow;

  set isOpenNow(bool isOpenNow) => _$this._isOpenNow = isOpenNow;

  UWOpeningHoursBuilder _openingHours;

  UWOpeningHoursBuilder get openingHours => _$this._openingHours ??= new UWOpeningHoursBuilder();

  set openingHours(UWOpeningHoursBuilder openingHours) => _$this._openingHours = openingHours;

  ListBuilder<UWSpecialDay> _specialHours;

  ListBuilder<UWSpecialDay> get specialHours =>
      _$this._specialHours ??= new ListBuilder<UWSpecialDay>();

  set specialHours(ListBuilder<UWSpecialDay> specialHours) => _$this._specialHours = specialHours;

  ListBuilder<String> _datesClosed;

  ListBuilder<String> get datesClosed => _$this._datesClosed ??= new ListBuilder<String>();

  set datesClosed(ListBuilder<String> datesClosed) => _$this._datesClosed = datesClosed;

  bool _is24Hrs;

  bool get is24Hrs => _$this._is24Hrs;

  set is24Hrs(bool is24Hrs) => _$this._is24Hrs = is24Hrs;

  FoodServicesLocationBuilder();

  FoodServicesLocationBuilder get _$this {
    if (_$v != null) {
      _additional = _$v.additional?.toBuilder();
      _outletId = _$v.outletId;
      _outletName = _$v.outletName;
      _building = _$v.building;
      _logo = _$v.logo;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _description = _$v.description;
      _notice = _$v.notice;
      _isOpenNow = _$v.isOpenNow;
      _openingHours = _$v.openingHours?.toBuilder();
      _specialHours = _$v.specialHours?.toBuilder();
      _datesClosed = _$v.datesClosed?.toBuilder();
      _is24Hrs = _$v.is24Hrs;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant FoodServicesLocation other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesLocation;
  }

  @override
  void update(void updates(FoodServicesLocationBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesLocation build() {
    _$FoodServicesLocation _$result;
    try {
      _$result = _$v ??
          new _$FoodServicesLocation._(
              additional: _additional?.build(),
              outletId: outletId,
              outletName: outletName,
              building: building,
              logo: logo,
              latitude: latitude,
              longitude: longitude,
              description: description,
              notice: notice,
              isOpenNow: isOpenNow,
              openingHours: _openingHours?.build(),
              specialHours: _specialHours?.build(),
              datesClosed: _datesClosed?.build(),
              is24Hrs: is24Hrs);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'additional';
        _additional?.build();

        _$failedField = 'openingHours';
        _openingHours?.build();
        _$failedField = 'specialHours';
        _specialHours?.build();
        _$failedField = 'datesClosed';
        _datesClosed?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('FoodServicesLocation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FoodServicesLocationAdditional extends FoodServicesLocationAdditional {
  @override
  final String menuUrl;

  factory _$FoodServicesLocationAdditional(
          [void updates(FoodServicesLocationAdditionalBuilder b)]) =>
      (new FoodServicesLocationAdditionalBuilder()..update(updates)).build();

  _$FoodServicesLocationAdditional._({this.menuUrl}) : super._();

  @override
  FoodServicesLocationAdditional rebuild(void updates(FoodServicesLocationAdditionalBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesLocationAdditionalBuilder toBuilder() =>
      new FoodServicesLocationAdditionalBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesLocationAdditional) return false;
    return menuUrl == other.menuUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(0, menuUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesLocationAdditional')..add('menuUrl', menuUrl))
        .toString();
  }
}

class FoodServicesLocationAdditionalBuilder
    implements Builder<FoodServicesLocationAdditional, FoodServicesLocationAdditionalBuilder> {
  _$FoodServicesLocationAdditional _$v;

  String _menuUrl;

  String get menuUrl => _$this._menuUrl;

  set menuUrl(String menuUrl) => _$this._menuUrl = menuUrl;

  FoodServicesLocationAdditionalBuilder();

  FoodServicesLocationAdditionalBuilder get _$this {
    if (_$v != null) {
      _menuUrl = _$v.menuUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodServicesLocationAdditional other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesLocationAdditional;
  }

  @override
  void update(void updates(FoodServicesLocationAdditionalBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesLocationAdditional build() {
    final _$result = _$v ?? new _$FoodServicesLocationAdditional._(menuUrl: menuUrl);
    replace(_$result);
    return _$result;
  }
}
