import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'skin_care_record.g.dart';

abstract class SkinCareRecord
    implements Built<SkinCareRecord, SkinCareRecordBuilder> {
  static Serializer<SkinCareRecord> get serializer =>
      _$skinCareRecordSerializer;

  @nullable
  String get image;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(SkinCareRecordBuilder builder) =>
      builder..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SkinCare');

  static Stream<SkinCareRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<SkinCareRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  SkinCareRecord._();
  factory SkinCareRecord([void Function(SkinCareRecordBuilder) updates]) =
      _$SkinCareRecord;

  static SkinCareRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createSkinCareRecordData({
  String image,
}) =>
    serializers.toFirestore(
        SkinCareRecord.serializer, SkinCareRecord((s) => s..image = image));
