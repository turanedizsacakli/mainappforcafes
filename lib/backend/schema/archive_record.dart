import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArchiveRecord extends FirestoreRecord {
  ArchiveRecord._(
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

  // "newOrderList" field.
  List<String>? _newOrderList;
  List<String> get newOrderList => _newOrderList ?? const [];
  bool hasNewOrderList() => _newOrderList != null;

  // "withCreditCard" field.
  bool? _withCreditCard;
  bool get withCreditCard => _withCreditCard ?? false;
  bool hasWithCreditCard() => _withCreditCard != null;

  // "withCashMoney" field.
  bool? _withCashMoney;
  bool get withCashMoney => _withCashMoney ?? false;
  bool hasWithCashMoney() => _withCashMoney != null;

  void _initializeFields() {
    _tableNumber = castToType<int>(snapshotData['tableNumber']);
    _costOfThisPost = castToType<double>(snapshotData['costOfThisPost']);
    _date = snapshotData['date'] as DateTime?;
    _waiterName = snapshotData['waiterName'] as String?;
    _orderList = getDataList(snapshotData['orderList']);
    _isOrderReady = snapshotData['isOrderReady'] as bool?;
    _isCostPaid = snapshotData['isCostPaid'] as bool?;
    _newOrderList = getDataList(snapshotData['newOrderList']);
    _withCreditCard = snapshotData['withCreditCard'] as bool?;
    _withCashMoney = snapshotData['withCashMoney'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('archive');

  static Stream<ArchiveRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArchiveRecord.fromSnapshot(s));

  static Future<ArchiveRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArchiveRecord.fromSnapshot(s));

  static ArchiveRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArchiveRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArchiveRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArchiveRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArchiveRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArchiveRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArchiveRecordData({
  int? tableNumber,
  double? costOfThisPost,
  DateTime? date,
  String? waiterName,
  bool? isOrderReady,
  bool? isCostPaid,
  bool? withCreditCard,
  bool? withCashMoney,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tableNumber': tableNumber,
      'costOfThisPost': costOfThisPost,
      'date': date,
      'waiterName': waiterName,
      'isOrderReady': isOrderReady,
      'isCostPaid': isCostPaid,
      'withCreditCard': withCreditCard,
      'withCashMoney': withCashMoney,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArchiveRecordDocumentEquality implements Equality<ArchiveRecord> {
  const ArchiveRecordDocumentEquality();

  @override
  bool equals(ArchiveRecord? e1, ArchiveRecord? e2) {
    const listEquality = ListEquality();
    return e1?.tableNumber == e2?.tableNumber &&
        e1?.costOfThisPost == e2?.costOfThisPost &&
        e1?.date == e2?.date &&
        e1?.waiterName == e2?.waiterName &&
        listEquality.equals(e1?.orderList, e2?.orderList) &&
        e1?.isOrderReady == e2?.isOrderReady &&
        e1?.isCostPaid == e2?.isCostPaid &&
        listEquality.equals(e1?.newOrderList, e2?.newOrderList) &&
        e1?.withCreditCard == e2?.withCreditCard &&
        e1?.withCashMoney == e2?.withCashMoney;
  }

  @override
  int hash(ArchiveRecord? e) => const ListEquality().hash([
        e?.tableNumber,
        e?.costOfThisPost,
        e?.date,
        e?.waiterName,
        e?.orderList,
        e?.isOrderReady,
        e?.isCostPaid,
        e?.newOrderList,
        e?.withCreditCard,
        e?.withCashMoney
      ]);

  @override
  bool isValidKey(Object? o) => o is ArchiveRecord;
}
