import '/flutter_flow/flutter_flow_util.dart';
import 'payment_detailed_page_widget.dart' show PaymentDetailedPageWidget;
import 'package:flutter/material.dart';

class PaymentDetailedPageModel
    extends FlutterFlowModel<PaymentDetailedPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
