// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

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

Serializer<ApiService> _$apiServiceSerializer = new _$ApiServiceSerializer();
Serializer<ApiServiceMethod> _$apiServiceMethodSerializer = new _$ApiServiceMethodSerializer();

class _$ApiServiceSerializer implements StructuredSerializer<ApiService> {
  @override
  final Iterable<Type> types = const [ApiService, _$ApiService];
  @override
  final String wireName = 'ApiService';

  @override
  Iterable serialize(Serializers serializers, ApiService object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.serviceId != null) {
      result
        ..add('service_id')
        ..add(serializers.serialize(object.serviceId, specifiedType: const FullType(int)));
    }
    if (object.serviceName != null) {
      result
        ..add('service_name')
        ..add(serializers.serialize(object.serviceName, specifiedType: const FullType(String)));
    }
    if (object.serviceUrl != null) {
      result
        ..add('service_url')
        ..add(serializers.serialize(object.serviceUrl, specifiedType: const FullType(String)));
    }
    if (object.methods != null) {
      result
        ..add('methods')
        ..add(serializers.serialize(object.methods,
            specifiedType: const FullType(BuiltList, const [const FullType(ApiServiceMethod)])));
    }

    return result;
  }

  @override
  ApiService deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ApiServiceBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'service_id':
          result.serviceId =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'service_name':
          result.serviceName =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'service_url':
          result.serviceUrl =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'methods':
          result.methods.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(ApiServiceMethod)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ApiServiceMethodSerializer implements StructuredSerializer<ApiServiceMethod> {
  @override
  final Iterable<Type> types = const [ApiServiceMethod, _$ApiServiceMethod];
  @override
  final String wireName = 'ApiServiceMethod';

  @override
  Iterable serialize(Serializers serializers, ApiServiceMethod object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.methodId != null) {
      result
        ..add('method_id')
        ..add(serializers.serialize(object.methodId, specifiedType: const FullType(int)));
    }
    if (object.methodUrl != null) {
      result
        ..add('method_url')
        ..add(serializers.serialize(object.methodUrl, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ApiServiceMethod deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ApiServiceMethodBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'method_id':
          result.methodId =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'method_url':
          result.methodUrl =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ApiService extends ApiService {
  @override
  final int serviceId;
  @override
  final String serviceName;
  @override
  final String serviceUrl;
  @override
  final BuiltList<ApiServiceMethod> methods;

  factory _$ApiService([void updates(ApiServiceBuilder b)]) =>
      (new ApiServiceBuilder()..update(updates)).build();

  _$ApiService._({this.serviceId, this.serviceName, this.serviceUrl, this.methods}) : super._();

  @override
  ApiService rebuild(void updates(ApiServiceBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  ApiServiceBuilder toBuilder() => new ApiServiceBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ApiService) return false;
    return serviceId == other.serviceId &&
        serviceName == other.serviceName &&
        serviceUrl == other.serviceUrl &&
        methods == other.methods;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, serviceId.hashCode), serviceName.hashCode), serviceUrl.hashCode),
        methods.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiService')
          ..add('serviceId', serviceId)
          ..add('serviceName', serviceName)
          ..add('serviceUrl', serviceUrl)
          ..add('methods', methods))
        .toString();
  }
}

class ApiServiceBuilder implements Builder<ApiService, ApiServiceBuilder> {
  _$ApiService _$v;

  int _serviceId;

  int get serviceId => _$this._serviceId;

  set serviceId(int serviceId) => _$this._serviceId = serviceId;

  String _serviceName;

  String get serviceName => _$this._serviceName;

  set serviceName(String serviceName) => _$this._serviceName = serviceName;

  String _serviceUrl;

  String get serviceUrl => _$this._serviceUrl;

  set serviceUrl(String serviceUrl) => _$this._serviceUrl = serviceUrl;

  ListBuilder<ApiServiceMethod> _methods;

  ListBuilder<ApiServiceMethod> get methods =>
      _$this._methods ??= new ListBuilder<ApiServiceMethod>();

  set methods(ListBuilder<ApiServiceMethod> methods) => _$this._methods = methods;

  ApiServiceBuilder();

  ApiServiceBuilder get _$this {
    if (_$v != null) {
      _serviceId = _$v.serviceId;
      _serviceName = _$v.serviceName;
      _serviceUrl = _$v.serviceUrl;
      _methods = _$v.methods?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiService other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ApiService;
  }

  @override
  void update(void updates(ApiServiceBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiService build() {
    _$ApiService _$result;
    try {
      _$result = _$v ??
          new _$ApiService._(
              serviceId: serviceId,
              serviceName: serviceName,
              serviceUrl: serviceUrl,
              methods: _methods?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'methods';
        _methods?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('ApiService', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ApiServiceMethod extends ApiServiceMethod {
  @override
  final int methodId;
  @override
  final String methodUrl;

  factory _$ApiServiceMethod([void updates(ApiServiceMethodBuilder b)]) =>
      (new ApiServiceMethodBuilder()..update(updates)).build();

  _$ApiServiceMethod._({this.methodId, this.methodUrl}) : super._();

  @override
  ApiServiceMethod rebuild(void updates(ApiServiceMethodBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiServiceMethodBuilder toBuilder() => new ApiServiceMethodBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ApiServiceMethod) return false;
    return methodId == other.methodId && methodUrl == other.methodUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, methodId.hashCode), methodUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiServiceMethod')
          ..add('methodId', methodId)
          ..add('methodUrl', methodUrl))
        .toString();
  }
}

class ApiServiceMethodBuilder implements Builder<ApiServiceMethod, ApiServiceMethodBuilder> {
  _$ApiServiceMethod _$v;

  int _methodId;

  int get methodId => _$this._methodId;

  set methodId(int methodId) => _$this._methodId = methodId;

  String _methodUrl;

  String get methodUrl => _$this._methodUrl;

  set methodUrl(String methodUrl) => _$this._methodUrl = methodUrl;

  ApiServiceMethodBuilder();

  ApiServiceMethodBuilder get _$this {
    if (_$v != null) {
      _methodId = _$v.methodId;
      _methodUrl = _$v.methodUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiServiceMethod other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ApiServiceMethod;
  }

  @override
  void update(void updates(ApiServiceMethodBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiServiceMethod build() {
    final _$result = _$v ?? new _$ApiServiceMethod._(methodId: methodId, methodUrl: methodUrl);
    replace(_$result);
    return _$result;
  }
}
