import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

double pageTotalCostFunction(
  List<double> listOfCosts,
  double totalCost,
) {
  for (int i = 0; i < listOfCosts.length; i++) {
    totalCost = totalCost + listOfCosts[i];
  }
  return totalCost;
}
