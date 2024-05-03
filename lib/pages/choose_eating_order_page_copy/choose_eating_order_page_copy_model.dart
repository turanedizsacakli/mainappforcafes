import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'choose_eating_order_page_copy_widget.dart'
    show ChooseEatingOrderPageCopyWidget;
import 'package:flutter/material.dart';

class ChooseEatingOrderPageCopyModel
    extends FlutterFlowModel<ChooseEatingOrderPageCopyWidget> {
  ///  Local state fields for this page.

  double? cost;

  String? orderReason;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for mealDropDown widget.
  String? mealDropDownValue1;
  FormFieldController<String>? mealDropDownValueController1;
  // State field(s) for mealDropDown widget.
  String? mealDropDownValue2;
  FormFieldController<String>? mealDropDownValueController2;
  // State field(s) for mealDropDown widget.
  String? mealDropDownValue3;
  FormFieldController<String>? mealDropDownValueController3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
