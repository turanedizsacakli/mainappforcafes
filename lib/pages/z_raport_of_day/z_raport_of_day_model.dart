import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'z_raport_of_day_widget.dart' show ZRaportOfDayWidget;
import 'package:flutter/material.dart';

class ZRaportOfDayModel extends FlutterFlowModel<ZRaportOfDayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  Map<ExOrderRecord, bool> checkboxValueMap = {};
  List<ExOrderRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
