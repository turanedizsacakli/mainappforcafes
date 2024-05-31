import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TablesRecord extends FirestoreRecord {
  TablesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "table1" field.
  double? _table1;
  double get table1 => _table1 ?? 0.0;
  bool hasTable1() => _table1 != null;

  // "table2" field.
  double? _table2;
  double get table2 => _table2 ?? 0.0;
  bool hasTable2() => _table2 != null;

  // "table3" field.
  double? _table3;
  double get table3 => _table3 ?? 0.0;
  bool hasTable3() => _table3 != null;

  // "table4" field.
  double? _table4;
  double get table4 => _table4 ?? 0.0;
  bool hasTable4() => _table4 != null;

  // "table5" field.
  double? _table5;
  double get table5 => _table5 ?? 0.0;
  bool hasTable5() => _table5 != null;

  // "table6" field.
  double? _table6;
  double get table6 => _table6 ?? 0.0;
  bool hasTable6() => _table6 != null;

  // "cashPayment" field.
  double? _cashPayment;
  double get cashPayment => _cashPayment ?? 0.0;
  bool hasCashPayment() => _cashPayment != null;

  // "creditCardPayment" field.
  double? _creditCardPayment;
  double get creditCardPayment => _creditCardPayment ?? 0.0;
  bool hasCreditCardPayment() => _creditCardPayment != null;

  void _initializeFields() {
    _table1 = castToType<double>(snapshotData['table1']);
    _table2 = castToType<double>(snapshotData['table2']);
    _table3 = castToType<double>(snapshotData['table3']);
    _table4 = castToType<double>(snapshotData['table4']);
    _table5 = castToType<double>(snapshotData['table5']);
    _table6 = castToType<double>(snapshotData['table6']);
    _cashPayment = castToType<double>(snapshotData['cashPayment']);
    _creditCardPayment = castToType<double>(snapshotData['creditCardPayment']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tables');

  static Stream<TablesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TablesRecord.fromSnapshot(s));

  static Future<TablesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TablesRecord.fromSnapshot(s));

  static TablesRecord fromSnapshot(DocumentSnapshot snapshot) => TablesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TablesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TablesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TablesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TablesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTablesRecordData({
  double? table1,
  double? table2,
  double? table3,
  double? table4,
  double? table5,
  double? table6,
  double? cashPayment,
  double? creditCardPayment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'table1': table1,
      'table2': table2,
      'table3': table3,
      'table4': table4,
      'table5': table5,
      'table6': table6,
      'cashPayment': cashPayment,
      'creditCardPayment': creditCardPayment,
    }.withoutNulls,
  );

  return firestoreData;
}

class TablesRecordDocumentEquality implements Equality<TablesRecord> {
  const TablesRecordDocumentEquality();

  @override
  bool equals(TablesRecord? e1, TablesRecord? e2) {
    return e1?.table1 == e2?.table1 &&
        e1?.table2 == e2?.table2 &&
        e1?.table3 == e2?.table3 &&
        e1?.table4 == e2?.table4 &&
        e1?.table5 == e2?.table5 &&
        e1?.table6 == e2?.table6 &&
        e1?.cashPayment == e2?.cashPayment &&
        e1?.creditCardPayment == e2?.creditCardPayment;
  }

  @override
  int hash(TablesRecord? e) => const ListEquality().hash([
        e?.table1,
        e?.table2,
        e?.table3,
        e?.table4,
        e?.table5,
        e?.table6,
        e?.cashPayment,
        e?.creditCardPayment
      ]);

  @override
  bool isValidKey(Object? o) => o is TablesRecord;
}
