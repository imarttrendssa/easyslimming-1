import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'beard_oil_record.g.dart';

abstract class BeardOilRecord
    implements Built<BeardOilRecord, BeardOilRecordBuilder> {
  static Serializer<BeardOilRecord> get serializer =>
      _$beardOilRecordSerializer;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(BeardOilRecordBuilder builder) =>
      builder..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('beardOil');

  static Stream<BeardOilRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<BeardOilRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  BeardOilRecord._();
  factory BeardOilRecord([void Function(BeardOilRecordBuilder) updates]) =
      _$BeardOilRecord;

  static BeardOilRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createBeardOilRecordData({
  String image,
}) =>
    serializers.toFirestore(
        BeardOilRecord.serializer, BeardOilRecord((b) => b..image = image));
