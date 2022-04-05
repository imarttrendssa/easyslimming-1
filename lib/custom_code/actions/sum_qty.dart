// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'dart:math' as math;

int sumQty(List<int> qty) {
  // sum of quantities of items in firestore
  int sum = 0;
  qty.forEach((i) => sum += i);
  return sum;
}
