// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductsRecord> _$productsRecordSerializer =
    new _$ProductsRecordSerializer();

class _$ProductsRecordSerializer
    implements StructuredSerializer<ProductsRecord> {
  @override
  final Iterable<Type> types = const [ProductsRecord, _$ProductsRecord];
  @override
  final String wireName = 'ProductsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProductsRecord object,
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
    value = object.productName;
    if (value != null) {
      result
        ..add('product_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.productDescription;
    if (value != null) {
      result
        ..add('product_Description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.catecory;
    if (value != null) {
      result
        ..add('catecory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  ProductsRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductsRecordBuilder();

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
        case 'product_name':
          result.productName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'product_Description':
          result.productDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'catecory':
          result.catecory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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

class _$ProductsRecord extends ProductsRecord {
  @override
  final String image;
  @override
  final String productName;
  @override
  final String productDescription;
  @override
  final String catecory;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final DocumentReference<Object> reference;

  factory _$ProductsRecord([void Function(ProductsRecordBuilder) updates]) =>
      (new ProductsRecordBuilder()..update(updates)).build();

  _$ProductsRecord._(
      {this.image,
      this.productName,
      this.productDescription,
      this.catecory,
      this.quantity,
      this.price,
      this.reference})
      : super._();

  @override
  ProductsRecord rebuild(void Function(ProductsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsRecordBuilder toBuilder() =>
      new ProductsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsRecord &&
        image == other.image &&
        productName == other.productName &&
        productDescription == other.productDescription &&
        catecory == other.catecory &&
        quantity == other.quantity &&
        price == other.price &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, image.hashCode), productName.hashCode),
                        productDescription.hashCode),
                    catecory.hashCode),
                quantity.hashCode),
            price.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductsRecord')
          ..add('image', image)
          ..add('productName', productName)
          ..add('productDescription', productDescription)
          ..add('catecory', catecory)
          ..add('quantity', quantity)
          ..add('price', price)
          ..add('reference', reference))
        .toString();
  }
}

class ProductsRecordBuilder
    implements Builder<ProductsRecord, ProductsRecordBuilder> {
  _$ProductsRecord _$v;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _productName;
  String get productName => _$this._productName;
  set productName(String productName) => _$this._productName = productName;

  String _productDescription;
  String get productDescription => _$this._productDescription;
  set productDescription(String productDescription) =>
      _$this._productDescription = productDescription;

  String _catecory;
  String get catecory => _$this._catecory;
  set catecory(String catecory) => _$this._catecory = catecory;

  int _quantity;
  int get quantity => _$this._quantity;
  set quantity(int quantity) => _$this._quantity = quantity;

  double _price;
  double get price => _$this._price;
  set price(double price) => _$this._price = price;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProductsRecordBuilder() {
    ProductsRecord._initializeBuilder(this);
  }

  ProductsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _productName = $v.productName;
      _productDescription = $v.productDescription;
      _catecory = $v.catecory;
      _quantity = $v.quantity;
      _price = $v.price;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductsRecord;
  }

  @override
  void update(void Function(ProductsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductsRecord build() {
    final _$result = _$v ??
        new _$ProductsRecord._(
            image: image,
            productName: productName,
            productDescription: productDescription,
            catecory: catecory,
            quantity: quantity,
            price: price,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
