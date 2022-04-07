import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'transactions_record.g.dart';

abstract class TransactionsRecord
    implements Built<TransactionsRecord, TransactionsRecordBuilder> {
  static Serializer<TransactionsRecord> get serializer =>
      _$transactionsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'prt_Img')
  String get prtImg;

  @nullable
  @BuiltValueField(wireName: 'prt_name')
  String get prtName;

  @nullable
  @BuiltValueField(wireName: 'prt_price')
  int get prtPrice;

  @nullable
  @BuiltValueField(wireName: 'prt_qty')
  int get prtQty;

  @nullable
  @BuiltValueField(wireName: 'prts_total')
  int get prtsTotal;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TransactionsRecordBuilder builder) => builder
    ..prtImg = ''
    ..prtName = ''
    ..prtPrice = 0
    ..prtQty = 0
    ..prtsTotal = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Transactions');

  static Stream<TransactionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TransactionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  TransactionsRecord._();
  factory TransactionsRecord(
          [void Function(TransactionsRecordBuilder) updates]) =
      _$TransactionsRecord;

  static TransactionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTransactionsRecordData({
  String prtImg,
  String prtName,
  int prtPrice,
  int prtQty,
  int prtsTotal,
}) =>
    serializers.toFirestore(
        TransactionsRecord.serializer,
        TransactionsRecord((t) => t
          ..prtImg = prtImg
          ..prtName = prtName
          ..prtPrice = prtPrice
          ..prtQty = prtQty
          ..prtsTotal = prtsTotal));
