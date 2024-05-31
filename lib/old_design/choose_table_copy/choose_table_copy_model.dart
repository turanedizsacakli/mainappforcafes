import '/flutter_flow/flutter_flow_util.dart';
import 'choose_table_copy_widget.dart' show ChooseTableCopyWidget;
import 'package:flutter/material.dart';

class ChooseTableCopyModel extends FlutterFlowModel<ChooseTableCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
