import '/flutter_flow/flutter_flow_util.dart';
import 'choose_table_widget.dart' show ChooseTableWidget;
import 'package:flutter/material.dart';

class ChooseTableModel extends FlutterFlowModel<ChooseTableWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
