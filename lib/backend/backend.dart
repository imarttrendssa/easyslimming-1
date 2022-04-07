import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../flutter_flow/flutter_flow_util.dart';

import 'schema/users_record.dart';
import 'schema/products_record.dart';
import 'schema/cart_record.dart';
import 'schema/skin_care_record.dart';
import 'schema/repair_oil_record.dart';
import 'schema/beard_oil_record.dart';
import 'schema/transactions_record.dart';
import 'schema/serializers.dart';

export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/serializers.dart';

export 'schema/users_record.dart';
export 'schema/products_record.dart';
export 'schema/cart_record.dart';
export 'schema/skin_care_record.dart';
export 'schema/repair_oil_record.dart';
export 'schema/beard_oil_record.dart';
export 'schema/transactions_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Stream<List<UsersRecord>> queryUsersRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(UsersRecord.collection, UsersRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<UsersRecord>> queryUsersRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(UsersRecord.collection, UsersRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query ProductsRecords (as a Stream and as a Future).
Stream<List<ProductsRecord>> queryProductsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(ProductsRecord.collection, ProductsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<ProductsRecord>> queryProductsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(ProductsRecord.collection, ProductsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query CartRecords (as a Stream and as a Future).
Stream<List<CartRecord>> queryCartRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(CartRecord.collection, CartRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<CartRecord>> queryCartRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(CartRecord.collection, CartRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query SkinCareRecords (as a Stream and as a Future).
Stream<List<SkinCareRecord>> querySkinCareRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(SkinCareRecord.collection, SkinCareRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<SkinCareRecord>> querySkinCareRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(SkinCareRecord.collection, SkinCareRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query RepairOilRecords (as a Stream and as a Future).
Stream<List<RepairOilRecord>> queryRepairOilRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(RepairOilRecord.collection, RepairOilRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<RepairOilRecord>> queryRepairOilRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(RepairOilRecord.collection, RepairOilRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query BeardOilRecords (as a Stream and as a Future).
Stream<List<BeardOilRecord>> queryBeardOilRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(BeardOilRecord.collection, BeardOilRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<BeardOilRecord>> queryBeardOilRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(BeardOilRecord.collection, BeardOilRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

/// Functions to query TransactionsRecords (as a Stream and as a Future).
Stream<List<TransactionsRecord>> queryTransactionsRecord(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollection(
        TransactionsRecord.collection, TransactionsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Future<List<TransactionsRecord>> queryTransactionsRecordOnce(
        {Query Function(Query) queryBuilder,
        int limit = -1,
        bool singleRecord = false}) =>
    queryCollectionOnce(
        TransactionsRecord.collection, TransactionsRecord.serializer,
        queryBuilder: queryBuilder, limit: limit, singleRecord: singleRecord);

Stream<List<T>> queryCollection<T>(
    CollectionReference collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().map((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
    CollectionReference collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}
