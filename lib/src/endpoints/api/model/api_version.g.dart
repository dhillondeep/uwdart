// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_version.dart';

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

Serializer<ApiVersion> _$apiVersionSerializer = new _$ApiVersionSerializer();

class _$ApiVersionSerializer implements StructuredSerializer<ApiVersion> {
  @override
  final Iterable<Type> types = const [ApiVersion, _$ApiVersion];
  @override
  final String wireName = 'ApiVersion';

  @override
  Iterable serialize(Serializers serializers, ApiVersion object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.version != null) {
      result
        ..add('version')
        ..add(serializers.serialize(object.version, specifiedType: const FullType(double)));
    }
    if (object.releaseDate != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(object.releaseDate, specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  ApiVersion deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ApiVersionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'version':
          result.version =
              serializers.deserialize(value, specifiedType: const FullType(double)) as double;
          break;
        case 'release_date':
          result.releaseDate =
              serializers.deserialize(value, specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ApiVersion extends ApiVersion {
  @override
  final double version;
  @override
  final String releaseDate;

  factory _$ApiVersion([void updates(ApiVersionBuilder b)]) =>
      (new ApiVersionBuilder()..update(updates)).build();

  _$ApiVersion._({this.version, this.releaseDate}) : super._();

  @override
  ApiVersion rebuild(void updates(ApiVersionBuilder b)) => (toBuilder()..update(updates)).build();

  @override
  ApiVersionBuilder toBuilder() => new ApiVersionBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ApiVersion) return false;
    return version == other.version && releaseDate == other.releaseDate;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, version.hashCode), releaseDate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiVersion')
          ..add('version', version)
          ..add('releaseDate', releaseDate))
        .toString();
  }
}

class ApiVersionBuilder implements Builder<ApiVersion, ApiVersionBuilder> {
  _$ApiVersion _$v;

  double _version;

  double get version => _$this._version;

  set version(double version) => _$this._version = version;

  String _releaseDate;

  String get releaseDate => _$this._releaseDate;

  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  ApiVersionBuilder();

  ApiVersionBuilder get _$this {
    if (_$v != null) {
      _version = _$v.version;
      _releaseDate = _$v.releaseDate;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiVersion other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ApiVersion;
  }

  @override
  void update(void updates(ApiVersionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiVersion build() {
    final _$result = _$v ?? new _$ApiVersion._(version: version, releaseDate: releaseDate);
    replace(_$result);
    return _$result;
  }
}
