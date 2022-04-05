import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'products_record.g.dart';

abstract class ProductsRecord
    implements Built<ProductsRecord, ProductsRecordBuilder> {
  static Serializer<ProductsRecord> get serializer =>
      _$productsRecordSerializer;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: 'product_name')
  String get productName;

  @nullable
  int get price;

  @nullable
  @BuiltValueField(wireName: 'product_Description')
  String get productDescription;

  @nullable
  String get catecory;

  @nullable
  BuiltList<bool> get cart;

  @nullable
  int get quantity;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProductsRecordBuilder builder) => builder
    ..image = ''
    ..productName = ''
    ..price = 0
    ..productDescription = ''
    ..catecory = ''
    ..cart = ListBuilder()
    ..quantity = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProductsRecord._();
  factory ProductsRecord([void Function(ProductsRecordBuilder) updates]) =
      _$ProductsRecord;

  static ProductsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProductsRecordData({
  String image,
  String productName,
  int price,
  String productDescription,
  String catecory,
  int quantity,
}) =>
    serializers.toFirestore(
        ProductsRecord.serializer,
        ProductsRecord((p) => p
          ..image = image
          ..productName = productName
          ..price = price
          ..productDescription = productDescription
          ..catecory = catecory
          ..cart = null
          ..quantity = quantity));
