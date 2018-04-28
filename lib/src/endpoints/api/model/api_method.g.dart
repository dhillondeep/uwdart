// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_method.dart';

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

Serializer<ApiMethod> _$apiMethodSerializer = new _$ApiMethodSerializer();

class _$ApiMethodSerializer implements StructuredSerializer<ApiMethod> {
  @override
  final Iterable<Type> types = const [ApiMethod, _$ApiMethod];
  @override
  final String wireName = 'ApiMethod';

  @override
  Iterable serialize(Serializers serializers, ApiMethod object,
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
    if (object.parameters != null) {
      result
        ..add('parameters')
        ..add(serializers.serialize(object.parameters,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  ApiMethod deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ApiMethodBuilder();

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
        case 'service_id':
          result.serviceId =
              serializers.deserialize(value, specifiedType: const FullType(int)) as int;
          break;
        case 'service_name':
          result.serviceName =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
        case 'parameters':
          result.parameters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ApiMethod extends ApiMethod {
  @override
  final int methodId;
  @override
  final String methodUrl;
  @override
  final int serviceId;
  @override
  final String serviceName;
  @override
  final BuiltList<String> parameters;

  factory _$ApiMethod([void updates(ApiMethodBuilder b)]) =>
      (new ApiMethodBuilder()..update(updates)).build();

  _$ApiMethod._({this.methodId, this.methodUrl, this.serviceId, this.serviceName, this.parameters})
      : super._();

  @override
  ApiMethod rebuild(void updates(ApiMethodBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  ApiMethodBuilder toBuilder() => new ApiMethodBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ApiMethod) return false;
    return methodId == other.methodId &&
        methodUrl == other.methodUrl &&
        serviceId == other.serviceId &&
        serviceName == other.serviceName &&
        parameters == other.parameters;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, methodId.hashCode), methodUrl.hashCode), serviceId.hashCode),
            serviceName.hashCode),
        parameters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiMethod')
          ..add('methodId', methodId)
          ..add('methodUrl', methodUrl)
          ..add('serviceId', serviceId)
          ..add('serviceName', serviceName)
          ..add('parameters', parameters))
        .toString();
  }
}

class ApiMethodBuilder implements Builder<ApiMethod, ApiMethodBuilder> {
  _$ApiMethod _$v;

  int _methodId;

  int get methodId => _$this._methodId;

  set methodId(int methodId) => _$this._methodId = methodId;

  String _methodUrl;

  String get methodUrl => _$this._methodUrl;

  set methodUrl(String methodUrl) => _$this._methodUrl = methodUrl;

  int _serviceId;

  int get serviceId => _$this._serviceId;

  set serviceId(int serviceId) => _$this._serviceId = serviceId;

  String _serviceName;

  String get serviceName => _$this._serviceName;

  set serviceName(String serviceName) => _$this._serviceName = serviceName;

  ListBuilder<String> _parameters;

  ListBuilder<String> get parameters => _$this._parameters ??= new ListBuilder<String>();

  set parameters(ListBuilder<String> parameters) => _$this._parameters = parameters;

  ApiMethodBuilder();

  ApiMethodBuilder get _$this {
    if (_$v != null) {
      _methodId = _$v.methodId;
      _methodUrl = _$v.methodUrl;
      _serviceId = _$v.serviceId;
      _serviceName = _$v.serviceName;
      _parameters = _$v.parameters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiMethod other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ApiMethod;
  }

  @override
  void update(void updates(ApiMethodBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiMethod build() {
    _$ApiMethod _$result;
    try {
      _$result = _$v ??
          new _$ApiMethod._(
              methodId: methodId,
              methodUrl: methodUrl,
              serviceId: serviceId,
              serviceName: serviceName,
              parameters: _parameters?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'parameters';
        _parameters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('ApiMethod', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
