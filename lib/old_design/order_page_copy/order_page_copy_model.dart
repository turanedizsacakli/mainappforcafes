import '/flutter_flow/flutter_flow_util.dart';
import 'order_page_copy_widget.dart' show OrderPageCopyWidget;
import 'package:flutter/material.dart';

class OrderPageCopyModel extends FlutterFlowModel<OrderPageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
