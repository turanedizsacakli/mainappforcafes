import '/flutter_flow/flutter_flow_util.dart';
import 'deneme_copy_widget.dart' show DenemeCopyWidget;
import 'package:flutter/material.dart';

class DenemeCopyModel extends FlutterFlowModel<DenemeCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
