import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cart_record.g.dart';

abstract class CartRecord implements Built<CartRecord, CartRecordBuilder> {
  static Serializer<CartRecord> get serializer => _$cartRecordSerializer;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: 'item_name')
  String get itemName;

  @nullable
  @BuiltValueField(wireName: 'prt_Quantity')
  int get prtQuantity;

  @nullable
  double get price;

  @nullable
  @BuiltValueField(wireName: 'cart_user')
  DocumentReference get cartUser;

  @nullable
  String get userID;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CartRecordBuilder builder) => builder
    ..image = ''
    ..itemName = ''
    ..prtQuantity = 0
    ..price = 0.0
    ..userID = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CartRecord._();
  factory CartRecord([void Function(CartRecordBuilder) updates]) = _$CartRecord;

  static CartRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCartRecordData({
  String image,
  String itemName,
  int prtQuantity,
  double price,
  DocumentReference cartUser,
  String userID,
}) =>
    serializers.toFirestore(
        CartRecord.serializer,
        CartRecord((c) => c
          ..image = image
          ..itemName = itemName
          ..prtQuantity = prtQuantity
          ..price = price
          ..cartUser = cartUser
          ..userID = userID));
