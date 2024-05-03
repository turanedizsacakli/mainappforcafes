import '/flutter_flow/flutter_flow_util.dart';
import 'admin_order_page_widget.dart' show AdminOrderPageWidget;
import 'package:flutter/material.dart';

class AdminOrderPageModel extends FlutterFlowModel<AdminOrderPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
