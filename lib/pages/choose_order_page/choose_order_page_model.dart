import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'choose_order_page_widget.dart' show ChooseOrderPageWidget;
import 'package:flutter/material.dart';

class ChooseOrderPageModel extends FlutterFlowModel<ChooseOrderPageWidget> {
  ///  Local state fields for this page.

  double? cost;

  String? orderReason;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

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
    tabBarController?.dispose();
  }
}
