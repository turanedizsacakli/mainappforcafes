import '/backend/backend.dart';
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

  // State field(s) for CheckboxListTile widget.

  Map<MealsRecord, bool> checkboxListTileValueMap = {};
  List<MealsRecord> get checkboxListTileCheckedItems =>
      checkboxListTileValueMap.entries
          .where((e) => e.value)
          .map((e) => e.key)
          .toList();

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
