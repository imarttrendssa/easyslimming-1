import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

int countPriceAndQty(
  int qty,
  int prc,
) {
  return qty * prc;
}

int sumQuantity(List<int> qty) {
  // sum of quantities of items in firestore
  int sum = 0;
  qty.forEach((i) => sum += i);
  return sum;
}
