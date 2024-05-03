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
      _meat = prefs.getInt('ff_meat') ?? _meat;
    });
    _safeInit(() {
      _account = prefs.getInt('ff_account') ?? _account;
    });
    _safeInit(() {
      _tableAccount = prefs.getInt('ff_tableAccount') ?? _tableAccount;
    });
    _safeInit(() {
      _baslangiclar = prefs.getStringList('ff_baslangiclar') ?? _baslangiclar;
    });
    _safeInit(() {
      _sandvic = prefs.getStringList('ff_sandvic') ?? _sandvic;
    });
    _safeInit(() {
      _makarna = prefs.getStringList('ff_makarna') ?? _makarna;
    });
    _safeInit(() {
      _salata = prefs.getStringList('ff_salata') ?? _salata;
    });
    _safeInit(() {
      _hamburger = prefs.getStringList('ff_hamburger') ?? _hamburger;
    });
    _safeInit(() {
      _anaYemekler = prefs.getStringList('ff_anaYemekler') ?? _anaYemekler;
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
    _order.add(value);
    prefs.setStringList('ff_order', _order);
  }

  void removeFromOrder(String value) {
    _order.remove(value);
    prefs.setStringList('ff_order', _order);
  }

  void removeAtIndexFromOrder(int index) {
    _order.removeAt(index);
    prefs.setStringList('ff_order', _order);
  }

  void updateOrderAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _order[index] = updateFn(_order[index]);
    prefs.setStringList('ff_order', _order);
  }

  void insertAtIndexInOrder(int index, String value) {
    _order.insert(index, value);
    prefs.setStringList('ff_order', _order);
  }

  int _meat = 75;
  int get meat => _meat;
  set meat(int value) {
    _meat = value;
    prefs.setInt('ff_meat', value);
  }

  int _account = 0;
  int get account => _account;
  set account(int value) {
    _account = value;
    prefs.setInt('ff_account', value);
  }

  int _tableAccount = 0;
  int get tableAccount => _tableAccount;
  set tableAccount(int value) {
    _tableAccount = value;
    prefs.setInt('ff_tableAccount', value);
  }

  List<String> _featuresListState = [];
  List<String> get featuresListState => _featuresListState;
  set featuresListState(List<String> value) {
    _featuresListState = value;
  }

  void addToFeaturesListState(String value) {
    _featuresListState.add(value);
  }

  void removeFromFeaturesListState(String value) {
    _featuresListState.remove(value);
  }

  void removeAtIndexFromFeaturesListState(int index) {
    _featuresListState.removeAt(index);
  }

  void updateFeaturesListStateAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _featuresListState[index] = updateFn(_featuresListState[index]);
  }

  void insertAtIndexInFeaturesListState(int index, String value) {
    _featuresListState.insert(index, value);
  }

  List<String> _baslangiclar = [
    'Sigara Böreği',
    'Combo Tabağı',
    'Kaşarlı Cips',
    'Soğan Halkası',
    'Çıtır Tavuk'
  ];
  List<String> get baslangiclar => _baslangiclar;
  set baslangiclar(List<String> value) {
    _baslangiclar = value;
    prefs.setStringList('ff_baslangiclar', value);
  }

  void addToBaslangiclar(String value) {
    _baslangiclar.add(value);
    prefs.setStringList('ff_baslangiclar', _baslangiclar);
  }

  void removeFromBaslangiclar(String value) {
    _baslangiclar.remove(value);
    prefs.setStringList('ff_baslangiclar', _baslangiclar);
  }

  void removeAtIndexFromBaslangiclar(int index) {
    _baslangiclar.removeAt(index);
    prefs.setStringList('ff_baslangiclar', _baslangiclar);
  }

  void updateBaslangiclarAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _baslangiclar[index] = updateFn(_baslangiclar[index]);
    prefs.setStringList('ff_baslangiclar', _baslangiclar);
  }

  void insertAtIndexInBaslangiclar(int index, String value) {
    _baslangiclar.insert(index, value);
    prefs.setStringList('ff_baslangiclar', _baslangiclar);
  }

  List<String> _sandvic = [
    'Sosisli Sandviç',
    'Sosisli Sandviç Menü',
    'Kumru Sandviç',
    'Kumru Sandviç Menü'
  ];
  List<String> get sandvic => _sandvic;
  set sandvic(List<String> value) {
    _sandvic = value;
    prefs.setStringList('ff_sandvic', value);
  }

  void addToSandvic(String value) {
    _sandvic.add(value);
    prefs.setStringList('ff_sandvic', _sandvic);
  }

  void removeFromSandvic(String value) {
    _sandvic.remove(value);
    prefs.setStringList('ff_sandvic', _sandvic);
  }

  void removeAtIndexFromSandvic(int index) {
    _sandvic.removeAt(index);
    prefs.setStringList('ff_sandvic', _sandvic);
  }

  void updateSandvicAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _sandvic[index] = updateFn(_sandvic[index]);
    prefs.setStringList('ff_sandvic', _sandvic);
  }

  void insertAtIndexInSandvic(int index, String value) {
    _sandvic.insert(index, value);
    prefs.setStringList('ff_sandvic', _sandvic);
  }

  List<String> _makarna = [
    'Spagetti Napoliten',
    'Körili Penne',
    'Peynirli Makarna'
  ];
  List<String> get makarna => _makarna;
  set makarna(List<String> value) {
    _makarna = value;
    prefs.setStringList('ff_makarna', value);
  }

  void addToMakarna(String value) {
    _makarna.add(value);
    prefs.setStringList('ff_makarna', _makarna);
  }

  void removeFromMakarna(String value) {
    _makarna.remove(value);
    prefs.setStringList('ff_makarna', _makarna);
  }

  void removeAtIndexFromMakarna(int index) {
    _makarna.removeAt(index);
    prefs.setStringList('ff_makarna', _makarna);
  }

  void updateMakarnaAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _makarna[index] = updateFn(_makarna[index]);
    prefs.setStringList('ff_makarna', _makarna);
  }

  void insertAtIndexInMakarna(int index, String value) {
    _makarna.insert(index, value);
    prefs.setStringList('ff_makarna', _makarna);
  }

  List<String> _salata = [
    'Akdeniz Salata',
    'Mevsim Salata',
    'Tavuklu Salata',
    'Ton Balıklı Salata'
  ];
  List<String> get salata => _salata;
  set salata(List<String> value) {
    _salata = value;
    prefs.setStringList('ff_salata', value);
  }

  void addToSalata(String value) {
    _salata.add(value);
    prefs.setStringList('ff_salata', _salata);
  }

  void removeFromSalata(String value) {
    _salata.remove(value);
    prefs.setStringList('ff_salata', _salata);
  }

  void removeAtIndexFromSalata(int index) {
    _salata.removeAt(index);
    prefs.setStringList('ff_salata', _salata);
  }

  void updateSalataAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _salata[index] = updateFn(_salata[index]);
    prefs.setStringList('ff_salata', _salata);
  }

  void insertAtIndexInSalata(int index, String value) {
    _salata.insert(index, value);
    prefs.setStringList('ff_salata', _salata);
  }

  List<String> _hamburger = [
    'Hamburger',
    'Hamburger Menü',
    'Çizburger',
    'Çizburger Menü',
    'G3 Sandviç',
    'G3 Menü'
  ];
  List<String> get hamburger => _hamburger;
  set hamburger(List<String> value) {
    _hamburger = value;
    prefs.setStringList('ff_hamburger', value);
  }

  void addToHamburger(String value) {
    _hamburger.add(value);
    prefs.setStringList('ff_hamburger', _hamburger);
  }

  void removeFromHamburger(String value) {
    _hamburger.remove(value);
    prefs.setStringList('ff_hamburger', _hamburger);
  }

  void removeAtIndexFromHamburger(int index) {
    _hamburger.removeAt(index);
    prefs.setStringList('ff_hamburger', _hamburger);
  }

  void updateHamburgerAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _hamburger[index] = updateFn(_hamburger[index]);
    prefs.setStringList('ff_hamburger', _hamburger);
  }

  void insertAtIndexInHamburger(int index, String value) {
    _hamburger.insert(index, value);
    prefs.setStringList('ff_hamburger', _hamburger);
  }

  List<String> _anaYemekler = [
    'Köri Soslu Tavuk',
    'Et Köfte Servis',
    'İnegöl Köfte Servis',
    'Piliç Şinitzel',
    'Susamlı Tavuk',
    'Piliç Nuget',
    'Garden Blue',
    'Damla Tabağı',
    'Mantı',
    'Tavuk Fajita'
  ];
  List<String> get anaYemekler => _anaYemekler;
  set anaYemekler(List<String> value) {
    _anaYemekler = value;
    prefs.setStringList('ff_anaYemekler', value);
  }

  void addToAnaYemekler(String value) {
    _anaYemekler.add(value);
    prefs.setStringList('ff_anaYemekler', _anaYemekler);
  }

  void removeFromAnaYemekler(String value) {
    _anaYemekler.remove(value);
    prefs.setStringList('ff_anaYemekler', _anaYemekler);
  }

  void removeAtIndexFromAnaYemekler(int index) {
    _anaYemekler.removeAt(index);
    prefs.setStringList('ff_anaYemekler', _anaYemekler);
  }

  void updateAnaYemeklerAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _anaYemekler[index] = updateFn(_anaYemekler[index]);
    prefs.setStringList('ff_anaYemekler', _anaYemekler);
  }

  void insertAtIndexInAnaYemekler(int index, String value) {
    _anaYemekler.insert(index, value);
    prefs.setStringList('ff_anaYemekler', _anaYemekler);
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
