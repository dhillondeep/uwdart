// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_changelog.dart';

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

Serializer<ApiChangelog> _$apiChangelogSerializer = new _$ApiChangelogSerializer();

class _$ApiChangelogSerializer implements StructuredSerializer<ApiChangelog> {
  @override
  final Iterable<Type> types = const [ApiChangelog, _$ApiChangelog];
  @override
  final String wireName = 'ApiChangelog';

  @override
  Iterable serialize(Serializers serializers, ApiChangelog object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[];
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date, specifiedType: const FullType(String)));
    }
    if (object.changes != null) {
      result
        ..add('changes')
        ..add(serializers.serialize(object.changes,
            specifiedType: const FullType(BuiltList, const [const FullType(String)])));
    }

    return result;
  }

  @override
  ApiChangelog deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new ApiChangelogBuilder();

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
        case 'changes':
          result.changes.replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ApiChangelog extends ApiChangelog {
  @override
  final String date;
  @override
  final BuiltList<String> changes;

  factory _$ApiChangelog([void updates(ApiChangelogBuilder b)]) =>
      (new ApiChangelogBuilder()..update(updates)).build();

  _$ApiChangelog._({this.date, this.changes}) : super._();

  @override
  ApiChangelog rebuild(void updates(ApiChangelogBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiChangelogBuilder toBuilder() => new ApiChangelogBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! ApiChangelog) return false;
    return date == other.date && changes == other.changes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, date.hashCode), changes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiChangelog')..add('date', date)..add('changes', changes))
        .toString();
  }
}

class ApiChangelogBuilder implements Builder<ApiChangelog, ApiChangelogBuilder> {
  _$ApiChangelog _$v;

  String _date;

  String get date => _$this._date;

  set date(String date) => _$this._date = date;

  ListBuilder<String> _changes;

  ListBuilder<String> get changes => _$this._changes ??= new ListBuilder<String>();

  set changes(ListBuilder<String> changes) => _$this._changes = changes;

  ApiChangelogBuilder();

  ApiChangelogBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _changes = _$v.changes?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiChangelog other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$ApiChangelog;
  }

  @override
  void update(void updates(ApiChangelogBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiChangelog build() {
    _$ApiChangelog _$result;
    try {
      _$result = _$v ?? new _$ApiChangelog._(date: date, changes: _changes?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'changes';
        _changes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError('ApiChangelog', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
