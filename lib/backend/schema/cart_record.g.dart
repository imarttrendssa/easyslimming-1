// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CartRecord> _$cartRecordSerializer = new _$CartRecordSerializer();

class _$CartRecordSerializer implements StructuredSerializer<CartRecord> {
  @override
  final Iterable<Type> types = const [CartRecord, _$CartRecord];
  @override
  final String wireName = 'CartRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, CartRecord object,
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
    value = object.itemName;
    if (value != null) {
      result
        ..add('item_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.prtQuantity;
    if (value != null) {
      result
        ..add('prt_Quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.qtySum;
    if (value != null) {
      result
        ..add('qty_sum')
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
  CartRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CartRecordBuilder();

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
        case 'item_name':
          result.itemName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'prt_Quantity':
          result.prtQuantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'qty_sum':
          result.qtySum = serializers.deserialize(value,
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

class _$CartRecord extends CartRecord {
  @override
  final String image;
  @override
  final String itemName;
  @override
  final int price;
  @override
  final int prtQuantity;
  @override
  final int qtySum;
  @override
  final DocumentReference<Object> reference;

  factory _$CartRecord([void Function(CartRecordBuilder) updates]) =>
      (new CartRecordBuilder()..update(updates)).build();

  _$CartRecord._(
      {this.image,
      this.itemName,
      this.price,
      this.prtQuantity,
      this.qtySum,
      this.reference})
      : super._();

  @override
  CartRecord rebuild(void Function(CartRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CartRecordBuilder toBuilder() => new CartRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CartRecord &&
        image == other.image &&
        itemName == other.itemName &&
        price == other.price &&
        prtQuantity == other.prtQuantity &&
        qtySum == other.qtySum &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, image.hashCode), itemName.hashCode),
                    price.hashCode),
                prtQuantity.hashCode),
            qtySum.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CartRecord')
          ..add('image', image)
          ..add('itemName', itemName)
          ..add('price', price)
          ..add('prtQuantity', prtQuantity)
          ..add('qtySum', qtySum)
          ..add('reference', reference))
        .toString();
  }
}

class CartRecordBuilder implements Builder<CartRecord, CartRecordBuilder> {
  _$CartRecord _$v;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _itemName;
  String get itemName => _$this._itemName;
  set itemName(String itemName) => _$this._itemName = itemName;

  int _price;
  int get price => _$this._price;
  set price(int price) => _$this._price = price;

  int _prtQuantity;
  int get prtQuantity => _$this._prtQuantity;
  set prtQuantity(int prtQuantity) => _$this._prtQuantity = prtQuantity;

  int _qtySum;
  int get qtySum => _$this._qtySum;
  set qtySum(int qtySum) => _$this._qtySum = qtySum;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CartRecordBuilder() {
    CartRecord._initializeBuilder(this);
  }

  CartRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _itemName = $v.itemName;
      _price = $v.price;
      _prtQuantity = $v.prtQuantity;
      _qtySum = $v.qtySum;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CartRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CartRecord;
  }

  @override
  void update(void Function(CartRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CartRecord build() {
    final _$result = _$v ??
        new _$CartRecord._(
            image: image,
            itemName: itemName,
            price: price,
            prtQuantity: prtQuantity,
            qtySum: qtySum,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
