import '/flutter_flow/flutter_flow_util.dart';
import 'detailed_payment_page_widget.dart' show DetailedPaymentPageWidget;
import 'package:flutter/material.dart';

class DetailedPaymentPageModel
    extends FlutterFlowModel<DetailedPaymentPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
