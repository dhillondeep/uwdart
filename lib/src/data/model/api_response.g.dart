// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

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

Serializer<APIResponse> _$aPIResponseSerializer = new _$APIResponseSerializer();

class _$APIResponseSerializer implements StructuredSerializer<APIResponse> {
  @override
  final Iterable<Type> types = const [APIResponse, _$APIResponse];
  @override
  final String wireName = 'APIResponse';

  @override
  Iterable serialize(Serializers serializers, APIResponse object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(List, const [
            const FullType(Map, const [const FullType(String), const FullType(Object)])
          ])),
      'raw',
      serializers.serialize(object.raw, specifiedType: const FullType(String)),
    ];
    if (object.meta != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(object.meta, specifiedType: const FullType(Meta)));
    }

    return result;
  }

  @override
  APIResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new APIResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'meta':
          result.meta
              .replace(serializers.deserialize(value, specifiedType: const FullType(Meta)) as Meta);
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(List, const [
                const FullType(Map, const [const FullType(String), const FullType(Object)])
              ])) as List<Map<String, Object>>;
          break;
        case 'raw':
          result.raw =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$APIResponse extends APIResponse {
  @override
  final Meta meta;
  @override
  final List<Map<String, Object>> data;
  @override
  final String raw;

  factory _$APIResponse([void updates(APIResponseBuilder b)]) =>
      (new APIResponseBuilder()..update(updates)).build();

  _$APIResponse._({this.meta, this.data, this.raw}) : super._() {
    if (data == null) throw new BuiltValueNullFieldError('APIResponse', 'data');
    if (raw == null) throw new BuiltValueNullFieldError('APIResponse', 'raw');
  }

  @override
  APIResponse rebuild(void updates(APIResponseBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  APIResponseBuilder toBuilder() => new APIResponseBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! APIResponse) return false;
    return meta == other.meta && data == other.data && raw == other.raw;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, meta.hashCode), data.hashCode), raw.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('APIResponse')
          ..add('meta', meta)
          ..add('data', data)
          ..add('raw', raw))
        .toString();
  }
}

class APIResponseBuilder implements Builder<APIResponse, APIResponseBuilder> {
  _$APIResponse _$v;

  MetaBuilder _meta;

  MetaBuilder get meta => _$this._meta ??= new MetaBuilder();

  set meta(MetaBuilder meta) => _$this._meta = meta;

  List<Map<String, Object>> _data;

  List<Map<String, Object>> get data => _$this._data;

  set data(List<Map<String, Object>> data) => _$this._data = data;

  String _raw;

  String get raw => _$this._raw;

  set raw(String raw) => _$this._raw = raw;

  APIResponseBuilder();

  APIResponseBuilder get _$this {
    if (_$v != null) {
      _meta = _$v.meta?.toBuilder();
      _data = _$v.data;
      _raw = _$v.raw;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(APIResponse other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$APIResponse;
  }

  @override
  void update(void updates(APIResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$APIResponse build() {
    _$APIResponse _$result;
    try {
      _$result = _$v ?? new _$APIResponse._(meta: _meta?.build(), data: data, raw: raw);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('APIResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
