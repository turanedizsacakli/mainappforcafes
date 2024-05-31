import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Table1Record extends FirestoreRecord {
  Table1Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "tableNumber" field.
  int? _tableNumber;
  int get tableNumber => _tableNumber ?? 0;
  bool hasTableNumber() => _tableNumber != null;

  // "costOfThisPost" field.
  double? _costOfThisPost;
  double get costOfThisPost => _costOfThisPost ?? 0.0;
  bool hasCostOfThisPost() => _costOfThisPost != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "waiterName" field.
  String? _waiterName;
  String get waiterName => _waiterName ?? '';
  bool hasWaiterName() => _waiterName != null;

  // "orderList" field.
  List<String>? _orderList;
  List<String> get orderList => _orderList ?? const [];
  bool hasOrderList() => _orderList != null;

  // "isOrderReady" field.
  bool? _isOrderReady;
  bool get isOrderReady => _isOrderReady ?? false;
  bool hasIsOrderReady() => _isOrderReady != null;

  // "isCostPaid" field.
  bool? _isCostPaid;
  bool get isCostPaid => _isCostPaid ?? false;
  bool hasIsCostPaid() => _isCostPaid != null;

  void _initializeFields() {
    _tableNumber = castToType<int>(snapshotData['tableNumber']);
    _costOfThisPost = castToType<double>(snapshotData['costOfThisPost']);
    _date = snapshotData['date'] as DateTime?;
    _waiterName = snapshotData['waiterName'] as String?;
    _orderList = getDataList(snapshotData['orderList']);
    _isOrderReady = snapshotData['isOrderReady'] as bool?;
    _isCostPaid = snapshotData['isCostPaid'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('table1');

  static Stream<Table1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Table1Record.fromSnapshot(s));

  static Future<Table1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Table1Record.fromSnapshot(s));

  static Table1Record fromSnapshot(DocumentSnapshot snapshot) => Table1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Table1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Table1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Table1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Table1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTable1RecordData({
  int? tableNumber,
  double? costOfThisPost,
  DateTime? date,
  String? waiterName,
  bool? isOrderReady,
  bool? isCostPaid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tableNumber': tableNumber,
      'costOfThisPost': costOfThisPost,
      'date': date,
      'waiterName': waiterName,
      'isOrderReady': isOrderReady,
      'isCostPaid': isCostPaid,
    }.withoutNulls,
  );

  return firestoreData;
}

class Table1RecordDocumentEquality implements Equality<Table1Record> {
  const Table1RecordDocumentEquality();

  @override
  bool equals(Table1Record? e1, Table1Record? e2) {
    const listEquality = ListEquality();
    return e1?.tableNumber == e2?.tableNumber &&
        e1?.costOfThisPost == e2?.costOfThisPost &&
        e1?.date == e2?.date &&
        e1?.waiterName == e2?.waiterName &&
        listEquality.equals(e1?.orderList, e2?.orderList) &&
        e1?.isOrderReady == e2?.isOrderReady &&
        e1?.isCostPaid == e2?.isCostPaid;
  }

  @override
  int hash(Table1Record? e) => const ListEquality().hash([
        e?.tableNumber,
        e?.costOfThisPost,
        e?.date,
        e?.waiterName,
        e?.orderList,
        e?.isOrderReady,
        e?.isCostPaid
      ]);

  @override
  bool isValidKey(Object? o) => o is Table1Record;
}
