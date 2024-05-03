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

double? portionAction(
  double cost,
  String portion,
) {
  if (portion == "1 Porsiyon") {
    cost = cost * 1;
  } else if (portion == "1,5 Porsiyon") {
    cost = cost * 1.5;
  } else if (portion == "2 Porsiyon") {
    cost = cost * 2;
  }
  return cost;
}

double? drinkingAction(
  double cost,
  String drinking,
) {
  if (drinking == "Kola") {
    cost = cost + 50;
  } else if (drinking == "Ayran") {
    cost = cost + 20;
  } else if (drinking == "Şalgam") {
    cost = cost + 30;
  }
  return cost;
}

double? addCost(
  double oldCost,
  double newCost,
) {
  if (oldCost != null) {
    oldCost = oldCost + newCost;
  } else {
    oldCost = 0;
  }
  return oldCost;
}

double? takeCos(
  double oldCost,
  double pageCost,
) {
  oldCost = pageCost;

  return pageCost;
}
