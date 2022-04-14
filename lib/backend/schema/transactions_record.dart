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
  @BuiltValueField(wireName: 'prt_name')
  String get prtName;

  @nullable
  @BuiltValueField(wireName: 'prt_qty')
  int get prtQty;

  @nullable
  @BuiltValueField(wireName: 'prt_price')
  double get prtPrice;

  @nullable
  @BuiltValueField(wireName: 'prt_image')
  String get prtImage;

  @nullable
  @BuiltValueField(wireName: 'prt_total')
  double get prtTotal;

  @nullable
  @BuiltValueField(wireName: 'order_id')
  int get orderId;

  @nullable
  @BuiltValueField(wireName: 'transaction_user')
  DocumentReference get transactionUser;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TransactionsRecordBuilder builder) => builder
    ..prtName = ''
    ..prtQty = 0
    ..prtPrice = 0.0
    ..prtImage = ''
    ..prtTotal = 0.0
    ..orderId = 0;

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
  String prtName,
  int prtQty,
  double prtPrice,
  String prtImage,
  double prtTotal,
  int orderId,
  DocumentReference transactionUser,
}) =>
    serializers.toFirestore(
        TransactionsRecord.serializer,
        TransactionsRecord((t) => t
          ..prtName = prtName
          ..prtQty = prtQty
          ..prtPrice = prtPrice
          ..prtImage = prtImage
          ..prtTotal = prtTotal
          ..orderId = orderId
          ..transactionUser = transactionUser));
