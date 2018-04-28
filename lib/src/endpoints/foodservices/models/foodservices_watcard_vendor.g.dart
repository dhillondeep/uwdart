// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodservices_watcard_vendor.dart';

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

Serializer<FoodServicesWatcardVendor> _$foodServicesWatcardVendorSerializer =
    new _$FoodServicesWatcardVendorSerializer();

class _$FoodServicesWatcardVendorSerializer
    implements StructuredSerializer<FoodServicesWatcardVendor> {
  @override
  final Iterable<Type> types = const [FoodServicesWatcardVendor, _$FoodServicesWatcardVendor];
  @override
  final String wireName = 'FoodServicesWatcardVendor';

  @override
  Iterable serialize(Serializers serializers, FoodServicesWatcardVendor object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.vendorId != null) {
      result
        ..add('vendor_id')
        ..add(serializers.serialize(object.vendorId, specifiedType: const FullType(int)));
    }
    if (object.vendorName != null) {
      result
        ..add('vendor_name')
        ..add(serializers.serialize(object.vendorName, specifiedType: const FullType(String)));
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
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address, specifiedType: const FullType(String)));
    }
    if (object.phoneNumber != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(object.phoneNumber, specifiedType: const FullType(String)));
    }
    if (object.logo != null) {
      result
        ..add('logo')
        ..add(serializers.serialize(object.logo, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FoodServicesWatcardVendor deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new FoodServicesWatcardVendorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'vendor_id':
          result.vendorId =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'vendor_name':
          result.vendorName =
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
        case 'address':
          result.address =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'logo':
          result.logo =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FoodServicesWatcardVendor extends FoodServicesWatcardVendor {
  @override
  final int vendorId;
  @override
  final String vendorName;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String address;
  @override
  final String phoneNumber;
  @override
  final String logo;

  factory _$FoodServicesWatcardVendor([void updates(FoodServicesWatcardVendorBuilder b)]) =>
      (new FoodServicesWatcardVendorBuilder()..update(updates)).build();

  _$FoodServicesWatcardVendor._(
      {this.vendorId,
      this.vendorName,
      this.latitude,
      this.longitude,
      this.address,
      this.phoneNumber,
      this.logo})
      : super._();

  @override
  FoodServicesWatcardVendor rebuild(void updates(FoodServicesWatcardVendorBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FoodServicesWatcardVendorBuilder toBuilder() =>
      new FoodServicesWatcardVendorBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! FoodServicesWatcardVendor) return false;
    return vendorId == other.vendorId &&
        vendorName == other.vendorName &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        address == other.address &&
        phoneNumber == other.phoneNumber &&
        logo == other.logo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, vendorId.hashCode), vendorName.hashCode), latitude.hashCode),
                    longitude.hashCode),
                address.hashCode),
            phoneNumber.hashCode),
        logo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FoodServicesWatcardVendor')
          ..add('vendorId', vendorId)
          ..add('vendorName', vendorName)
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('address', address)
          ..add('phoneNumber', phoneNumber)
          ..add('logo', logo))
        .toString();
  }
}

class FoodServicesWatcardVendorBuilder
    implements Builder<FoodServicesWatcardVendor, FoodServicesWatcardVendorBuilder> {
  _$FoodServicesWatcardVendor _$v;

  int _vendorId;

  int get vendorId => _$this._vendorId;

  set vendorId(int vendorId) => _$this._vendorId = vendorId;

  String _vendorName;

  String get vendorName => _$this._vendorName;

  set vendorName(String vendorName) => _$this._vendorName = vendorName;

  double _latitude;

  double get latitude => _$this._latitude;

  set latitude(double latitude) => _$this._latitude = latitude;

  double _longitude;

  double get longitude => _$this._longitude;

  set longitude(double longitude) => _$this._longitude = longitude;

  String _address;

  String get address => _$this._address;

  set address(String address) => _$this._address = address;

  String _phoneNumber;

  String get phoneNumber => _$this._phoneNumber;

  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _logo;

  String get logo => _$this._logo;

  set logo(String logo) => _$this._logo = logo;

  FoodServicesWatcardVendorBuilder();

  FoodServicesWatcardVendorBuilder get _$this {
    if (_$v != null) {
      _vendorId = _$v.vendorId;
      _vendorName = _$v.vendorName;
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _address = _$v.address;
      _phoneNumber = _$v.phoneNumber;
      _logo = _$v.logo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FoodServicesWatcardVendor other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$FoodServicesWatcardVendor;
  }

  @override
  void update(void updates(FoodServicesWatcardVendorBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FoodServicesWatcardVendor build() {
    final _$result = _$v ??
        new _$FoodServicesWatcardVendor._(
            vendorId: vendorId,
            vendorName: vendorName,
            latitude: latitude,
            longitude: longitude,
            address: address,
            phoneNumber: phoneNumber,
            logo: logo);
    replace(_$result);
    return _$result;
  }
}
