import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'deneme_copy_widget.dart' show DenemeCopyWidget;
import 'package:flutter/material.dart';

class DenemeCopyModel extends FlutterFlowModel<DenemeCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for CheckboxListTile widget.

  Map<MealsRecord, bool> checkboxListTileValueMap = {};
  List<MealsRecord> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
