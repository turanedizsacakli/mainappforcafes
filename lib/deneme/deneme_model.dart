import '/flutter_flow/flutter_flow_util.dart';
import 'deneme_widget.dart' show DenemeWidget;
import 'package:flutter/material.dart';

class DenemeModel extends FlutterFlowModel<DenemeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
