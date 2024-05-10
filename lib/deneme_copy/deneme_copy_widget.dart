import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'deneme_copy_model.dart';
export 'deneme_copy_model.dart';

class DenemeCopyWidget extends StatefulWidget {
  const DenemeCopyWidget({super.key});

  @override
  State<DenemeCopyWidget> createState() => _DenemeCopyWidgetState();
}

class _DenemeCopyWidgetState extends State<DenemeCopyWidget> {
  late DenemeCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DenemeCopyModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
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
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<MealsRecord> columnMealsRecordList = snapshot.data!;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(columnMealsRecordList.length,
                          (columnIndex) {
                        final columnMealsRecord =
                            columnMealsRecordList[columnIndex];
                        return Theme(
                          data: ThemeData(
                            checkboxTheme: const CheckboxThemeData(
                              visualDensity: VisualDensity.compact,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.shrinkWrap,
                            ),
                            unselectedWidgetColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                          child: CheckboxListTile(
                            value: _model.checkboxListTileValueMap[
                                columnMealsRecord] ??= false,
                            onChanged: (newValue) async {
                              setState(() => _model.checkboxListTileValueMap[
                                  columnMealsRecord] = newValue!);
                              if (newValue!) {
                                setState(() {
                                  FFAppState().deneme = _model
                                      .checkboxListTileCheckedItems
                                      .map((e) => e.mealName)
                                      .toList()
                                      .cast<String>();
                                  FFAppState().denemeCost = _model
                                      .checkboxListTileCheckedItems
                                      .map((e) => e.mealCost)
                                      .toList()
                                      .cast<double>();
                                });
                              }
                            },
                            title: Text(
                              columnMealsRecord.mealName,
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            subtitle: Text(
                              columnMealsRecord.mealCost.toString(),
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            tileColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            activeColor: FlutterFlowTheme.of(context).primary,
                            checkColor: FlutterFlowTheme.of(context).info,
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        );
                      }),
                    );
                  },
                ),
              ),
              Builder(
                builder: (context) {
                  final xxx = FFAppState().deneme.toList();
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(xxx.length, (xxxIndex) {
                      final xxxItem = xxx[xxxIndex];
                      return Text(
                        xxxItem,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                            ),
                      );
                    }),
                  );
                },
              ),
              Builder(
                builder: (context) {
                  final ccc = FFAppState().denemeCost.toList();
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(ccc.length, (cccIndex) {
                      final cccItem = ccc[cccIndex];
                      return Text(
                        cccItem.toString(),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              fontSize: 20.0,
                              letterSpacing: 0.0,
                            ),
                      );
                    }),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
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
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    List<MealsRecord> buttonMealsRecordList = snapshot.data!;
                    return FFButtonWidget(
                      onPressed: () async {
                        await queryMealsRecordOnce();
                      },
                      text: 'ata',
                      options: FFButtonOptions(
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    setState(() {
                      FFAppState().deneme = [];
                      FFAppState().denemeCost = [];
                    });
                  },
                  text: 'sıfırla',
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
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
