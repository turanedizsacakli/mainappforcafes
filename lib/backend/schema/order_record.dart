import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrderRecord extends FirestoreRecord {
  OrderRecord._(
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
      FirebaseFirestore.instance.collection('order');

  static Stream<OrderRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrderRecord.fromSnapshot(s));

  static Future<OrderRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrderRecord.fromSnapshot(s));

  static OrderRecord fromSnapshot(DocumentSnapshot snapshot) => OrderRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrderRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrderRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrderRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrderRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrderRecordData({
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

class OrderRecordDocumentEquality implements Equality<OrderRecord> {
  const OrderRecordDocumentEquality();

  @override
  bool equals(OrderRecord? e1, OrderRecord? e2) {
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
  int hash(OrderRecord? e) => const ListEquality().hash([
        e?.tableNumber,
        e?.costOfThisPost,
        e?.date,
        e?.waiterName,
        e?.orderList,
        e?.isOrderReady,
        e?.isCostPaid
      ]);

  @override
  bool isValidKey(Object? o) => o is OrderRecord;
}
