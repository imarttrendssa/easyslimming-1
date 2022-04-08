// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repair_oil_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RepairOilRecord> _$repairOilRecordSerializer =
    new _$RepairOilRecordSerializer();

class _$RepairOilRecordSerializer
    implements StructuredSerializer<RepairOilRecord> {
  @override
  final Iterable<Type> types = const [RepairOilRecord, _$RepairOilRecord];
  @override
  final String wireName = 'RepairOilRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, RepairOilRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  RepairOilRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepairOilRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$RepairOilRecord extends RepairOilRecord {
  @override
  final String image;
  @override
  final DocumentReference<Object> reference;

  factory _$RepairOilRecord([void Function(RepairOilRecordBuilder) updates]) =>
      (new RepairOilRecordBuilder()..update(updates)).build();

  _$RepairOilRecord._({this.image, this.reference}) : super._();

  @override
  RepairOilRecord rebuild(void Function(RepairOilRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepairOilRecordBuilder toBuilder() =>
      new RepairOilRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepairOilRecord &&
        image == other.image &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, image.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RepairOilRecord')
          ..add('image', image)
          ..add('reference', reference))
        .toString();
  }
}

class RepairOilRecordBuilder
    implements Builder<RepairOilRecord, RepairOilRecordBuilder> {
  _$RepairOilRecord _$v;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  RepairOilRecordBuilder() {
    RepairOilRecord._initializeBuilder(this);
  }

  RepairOilRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepairOilRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RepairOilRecord;
  }

  @override
  void update(void Function(RepairOilRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RepairOilRecord build() {
    final _$result =
        _$v ?? new _$RepairOilRecord._(image: image, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new