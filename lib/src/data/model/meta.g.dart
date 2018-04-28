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
    ];
    if (object.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(object.version, specifiedType: const FullType(int)));
    }
    if (object.methodId != null) {
      result
        ..add('methodId')
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
        case 'version':
          result.version =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'methodId':
          result.methodId =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'message':
          result.message =
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
  final int version;
  @override
  final int methodId;
  @override
  final String message;

  factory _$Meta([void updates(MetaBuilder b)]) => (new MetaBuilder()..update(updates)).build();

  _$Meta._({this.requests, this.timestamp, this.status, this.version, this.methodId, this.message})
      : super._() {
    if (requests == null) throw new BuiltValueNullFieldError('Meta', 'requests');
    if (timestamp == null) throw new BuiltValueNullFieldError('Meta', 'timestamp');
    if (status == null) throw new BuiltValueNullFieldError('Meta', 'status');
    if (message == null) throw new BuiltValueNullFieldError('Meta', 'message');
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
        version == other.version &&
        methodId == other.methodId &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, requests.hashCode), timestamp.hashCode), status.hashCode),
                version.hashCode),
            methodId.hashCode),
        message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Meta')
          ..add('requests', requests)
          ..add('timestamp', timestamp)
          ..add('status', status)
          ..add('version', version)
          ..add('methodId', methodId)
          ..add('message', message))
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

  int _version;

  int get version => _$this._version;

  set version(int version) => _$this._version = version;

  int _methodId;

  int get methodId => _$this._methodId;

  set methodId(int methodId) => _$this._methodId = methodId;

  String _message;

  String get message => _$this._message;

  set message(String message) => _$this._message = message;

  MetaBuilder();

  MetaBuilder get _$this {
    if (_$v != null) {
      _requests = _$v.requests;
      _timestamp = _$v.timestamp;
      _status = _$v.status;
      _version = _$v.version;
      _methodId = _$v.methodId;
      _message = _$v.message;
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
    final _$result = _$v ??
        new _$Meta._(
            requests: requests,
            timestamp: timestamp,
            status: status,
            version: version,
            methodId: methodId,
            message: message);
    replace(_$result);
    return _$result;
  }
}
