import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'choose_eating_order_page_copy2_model.dart';
export 'choose_eating_order_page_copy2_model.dart';

class ChooseEatingOrderPageCopy2Widget extends StatefulWidget {
  const ChooseEatingOrderPageCopy2Widget({
    super.key,
    double? pageCost,
  }) : pageCost = pageCost ?? 0.0;

  final double pageCost;

  @override
  State<ChooseEatingOrderPageCopy2Widget> createState() =>
      _ChooseEatingOrderPageCopy2WidgetState();
}

class _ChooseEatingOrderPageCopy2WidgetState
    extends State<ChooseEatingOrderPageCopy2Widget> {
  late ChooseEatingOrderPageCopy2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseEatingOrderPageCopy2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).success,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Yemek Siparişi Alma Sayfası',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Siparişi Alan Kişi : ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                FFAppState().waiterName,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Masa Numarası : ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                FFAppState().tableNumber.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: Text(
                                'Yemek Seçimi',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: StreamBuilder<List<MealsRecord>>(
                                stream: queryMealsRecord(),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  List<MealsRecord>
                                      mealDropDownMealsRecordList =
                                      snapshot.data!;
                                  return FlutterFlowDropDown<String>(
                                    controller:
                                        _model.mealDropDownValueController ??=
                                            FormFieldController<String>(null),
                                    options: mealDropDownMealsRecordList
                                        .map((e) => e.mealName)
                                        .toList(),
                                    onChanged: (val) => setState(
                                        () => _model.mealDropDownValue = val),
                                    width: 300.0,
                                    height: 50.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText: 'YEMEK SEÇİNİZ...',
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  );
                                },
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 102.0,
                                          decoration: const BoxDecoration(),
                                          child: FlutterFlowRadioButton(
                                            options: [
                                              '1 Porsiyon',
                                              '1,5 Porsiyon',
                                              '2 Porsiyon'
                                            ].toList(),
                                            onChanged: (val) => setState(() {}),
                                            controller: _model
                                                    .portionRadioButtonValueController ??=
                                                FormFieldController<String>(
                                                    null),
                                            optionHeight: 32.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            selectedTextStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            buttonPosition:
                                                RadioButtonPosition.left,
                                            direction: Axis.vertical,
                                            radioButtonColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            inactiveRadioButtonColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            toggleable: false,
                                            horizontalAlignment:
                                                WrapAlignment.start,
                                            verticalAlignment:
                                                WrapCrossAlignment.start,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 100.0,
                                          decoration: const BoxDecoration(),
                                          child: FlutterFlowCheckboxGroup(
                                            options: const [
                                              'Sos',
                                              'Ketçap',
                                              'Mayonez'
                                            ],
                                            onChanged: (val) async {
                                              setState(() => _model
                                                      .featuresCheckboxGroupValues =
                                                  val);
                                              setState(() {
                                                FFAppState().featuresListState =
                                                    _model
                                                        .featuresCheckboxGroupValues!
                                                        .toList()
                                                        .cast<String>();
                                              });
                                            },
                                            controller: _model
                                                    .featuresCheckboxGroupValueController ??=
                                                FormFieldController<
                                                    List<String>>(
                                              [],
                                            ),
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                            checkboxBorderColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      letterSpacing: 0.0,
                                                    ),
                                            checkboxBorderRadius:
                                                BorderRadius.circular(4.0),
                                            initialized: _model
                                                    .featuresCheckboxGroupValues !=
                                                null,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        StreamBuilder<List<DrinksRecord>>(
                                          stream: queryDrinksRecord(),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<DrinksRecord>
                                                containerDrinksRecordList =
                                                snapshot.data!;
                                            return Container(
                                              width: 100.0,
                                              decoration: const BoxDecoration(),
                                              child: FlutterFlowRadioButton(
                                                options:
                                                    containerDrinksRecordList
                                                        .map((e) =>
                                                            e.drinkingName)
                                                        .toList()
                                                        .toList(),
                                                onChanged: (val) =>
                                                    setState(() {}),
                                                controller: _model
                                                        .radioButtonValueController ??=
                                                    FormFieldController<String>(
                                                        null),
                                                optionHeight: 32.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                selectedTextStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                                buttonPosition:
                                                    RadioButtonPosition.left,
                                                direction: Axis.vertical,
                                                radioButtonColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                inactiveRadioButtonColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                toggleable: false,
                                                horizontalAlignment:
                                                    WrapAlignment.start,
                                                verticalAlignment:
                                                    WrapCrossAlignment.start,
                                              ),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ].divide(const SizedBox(height: 12.0)),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Container(
                          width: 358.0,
                          height: 116.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(
                                  0.0,
                                  3.0,
                                ),
                              )
                            ],
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 2.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'MASA ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        FFAppState().tableNumber.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      _model.portionRadioButtonValue,
                                      '0 Porsiyon',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    '  ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      _model.mealDropDownValue,
                                      'Döner',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'İçecek Olarak : ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      _model.radioButtonValue,
                                      'içecek',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Özel Olarak : ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      final features = (_model
                                                  .featuresCheckboxGroupValues
                                                  ?.toList() ??
                                              [])
                                          .take(5)
                                          .toList();
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: List.generate(features.length,
                                            (featuresIndex) {
                                          final featuresItem =
                                              features[featuresIndex];
                                          return Text(
                                            featuresItem,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  letterSpacing: 0.0,
                                                ),
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'TOPLAM TUTAR : ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
                      child: StreamBuilder<List<MealsRecord>>(
                        stream: queryMealsRecord(
                          queryBuilder: (mealsRecord) => mealsRecord.where(
                            'mealName',
                            isEqualTo: _model.mealDropDownValue,
                          ),
                          singleRecord: true,
                        )..listen((snapshot) async {
                            List<MealsRecord> textMealsRecordList = snapshot;
                            final textMealsRecord =
                                textMealsRecordList.isNotEmpty
                                    ? textMealsRecordList.first
                                    : null;
                            if (_model.textPreviousSnapshot != null &&
                                !const ListEquality(
                                        MealsRecordDocumentEquality())
                                    .equals(textMealsRecordList,
                                        _model.textPreviousSnapshot)) {
                              setState(() {
                                _model.cost = textMealsRecord?.mealCost;
                              });

                              setState(() {});
                            }
                            _model.textPreviousSnapshot = snapshot;
                          }),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                              ),
                            );
                          }
                          List<MealsRecord> textMealsRecordList =
                              snapshot.data!;
                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final textMealsRecord = textMealsRecordList.isNotEmpty
                              ? textMealsRecordList.first
                              : null;
                          return Text(
                            valueOrDefault<String>(
                              textMealsRecord?.mealCost.toString(),
                              '00',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('showTableButton pressed ...');
                  },
                  text: 'Masayı Gör',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 5.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await OrderRecord.collection.doc().set({
                        ...createOrderRecordData(
                          tableNumber: FFAppState().tableNumber,
                          drinkingName: _model.radioButtonValue,
                          mealName: _model.mealDropDownValue,
                          portionOfMeal: () {
                            if (_model.portionRadioButtonValue ==
                                '1 Prosiyon') {
                              return 1.0;
                            } else if (_model.portionRadioButtonValue ==
                                '1,5 Prosiyon') {
                              return 1.5;
                            } else if (_model.portionRadioButtonValue ==
                                '2 Prosiyon') {
                              return 2.0;
                            } else {
                              return 0.0;
                            }
                          }(),
                          waiterName: FFAppState().waiterName,
                          costOfThisPost: 0.0,
                        ),
                        ...mapToFirestore(
                          {
                            'featuresOfMeal': FFAppState().featuresListState,
                            'date': FieldValue.serverTimestamp(),
                          },
                        ),
                      });
                      if (FFAppState().tableNumber == 1) {
                        await TablesRecord.collection
                            .doc()
                            .set(createTablesRecordData(
                              table1: widget.pageCost,
                            ));
                      } else {
                        if (FFAppState().tableNumber == 2) {
                          await TablesRecord.collection
                              .doc()
                              .set(createTablesRecordData(
                                table1: widget.pageCost,
                              ));
                        } else {
                          if (FFAppState().tableNumber == 3) {
                            await TablesRecord.collection
                                .doc()
                                .set(createTablesRecordData(
                                  table1: widget.pageCost,
                                ));
                          }
                        }
                      }
                    },
                    text: '~ EKLE ~',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Readex Pro',
                                letterSpacing: 0.0,
                              ),
                      elevation: 3.0,
                      borderSide: const BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
              Text(
                valueOrDefault<String>(
                  _model.cost?.toString(),
                  '0',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                'Hello World',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
