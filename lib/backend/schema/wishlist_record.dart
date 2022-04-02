import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'wishlist_record.g.dart';

abstract class WishlistRecord
    implements Built<WishlistRecord, WishlistRecordBuilder> {
  static Serializer<WishlistRecord> get serializer =>
      _$wishlistRecordSerializer;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: 'item_name')
  String get itemName;

  @nullable
  int get price;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(WishlistRecordBuilder builder) => builder
    ..image = ''
    ..itemName = ''
    ..price = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('wishlist');

  static Stream<WishlistRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<WishlistRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  WishlistRecord._();
  factory WishlistRecord([void Function(WishlistRecordBuilder) updates]) =
      _$WishlistRecord;

  static WishlistRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createWishlistRecordData({
  String image,
  String itemName,
  int price,
}) =>
    serializers.toFirestore(
        WishlistRecord.serializer,
        WishlistRecord((w) => w
          ..image = image
          ..itemName = itemName
          ..price = price));
