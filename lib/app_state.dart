import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _waiterName = prefs.getString('ff_waiterName') ?? _waiterName;
    });
    _safeInit(() {
      _tableNumber = prefs.getInt('ff_tableNumber') ?? _tableNumber;
    });
    _safeInit(() {
      _order = prefs.getStringList('ff_order') ?? _order;
    });
    _safeInit(() {
      _tableAccount = prefs.getDouble('ff_tableAccount') ?? _tableAccount;
    });
    _safeInit(() {
      _deneme = prefs.getStringList('ff_deneme') ?? _deneme;
    });
    _safeInit(() {
      _denemeCost =
          prefs.getStringList('ff_denemeCost')?.map(double.parse).toList() ??
              _denemeCost;
    });
    _safeInit(() {
      _denemeTotal = prefs.getDouble('ff_denemeTotal') ?? _denemeTotal;
    });
    _safeInit(() {
      _pageCost =
          prefs.getStringList('ff_pageCost')?.map(double.parse).toList() ??
              _pageCost;
    });
    _safeInit(() {
      _pageTotalCost = prefs.getDouble('ff_pageTotalCost') ?? _pageTotalCost;
    });
    _safeInit(() {
      _deletedTheCost = prefs
              .getStringList('ff_deletedTheCost')
              ?.map(double.parse)
              .toList() ??
          _deletedTheCost;
    });
    _safeInit(() {
      _dene2 = prefs.getStringList('ff_dene2') ?? _dene2;
    });
    _safeInit(() {
      _denemeSonuc = prefs.getInt('ff_denemeSonuc') ?? _denemeSonuc;
    });
    _safeInit(() {
      _newOrderList = prefs.getStringList('ff_newOrderList') ?? _newOrderList;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _waiterName = '';
  String get waiterName => _waiterName;
  set waiterName(String value) {
    _waiterName = value;
    prefs.setString('ff_waiterName', value);
  }

  int _tableNumber = 0;
  int get tableNumber => _tableNumber;
  set tableNumber(int value) {
    _tableNumber = value;
    prefs.setInt('ff_tableNumber', value);
  }

  List<String> _order = [];
  List<String> get order => _order;
  set order(List<String> value) {
    _order = value;
    prefs.setStringList('ff_order', value);
  }

  void addToOrder(String value) {
    order.add(value);
    prefs.setStringList('ff_order', _order);
  }

  void removeFromOrder(String value) {
    order.remove(value);
    prefs.setStringList('ff_order', _order);
  }

  void removeAtIndexFromOrder(int index) {
    order.removeAt(index);
    prefs.setStringList('ff_order', _order);
  }

  void updateOrderAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    order[index] = updateFn(_order[index]);
    prefs.setStringList('ff_order', _order);
  }

  void insertAtIndexInOrder(int index, String value) {
    order.insert(index, value);
    prefs.setStringList('ff_order', _order);
  }

  double _tableAccount = 0.0;
  double get tableAccount => _tableAccount;
  set tableAccount(double value) {
    _tableAccount = value;
    prefs.setDouble('ff_tableAccount', value);
  }

  List<String> _deneme = [];
  List<String> get deneme => _deneme;
  set deneme(List<String> value) {
    _deneme = value;
    prefs.setStringList('ff_deneme', value);
  }

  void addToDeneme(String value) {
    deneme.add(value);
    prefs.setStringList('ff_deneme', _deneme);
  }

  void removeFromDeneme(String value) {
    deneme.remove(value);
    prefs.setStringList('ff_deneme', _deneme);
  }

  void removeAtIndexFromDeneme(int index) {
    deneme.removeAt(index);
    prefs.setStringList('ff_deneme', _deneme);
  }

  void updateDenemeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    deneme[index] = updateFn(_deneme[index]);
    prefs.setStringList('ff_deneme', _deneme);
  }

  void insertAtIndexInDeneme(int index, String value) {
    deneme.insert(index, value);
    prefs.setStringList('ff_deneme', _deneme);
  }

  List<double> _denemeCost = [10.0, 11.0, 25.0, 256.0];
  List<double> get denemeCost => _denemeCost;
  set denemeCost(List<double> value) {
    _denemeCost = value;
    prefs.setStringList(
        'ff_denemeCost', value.map((x) => x.toString()).toList());
  }

  void addToDenemeCost(double value) {
    denemeCost.add(value);
    prefs.setStringList(
        'ff_denemeCost', _denemeCost.map((x) => x.toString()).toList());
  }

  void removeFromDenemeCost(double value) {
    denemeCost.remove(value);
    prefs.setStringList(
        'ff_denemeCost', _denemeCost.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromDenemeCost(int index) {
    denemeCost.removeAt(index);
    prefs.setStringList(
        'ff_denemeCost', _denemeCost.map((x) => x.toString()).toList());
  }

  void updateDenemeCostAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    denemeCost[index] = updateFn(_denemeCost[index]);
    prefs.setStringList(
        'ff_denemeCost', _denemeCost.map((x) => x.toString()).toList());
  }

  void insertAtIndexInDenemeCost(int index, double value) {
    denemeCost.insert(index, value);
    prefs.setStringList(
        'ff_denemeCost', _denemeCost.map((x) => x.toString()).toList());
  }

  double _denemeTotal = 0.0;
  double get denemeTotal => _denemeTotal;
  set denemeTotal(double value) {
    _denemeTotal = value;
    prefs.setDouble('ff_denemeTotal', value);
  }

  List<double> _pageCost = [];
  List<double> get pageCost => _pageCost;
  set pageCost(List<double> value) {
    _pageCost = value;
    prefs.setStringList('ff_pageCost', value.map((x) => x.toString()).toList());
  }

  void addToPageCost(double value) {
    pageCost.add(value);
    prefs.setStringList(
        'ff_pageCost', _pageCost.map((x) => x.toString()).toList());
  }

  void removeFromPageCost(double value) {
    pageCost.remove(value);
    prefs.setStringList(
        'ff_pageCost', _pageCost.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromPageCost(int index) {
    pageCost.removeAt(index);
    prefs.setStringList(
        'ff_pageCost', _pageCost.map((x) => x.toString()).toList());
  }

  void updatePageCostAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    pageCost[index] = updateFn(_pageCost[index]);
    prefs.setStringList(
        'ff_pageCost', _pageCost.map((x) => x.toString()).toList());
  }

  void insertAtIndexInPageCost(int index, double value) {
    pageCost.insert(index, value);
    prefs.setStringList(
        'ff_pageCost', _pageCost.map((x) => x.toString()).toList());
  }

  double _pageTotalCost = 0.0;
  double get pageTotalCost => _pageTotalCost;
  set pageTotalCost(double value) {
    _pageTotalCost = value;
    prefs.setDouble('ff_pageTotalCost', value);
  }

  List<double> _deletedTheCost = [];
  List<double> get deletedTheCost => _deletedTheCost;
  set deletedTheCost(List<double> value) {
    _deletedTheCost = value;
    prefs.setStringList(
        'ff_deletedTheCost', value.map((x) => x.toString()).toList());
  }

  void addToDeletedTheCost(double value) {
    deletedTheCost.add(value);
    prefs.setStringList(
        'ff_deletedTheCost', _deletedTheCost.map((x) => x.toString()).toList());
  }

  void removeFromDeletedTheCost(double value) {
    deletedTheCost.remove(value);
    prefs.setStringList(
        'ff_deletedTheCost', _deletedTheCost.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromDeletedTheCost(int index) {
    deletedTheCost.removeAt(index);
    prefs.setStringList(
        'ff_deletedTheCost', _deletedTheCost.map((x) => x.toString()).toList());
  }

  void updateDeletedTheCostAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    deletedTheCost[index] = updateFn(_deletedTheCost[index]);
    prefs.setStringList(
        'ff_deletedTheCost', _deletedTheCost.map((x) => x.toString()).toList());
  }

  void insertAtIndexInDeletedTheCost(int index, double value) {
    deletedTheCost.insert(index, value);
    prefs.setStringList(
        'ff_deletedTheCost', _deletedTheCost.map((x) => x.toString()).toList());
  }

  List<String> _dene2 = [];
  List<String> get dene2 => _dene2;
  set dene2(List<String> value) {
    _dene2 = value;
    prefs.setStringList('ff_dene2', value);
  }

  void addToDene2(String value) {
    dene2.add(value);
    prefs.setStringList('ff_dene2', _dene2);
  }

  void removeFromDene2(String value) {
    dene2.remove(value);
    prefs.setStringList('ff_dene2', _dene2);
  }

  void removeAtIndexFromDene2(int index) {
    dene2.removeAt(index);
    prefs.setStringList('ff_dene2', _dene2);
  }

  void updateDene2AtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    dene2[index] = updateFn(_dene2[index]);
    prefs.setStringList('ff_dene2', _dene2);
  }

  void insertAtIndexInDene2(int index, String value) {
    dene2.insert(index, value);
    prefs.setStringList('ff_dene2', _dene2);
  }

  int _denemeSonuc = 0;
  int get denemeSonuc => _denemeSonuc;
  set denemeSonuc(int value) {
    _denemeSonuc = value;
    prefs.setInt('ff_denemeSonuc', value);
  }

  List<String> _newOrderList = [];
  List<String> get newOrderList => _newOrderList;
  set newOrderList(List<String> value) {
    _newOrderList = value;
    prefs.setStringList('ff_newOrderList', value);
  }

  void addToNewOrderList(String value) {
    newOrderList.add(value);
    prefs.setStringList('ff_newOrderList', _newOrderList);
  }

  void removeFromNewOrderList(String value) {
    newOrderList.remove(value);
    prefs.setStringList('ff_newOrderList', _newOrderList);
  }

  void removeAtIndexFromNewOrderList(int index) {
    newOrderList.removeAt(index);
    prefs.setStringList('ff_newOrderList', _newOrderList);
  }

  void updateNewOrderListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    newOrderList[index] = updateFn(_newOrderList[index]);
    prefs.setStringList('ff_newOrderList', _newOrderList);
  }

  void insertAtIndexInNewOrderList(int index, String value) {
    newOrderList.insert(index, value);
    prefs.setStringList('ff_newOrderList', _newOrderList);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
