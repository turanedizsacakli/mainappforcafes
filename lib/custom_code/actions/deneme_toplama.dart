// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> denemeToplama(
  String rak1,
  String rak2,
  int sonuc,
) async {
  sonuc = int.parse(rak1) + int.parse(rak2);
  return sonuc;
}
