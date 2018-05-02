// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

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

Serializer<Meta> _$metaSerializer = new _$MetaSerializer();
Serializer<MetaMethod> _$metaMethodSerializer = new _$MetaMethodSerializer();

class _$MetaSerializer implements StructuredSerializer<Meta> {
  @override
  final Iterable<Type> types = const [Meta, _$Meta];
  @override
  final String wireName = 'Meta';

  @override
  Iterable serialize(Serializers serializers, Meta object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'requests',
      serializers.serialize(object.requests, specifiedType: const FullType(int)),
      'timestamp',
      serializers.serialize(object.timestamp, specifiedType: const FullType(int)),
      'status',
      serializers.serialize(object.status, specifiedType: const FullType(int)),
      'message',
      serializers.serialize(object.message, specifiedType: const FullType(String)),
      'method',
      serializers.serialize(object.method, specifiedType: const FullType(MetaMethod)),
    ];
    if (object.methodId != null) {
      result
        ..add('method_id')
        ..add(serializers.serialize(object.methodId, specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  Meta deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new MetaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'requests':
          result.requests =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'timestamp':
          result.timestamp =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'method_id':
          result.methodId =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'method':
          result.method.replace(serializers.deserialize(value,
              specifiedType: const FullType(MetaMethod)) as MetaMethod);
          break;
      }
    }

    return result.build();
  }
}

class _$MetaMethodSerializer implements StructuredSerializer<MetaMethod> {
  @override
  final Iterable<Type> types = const [MetaMethod, _$MetaMethod];
  @override
  final String wireName = 'MetaMethod';

  @override
  Iterable serialize(Serializers serializers, MetaMethod object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.disclaimer != null) {
      result
        ..add('disclaimer')
        ..add(serializers.serialize(object.disclaimer, specifiedType: const FullType(String)));
    }
    if (object.license != null) {
      result
        ..add('license')
        ..add(serializers.serialize(object.license, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  MetaMethod deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new MetaMethodBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'disclaimer':
          result.disclaimer =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'license':
          result.license =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Meta extends Meta {
  @override
  final int requests;
  @override
  final int timestamp;
  @override
  final int status;
  @override
  final String message;
  @override
  final int methodId;
  @override
  final MetaMethod method;

  factory _$Meta([void updates(MetaBuilder b)]) => (new MetaBuilder()..update(updates)).build();

  _$Meta._({this.requests, this.timestamp, this.status, this.message, this.methodId, this.method})
      : super._() {
    if (requests == null) throw new BuiltValueNullFieldError('Meta', 'requests');
    if (timestamp == null) throw new BuiltValueNullFieldError('Meta', 'timestamp');
    if (status == null) throw new BuiltValueNullFieldError('Meta', 'status');
    if (message == null) throw new BuiltValueNullFieldError('Meta', 'message');
    if (method == null) throw new BuiltValueNullFieldError('Meta', 'method');
  }

  @override
  Meta rebuild(void updates(MetaBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  MetaBuilder toBuilder() => new MetaBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Meta) return false;
    return requests == other.requests &&
        timestamp == other.timestamp &&
        status == other.status &&
        message == other.message &&
        methodId == other.methodId &&
        method == other.method;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, requests.hashCode), timestamp.hashCode), status.hashCode),
                message.hashCode),
            methodId.hashCode),
        method.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Meta')
          ..add('requests', requests)
          ..add('timestamp', timestamp)
          ..add('status', status)
          ..add('message', message)
          ..add('methodId', methodId)
          ..add('method', method))
        .toString();
  }
}

class MetaBuilder implements Builder<Meta, MetaBuilder> {
  _$Meta _$v;

  int _requests;

  int get requests => _$this._requests;

  set requests(int requests) => _$this._requests = requests;

  int _timestamp;

  int get timestamp => _$this._timestamp;

  set timestamp(int timestamp) => _$this._timestamp = timestamp;

  int _status;

  int get status => _$this._status;

  set status(int status) => _$this._status = status;

  String _message;

  String get message => _$this._message;

  set message(String message) => _$this._message = message;

  int _methodId;

  int get methodId => _$this._methodId;

  set methodId(int methodId) => _$this._methodId = methodId;

  MetaMethodBuilder _method;

  MetaMethodBuilder get method => _$this._method ??= new MetaMethodBuilder();

  set method(MetaMethodBuilder method) => _$this._method = method;

  MetaBuilder();

  MetaBuilder get _$this {
    if (_$v != null) {
      _requests = _$v.requests;
      _timestamp = _$v.timestamp;
      _status = _$v.status;
      _message = _$v.message;
      _methodId = _$v.methodId;
      _method = _$v.method?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Meta other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Meta;
  }

  @override
  void update(void updates(MetaBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Meta build() {
    _$Meta _$result;
    try {
      _$result = _$v ??
          new _$Meta._(
              requests: requests,
              timestamp: timestamp,
              status: status,
              message: message,
              methodId: methodId,
              method: method.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'method';
        method.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('Meta', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MetaMethod extends MetaMethod {
  @override
  final String disclaimer;
  @override
  final String license;

  factory _$MetaMethod([void updates(MetaMethodBuilder b)]) =>
      (new MetaMethodBuilder()..update(updates)).build();

  _$MetaMethod._({this.disclaimer, this.license}) : super._();

  @override
  MetaMethod rebuild(void updates(MetaMethodBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  MetaMethodBuilder toBuilder() => new MetaMethodBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! MetaMethod) return false;
    return disclaimer == other.disclaimer && license == other.license;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, disclaimer.hashCode), license.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MetaMethod')
          ..add('disclaimer', disclaimer)
          ..add('license', license))
        .toString();
  }
}

class MetaMethodBuilder implements Builder<MetaMethod, MetaMethodBuilder> {
  _$MetaMethod _$v;

  String _disclaimer;

  String get disclaimer => _$this._disclaimer;

  set disclaimer(String disclaimer) => _$this._disclaimer = disclaimer;

  String _license;

  String get license => _$this._license;

  set license(String license) => _$this._license = license;

  MetaMethodBuilder();

  MetaMethodBuilder get _$this {
    if (_$v != null) {
      _disclaimer = _$v.disclaimer;
      _license = _$v.license;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MetaMethod other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$MetaMethod;
  }

  @override
  void update(void updates(MetaMethodBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MetaMethod build() {
    final _$result = _$v ?? new _$MetaMethod._(disclaimer: disclaimer, license: license);
    replace(_$result);
    return _$result;
  }
}
