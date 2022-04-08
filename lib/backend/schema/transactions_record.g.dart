// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transactions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TransactionsRecord> _$transactionsRecordSerializer =
    new _$TransactionsRecordSerializer();

class _$TransactionsRecordSerializer
    implements StructuredSerializer<TransactionsRecord> {
  @override
  final Iterable<Type> types = const [TransactionsRecord, _$TransactionsRecord];
  @override
  final String wireName = 'TransactionsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TransactionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.prtImg;
    if (value != null) {
      result
        ..add('prt_Img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prtName;
    if (value != null) {
      result
        ..add('prt_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prtPrice;
    if (value != null) {
      result
        ..add('prt_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.prtQty;
    if (value != null) {
      result
        ..add('prt_qty')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.prtsTotal;
    if (value != null) {
      result
        ..add('prts_total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  TransactionsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TransactionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'prt_Img':
          result.prtImg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prt_name':
          result.prtName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prt_price':
          result.prtPrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'prt_qty':
          result.prtQty = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'prts_total':
          result.prtsTotal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
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

class _$TransactionsRecord extends TransactionsRecord {
  @override
  final String prtImg;
  @override
  final String prtName;
  @override
  final int prtPrice;
  @override
  final int prtQty;
  @override
  final int prtsTotal;
  @override
  final DocumentReference<Object> reference;

  factory _$TransactionsRecord(
          [void Function(TransactionsRecordBuilder) updates]) =>
      (new TransactionsRecordBuilder()..update(updates)).build();

  _$TransactionsRecord._(
      {this.prtImg,
      this.prtName,
      this.prtPrice,
      this.prtQty,
      this.prtsTotal,
      this.reference})
      : super._();

  @override
  TransactionsRecord rebuild(
          void Function(TransactionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TransactionsRecordBuilder toBuilder() =>
      new TransactionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TransactionsRecord &&
        prtImg == other.prtImg &&
        prtName == other.prtName &&
        prtPrice == other.prtPrice &&
        prtQty == other.prtQty &&
        prtsTotal == other.prtsTotal &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, prtImg.hashCode), prtName.hashCode),
                    prtPrice.hashCode),
                prtQty.hashCode),
            prtsTotal.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TransactionsRecord')
          ..add('prtImg', prtImg)
          ..add('prtName', prtName)
          ..add('prtPrice', prtPrice)
          ..add('prtQty', prtQty)
          ..add('prtsTotal', prtsTotal)
          ..add('reference', reference))
        .toString();
  }
}

class TransactionsRecordBuilder
    implements Builder<TransactionsRecord, TransactionsRecordBuilder> {
  _$TransactionsRecord _$v;

  String _prtImg;
  String get prtImg => _$this._prtImg;
  set prtImg(String prtImg) => _$this._prtImg = prtImg;

  String _prtName;
  String get prtName => _$this._prtName;
  set prtName(String prtName) => _$this._prtName = prtName;

  int _prtPrice;
  int get prtPrice => _$this._prtPrice;
  set prtPrice(int prtPrice) => _$this._prtPrice = prtPrice;

  int _prtQty;
  int get prtQty => _$this._prtQty;
  set prtQty(int prtQty) => _$this._prtQty = prtQty;

  int _prtsTotal;
  int get prtsTotal => _$this._prtsTotal;
  set prtsTotal(int prtsTotal) => _$this._prtsTotal = prtsTotal;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TransactionsRecordBuilder() {
    TransactionsRecord._initializeBuilder(this);
  }

  TransactionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _prtImg = $v.prtImg;
      _prtName = $v.prtName;
      _prtPrice = $v.prtPrice;
      _prtQty = $v.prtQty;
      _prtsTotal = $v.prtsTotal;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TransactionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TransactionsRecord;
  }

  @override
  void update(void Function(TransactionsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TransactionsRecord build() {
    final _$result = _$v ??
        new _$TransactionsRecord._(
            prtImg: prtImg,
            prtName: prtName,
            prtPrice: prtPrice,
            prtQty: prtQty,
            prtsTotal: prtsTotal,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
