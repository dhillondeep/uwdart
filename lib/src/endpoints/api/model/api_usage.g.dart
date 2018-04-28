// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_usage.dart';

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

Serializer<ApiUsage> _$apiUsageSerializer = new _$ApiUsageSerializer();

class _$ApiUsageSerializer implements StructuredSerializer<ApiUsage> {
  @override
  final Iterable<Type> types = const [ApiUsage, _$ApiUsage];
  @override
  final String wireName = 'ApiUsage';

  @override
  Iterable serialize(Serializers serializers, ApiUsage object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name, specifiedType: const FullType(String)));
    }
    if (object.apiKey != null) {
      result
        ..add('api_key')
        ..add(serializers.serialize(object.apiKey, specifiedType: const FullType(String)));
    }
    if (object.monthlyCalls != null) {
      result
        ..add('monthly_calls')
        ..add(serializers.serialize(object.monthlyCalls, specifiedType: const FullType(int)));
    }
    if (object.totalCalls != null) {
      result
        ..add('total_calls')
        ..add(serializers.serialize(object.totalCalls, specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  ApiUsage deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ApiUsageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'api_key':
          result.apiKey =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'monthly_calls':
          result.monthlyCalls =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'total_calls':
          result.totalCalls =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ApiUsage extends ApiUsage {
  @override
  final String name;
  @override
  final String apiKey;
  @override
  final int monthlyCalls;
  @override
  final int totalCalls;

  factory _$ApiUsage([void updates(ApiUsageBuilder b)]) =>
      (new ApiUsageBuilder()..update(updates)).build();

  _$ApiUsage._({this.name, this.apiKey, this.monthlyCalls, this.totalCalls}) : super._();

  @override
  ApiUsage rebuild(void updates(ApiUsageBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  ApiUsageBuilder toBuilder() => new ApiUsageBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ApiUsage) return false;
    return name == other.name &&
        apiKey == other.apiKey &&
        monthlyCalls == other.monthlyCalls &&
        totalCalls == other.totalCalls;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, name.hashCode), apiKey.hashCode), monthlyCalls.hashCode),
        totalCalls.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiUsage')
          ..add('name', name)
          ..add('apiKey', apiKey)
          ..add('monthlyCalls', monthlyCalls)
          ..add('totalCalls', totalCalls))
        .toString();
  }
}

class ApiUsageBuilder implements Builder<ApiUsage, ApiUsageBuilder> {
  _$ApiUsage _$v;

  String _name;

  String get name => _$this._name;

  set name(String name) => _$this._name = name;

  String _apiKey;

  String get apiKey => _$this._apiKey;

  set apiKey(String apiKey) => _$this._apiKey = apiKey;

  int _monthlyCalls;

  int get monthlyCalls => _$this._monthlyCalls;

  set monthlyCalls(int monthlyCalls) => _$this._monthlyCalls = monthlyCalls;

  int _totalCalls;

  int get totalCalls => _$this._totalCalls;

  set totalCalls(int totalCalls) => _$this._totalCalls = totalCalls;

  ApiUsageBuilder();

  ApiUsageBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _apiKey = _$v.apiKey;
      _monthlyCalls = _$v.monthlyCalls;
      _totalCalls = _$v.totalCalls;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiUsage other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ApiUsage;
  }

  @override
  void update(void updates(ApiUsageBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiUsage build() {
    final _$result = _$v ??
        new _$ApiUsage._(
            name: name, apiKey: apiKey, monthlyCalls: monthlyCalls, totalCalls: totalCalls);
    replace(_$result);
    return _$result;
  }
}
