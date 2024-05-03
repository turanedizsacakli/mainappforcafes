import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'choose_eating_order_page_copy_copy_widget.dart'
    show ChooseEatingOrderPageCopyCopyWidget;
import 'package:flutter/material.dart';

class ChooseEatingOrderPageCopyCopyModel
    extends FlutterFlowModel<ChooseEatingOrderPageCopyCopyWidget> {
  ///  Local state fields for this page.

  double? cost;

  String? orderReason;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues1;
  FormFieldController<List<String>>? checkboxGroupValueController1;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues2;
  FormFieldController<List<String>>? checkboxGroupValueController2;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues3;
  FormFieldController<List<String>>? checkboxGroupValueController3;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues4;
  FormFieldController<List<String>>? checkboxGroupValueController4;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues5;
  FormFieldController<List<String>>? checkboxGroupValueController5;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues6;
  FormFieldController<List<String>>? checkboxGroupValueController6;
  // State field(s) for mealDropDown widget.
  String? mealDropDownValue1;
  FormFieldController<String>? mealDropDownValueController1;
  // State field(s) for mealDropDown widget.
  String? mealDropDownValue2;
  FormFieldController<String>? mealDropDownValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
