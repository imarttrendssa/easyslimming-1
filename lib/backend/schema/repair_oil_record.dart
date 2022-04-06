import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'repair_oil_record.g.dart';

abstract class RepairOilRecord
    implements Built<RepairOilRecord, RepairOilRecordBuilder> {
  static Serializer<RepairOilRecord> get serializer =>
      _$repairOilRecordSerializer;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(RepairOilRecordBuilder builder) =>
      builder..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('RepairOil');

  static Stream<RepairOilRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<RepairOilRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  RepairOilRecord._();
  factory RepairOilRecord([void Function(RepairOilRecordBuilder) updates]) =
      _$RepairOilRecord;

  static RepairOilRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createRepairOilRecordData({
  String image,
}) =>
    serializers.toFirestore(
        RepairOilRecord.serializer, RepairOilRecord((r) => r..image = image));
