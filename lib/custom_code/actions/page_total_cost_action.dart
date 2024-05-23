// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<double> pageTotalCostAction(
  List<double> listOfCosts,
  double totalCost,
) async {
  // Add your function code here!
  for (int i = 0; i < listOfCosts.length; i++) {
    totalCost = totalCost + listOfCosts[i];
  }
  return totalCost;
}
