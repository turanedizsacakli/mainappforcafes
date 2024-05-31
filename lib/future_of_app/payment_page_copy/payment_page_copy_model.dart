import '/flutter_flow/flutter_flow_util.dart';
import 'payment_page_copy_widget.dart' show PaymentPageCopyWidget;
import 'package:flutter/material.dart';

class PaymentPageCopyModel extends FlutterFlowModel<PaymentPageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
