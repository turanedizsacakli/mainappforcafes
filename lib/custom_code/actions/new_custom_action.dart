// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> newCustomAction(
  BuildContext context,
  List<String>? list1,
  List<String>? list2,
  List<String>? mergedList,
) async {
  // Add your function code here!

  if (mergedList == null) {
    mergedList = [];
  }

  if (list1 != null) {
    mergedList.addAll(list1);
  }

  if (list2 != null) {
    mergedList.addAll(list2);
  }

  // Optionally, you can return the merged list
  return mergedList;
}
