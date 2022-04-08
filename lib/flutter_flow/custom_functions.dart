import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double countPriceAndQty(
  int qty,
  double prc,
) {
  return qty * prc;
}

double getTotalAmount(List<CartRecord> prices) {
  // calculate sum of prices in firebase  documents
  double sum = 0;

  for (int i = 0; i < prices.length; i++) {
    sum += (prices[i].price * prices[i].prtQuantity);
  }

  return sum;
}

int addQuantities(List<CartRecord> qty) {
  int sum = 0;

  for (int i = 0; i < qty.length; i++) {
    sum += qty[i].prtQuantity;
  }

  return sum;
}
