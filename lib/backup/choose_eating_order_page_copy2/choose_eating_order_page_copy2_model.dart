import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'choose_eating_order_page_copy2_widget.dart'
    show ChooseEatingOrderPageCopy2Widget;
import 'package:flutter/material.dart';

class ChooseEatingOrderPageCopy2Model
    extends FlutterFlowModel<ChooseEatingOrderPageCopy2Widget> {
  ///  Local state fields for this page.

  double? cost = 0.0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for mealDropDown widget.
  String? mealDropDownValue;
  FormFieldController<String>? mealDropDownValueController;
  // State field(s) for portionRadioButton widget.
  FormFieldController<String>? portionRadioButtonValueController;
  // State field(s) for featuresCheckboxGroup widget.
  List<String>? featuresCheckboxGroupValues;
  FormFieldController<List<String>>? featuresCheckboxGroupValueController;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  List<MealsRecord>? textPreviousSnapshot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Additional helper methods.
  String? get portionRadioButtonValue =>
      portionRadioButtonValueController?.value;
  String? get radioButtonValue => radioButtonValueController?.value;
}
