import '/flutter_flow/flutter_flow_util.dart';
import 'order_page_old_widget.dart' show OrderPageOldWidget;
import 'package:flutter/material.dart';

class OrderPageOldModel extends FlutterFlowModel<OrderPageOldWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
