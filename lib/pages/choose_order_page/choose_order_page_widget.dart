import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'choose_order_page_model.dart';
export 'choose_order_page_model.dart';

class ChooseOrderPageWidget extends StatefulWidget {
  const ChooseOrderPageWidget({
    super.key,
    this.pageCost,
    this.table1,
    this.table2,
    this.table3,
    this.table4,
    this.table5,
    this.table6,
    this.table7,
    this.table8,
    this.table9,
    this.table10,
    this.table11,
    this.table12,
  });

  final double? pageCost;
  final Table1Record? table1;
  final Table2Record? table2;
  final Table3Record? table3;
  final Table4Record? table4;
  final Table5Record? table5;
  final Table6Record? table6;
  final Table7Record? table7;
  final Table8Record? table8;
  final Table9Record? table9;
  final Table10Record? table10;
  final Table11Record? table11;
  final Table12Record? table12;

  @override
  State<ChooseOrderPageWidget> createState() => _ChooseOrderPageWidgetState();
}

class _ChooseOrderPageWidgetState extends State<ChooseOrderPageWidget>
    with TickerProviderStateMixin {
  late ChooseOrderPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChooseOrderPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {});

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
            'Sipariş Alma Sayfası',
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: const BoxDecoration(
                            color: Color(0x3F39D2C0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://picsum.photos/seed/421/600',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: const BoxDecoration(
                            color: Color(0x3C4B39EF),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://picsum.photos/seed/462/600',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: 100.0,
                          height: 100.0,
                          decoration: const BoxDecoration(
                            color: Color(0x3F39D2C0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.network(
                                    'https://picsum.photos/seed/421/600',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                    child: Container(
                      height: 650.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        children: [
                          Align(
                            alignment: const Alignment(0.0, 0),
                            child: TabBar(
                              labelColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              unselectedLabelColor:
                                  FlutterFlowTheme.of(context).secondaryText,
                              labelStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              unselectedLabelStyle: const TextStyle(),
                              indicatorColor:
                                  FlutterFlowTheme.of(context).primary,
                              padding: const EdgeInsets.all(4.0),
                              tabs: const [
                                Tab(
                                  text: 'YİYECEK',
                                ),
                                Tab(
                                  text: 'İÇEÇEK',
                                ),
                                Tab(
                                  text: 'NARGİLE',
                                ),
                              ],
                              controller: _model.tabBarController,
                              onTap: (i) async {
                                [
                                  () async {
                                    _model.orderReason = 'Yiyecek';
                                    setState(() {});
                                  },
                                  () async {
                                    _model.orderReason = 'İçecek';
                                    setState(() {});
                                  },
                                  () async {
                                    _model.orderReason = 'Nargile';
                                    setState(() {});
                                  }
                                ][i]();
                              },
                            ),
                          ),
                          Expanded(
                            child: TabBarView(
                              controller: _model.tabBarController,
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Siparişi Alan Kişi : ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  Text(
                                                    FFAppState().waiterName,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Masa Numarası : ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  Text(
                                                    FFAppState()
                                                        .tableNumber
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Sipariş Nedeni : ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  Text(
                                                    valueOrDefault<String>(
                                                      _model.orderReason,
                                                      '-',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 2.0),
                                              child: Text(
                                                'Yemek Seçimi',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: StreamBuilder<
                                                  List<MealsRecord>>(
                                                stream: queryMealsRecord(),
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
                                                  List<MealsRecord>
                                                      columnMealsRecordList =
                                                      snapshot.data!;

                                                  return SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: List.generate(
                                                          columnMealsRecordList
                                                              .length,
                                                          (columnIndex) {
                                                        final columnMealsRecord =
                                                            columnMealsRecordList[
                                                                columnIndex];
                                                        return Theme(
                                                          data: ThemeData(
                                                            checkboxTheme:
                                                                const CheckboxThemeData(
                                                              visualDensity:
                                                                  VisualDensity
                                                                      .compact,
                                                              materialTapTargetSize:
                                                                  MaterialTapTargetSize
                                                                      .shrinkWrap,
                                                            ),
                                                            unselectedWidgetColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                          ),
                                                          child:
                                                              CheckboxListTile(
                                                            value: _model
                                                                    .checkboxListTileValueMap[
                                                                columnMealsRecord] ??= false,
                                                            onChanged:
                                                                (newValue) async {
                                                              setState(() =>
                                                                  _model.checkboxListTileValueMap[
                                                                          columnMealsRecord] =
                                                                      newValue!);
                                                              if (newValue!) {
                                                                FFAppState().newOrderList = _model
                                                                    .checkboxListTileCheckedItems
                                                                    .map((e) => e
                                                                        .mealName)
                                                                    .toList()
                                                                    .cast<
                                                                        String>();
                                                                FFAppState().pageCost = _model
                                                                    .checkboxListTileCheckedItems
                                                                    .map((e) => e
                                                                        .mealCost)
                                                                    .toList()
                                                                    .cast<
                                                                        double>();
                                                                setState(() {});
                                                                FFAppState()
                                                                    .pageTotalCost = FFAppState()
                                                                        .pageTotalCost +
                                                                    FFAppState()
                                                                            .pageCost[
                                                                        _model
                                                                            .tabBarCurrentIndex];
                                                                setState(() {});
                                                                FFAppState()
                                                                        .deletedTheCost =
                                                                    FFAppState()
                                                                        .pageCost
                                                                        .toList()
                                                                        .cast<
                                                                            double>();
                                                                setState(() {});
                                                              } else {
                                                                FFAppState()
                                                                    .removeAtIndexFromOrder(
                                                                        _model
                                                                            .tabBarCurrentIndex);
                                                                FFAppState()
                                                                    .removeAtIndexFromPageCost(
                                                                        _model
                                                                            .tabBarCurrentIndex);
                                                                setState(() {});
                                                                FFAppState()
                                                                    .pageTotalCost = FFAppState()
                                                                        .pageTotalCost +
                                                                    ((double
                                                                        var1) {
                                                                      return var1 =
                                                                          -1 *
                                                                              var1;
                                                                    }(FFAppState()
                                                                        .deletedTheCost
                                                                        .last));
                                                                setState(() {});
                                                              }
                                                            },
                                                            title: Text(
                                                              columnMealsRecord
                                                                  .mealName,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            subtitle: Text(
                                                              columnMealsRecord
                                                                  .mealCost
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .labelMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            tileColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            activeColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            checkColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                            dense: true,
                                                            controlAffinity:
                                                                ListTileControlAffinity
                                                                    .trailing,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          50.0),
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                          ].divide(const SizedBox(height: 6.0)),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 8.0),
                                                child: Container(
                                                  width: 358.0,
                                                  height: 116.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    boxShadow: const [
                                                      BoxShadow(
                                                        blurRadius: 4.0,
                                                        color:
                                                            Color(0x33000000),
                                                        offset: Offset(
                                                          0.0,
                                                          3.0,
                                                        ),
                                                      )
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.0),
                                                  ),
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                0.0, -1.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      2.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                'MASA ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              Text(
                                                                FFAppState()
                                                                    .tableNumber
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Text(
                                                            'SİPARİŞ : ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          Text(
                                                            '  ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          Builder(
                                                            builder: (context) {
                                                              final orderList =
                                                                  FFAppState()
                                                                      .newOrderList
                                                                      .toList();

                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: List.generate(
                                                                    orderList
                                                                        .length,
                                                                    (orderListIndex) {
                                                                  final orderListItem =
                                                                      orderList[
                                                                          orderListIndex];
                                                                  return Text(
                                                                    orderListItem,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  );
                                                                }),
                                                              );
                                                            },
                                                          ),
                                                          Text(
                                                            '  ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          Builder(
                                                            builder: (context) {
                                                              final orderListCost =
                                                                  FFAppState()
                                                                      .pageCost
                                                                      .toList();

                                                              return Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: List.generate(
                                                                    orderListCost
                                                                        .length,
                                                                    (orderListCostIndex) {
                                                                  final orderListCostItem =
                                                                      orderListCost[
                                                                          orderListCostIndex];
                                                                  return Text(
                                                                    orderListCostItem
                                                                        .toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          letterSpacing:
                                                                              0.0,
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
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'TOPLAM TUTAR : ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 5.0),
                                              child: Text(
                                                FFAppState()
                                                    .pageTotalCost
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 5.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              if (FFAppState().tableNumber ==
                                                  1) {
                                                if (widget.table1 != null) {
                                                  await widget
                                                      .table1!.reference
                                                      .delete();
                                                  FFAppState().order =
                                                      (List<String> var1,
                                                                  List<String>
                                                                      var2) {
                                                    return var1 =
                                                        List.from(var1)
                                                          ..addAll(var2);
                                                  }(
                                                              FFAppState()
                                                                  .order
                                                                  .toList(),
                                                              FFAppState()
                                                                  .newOrderList
                                                                  .toList())
                                                          .toList()
                                                          .cast<String>();
                                                  setState(() {});

                                                  await Table1Record.collection
                                                      .doc()
                                                      .set({
                                                    ...createTable1RecordData(
                                                      tableNumber: FFAppState()
                                                          .tableNumber,
                                                      costOfThisPost:
                                                          FFAppState()
                                                              .pageTotalCost,
                                                      waiterName: FFAppState()
                                                          .waiterName,
                                                      isOrderReady: false,
                                                      isCostPaid: false,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'date': FieldValue
                                                            .serverTimestamp(),
                                                        'orderList':
                                                            FFAppState().order,
                                                        'newOrderList':
                                                            FFAppState()
                                                                .newOrderList,
                                                      },
                                                    ),
                                                  });
                                                } else {
                                                  await Table1Record.collection
                                                      .doc()
                                                      .set({
                                                    ...createTable1RecordData(
                                                      tableNumber: FFAppState()
                                                          .tableNumber,
                                                      costOfThisPost:
                                                          FFAppState()
                                                              .pageTotalCost,
                                                      waiterName: FFAppState()
                                                          .waiterName,
                                                      isOrderReady: false,
                                                      isCostPaid: false,
                                                    ),
                                                    ...mapToFirestore(
                                                      {
                                                        'date': FieldValue
                                                            .serverTimestamp(),
                                                        'orderList':
                                                            FFAppState().order,
                                                        'newOrderList':
                                                            FFAppState()
                                                                .newOrderList,
                                                      },
                                                    ),
                                                  });
                                                }

                                                // clearAll
                                                FFAppState().order = [];
                                                FFAppState().deletedTheCost =
                                                    [];
                                                FFAppState().pageCost = [];
                                                FFAppState().pageTotalCost =
                                                    0.0;
                                                FFAppState().newOrderList = [];
                                                setState(() {});

                                                context
                                                    .pushNamed('ChooseTable');
                                              } else {
                                                if (FFAppState().tableNumber ==
                                                    2) {
                                                  if (widget.table2 != null) {
                                                    await widget
                                                        .table1!.reference
                                                        .delete();
                                                    FFAppState().order =
                                                        (List<String> var1,
                                                                    List<String>
                                                                        var2) {
                                                      return var1 =
                                                          List.from(var1)
                                                            ..addAll(var2);
                                                    }(
                                                                FFAppState()
                                                                    .order
                                                                    .toList(),
                                                                FFAppState()
                                                                    .newOrderList
                                                                    .toList())
                                                            .toList()
                                                            .cast<String>();
                                                    setState(() {});

                                                    await Table2Record
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createTable2RecordData(
                                                        tableNumber:
                                                            FFAppState()
                                                                .tableNumber,
                                                        costOfThisPost:
                                                            FFAppState()
                                                                .pageTotalCost,
                                                        waiterName: FFAppState()
                                                            .waiterName,
                                                        isOrderReady: false,
                                                        isCostPaid: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'date': FieldValue
                                                              .serverTimestamp(),
                                                          'orderList':
                                                              FFAppState()
                                                                  .order,
                                                          'newOrderList':
                                                              FFAppState()
                                                                  .newOrderList,
                                                        },
                                                      ),
                                                    });
                                                  } else {
                                                    await Table2Record
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createTable2RecordData(
                                                        tableNumber:
                                                            FFAppState()
                                                                .tableNumber,
                                                        costOfThisPost:
                                                            FFAppState()
                                                                .pageTotalCost,
                                                        waiterName: FFAppState()
                                                            .waiterName,
                                                        isOrderReady: false,
                                                        isCostPaid: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'date': FieldValue
                                                              .serverTimestamp(),
                                                          'orderList':
                                                              FFAppState()
                                                                  .order,
                                                          'newOrderList':
                                                              FFAppState()
                                                                  .newOrderList,
                                                        },
                                                      ),
                                                    });
                                                  }

                                                  // clearAll
                                                  FFAppState().order = [];
                                                  FFAppState().deletedTheCost =
                                                      [];
                                                  FFAppState().pageCost = [];
                                                  FFAppState().pageTotalCost =
                                                      0.0;
                                                  FFAppState().newOrderList =
                                                      [];
                                                  setState(() {});

                                                  context
                                                      .pushNamed('ChooseTable');
                                                } else {
                                                  if (FFAppState()
                                                          .tableNumber ==
                                                      3) {
                                                    if (widget.table3 !=
                                                        null) {
                                                      await widget
                                                          .table3!.reference
                                                          .delete();
                                                      FFAppState()
                                                          .order = (List<String>
                                                                      var1,
                                                                  List<String>
                                                                      var2) {
                                                        return var1 =
                                                            List.from(var1)
                                                              ..addAll(var2);
                                                      }(
                                                              FFAppState()
                                                                  .order
                                                                  .toList(),
                                                              FFAppState()
                                                                  .newOrderList
                                                                  .toList())
                                                          .toList()
                                                          .cast<String>();
                                                      setState(() {});

                                                      await Table3Record
                                                          .collection
                                                          .doc()
                                                          .set({
                                                        ...createTable3RecordData(
                                                          tableNumber:
                                                              FFAppState()
                                                                  .tableNumber,
                                                          costOfThisPost:
                                                              FFAppState()
                                                                  .pageTotalCost,
                                                          waiterName:
                                                              FFAppState()
                                                                  .waiterName,
                                                          isOrderReady: false,
                                                          isCostPaid: false,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'date': FieldValue
                                                                .serverTimestamp(),
                                                            'orderList':
                                                                FFAppState()
                                                                    .order,
                                                            'newOrderList':
                                                                FFAppState()
                                                                    .newOrderList,
                                                          },
                                                        ),
                                                      });
                                                    } else {
                                                      await Table3Record
                                                          .collection
                                                          .doc()
                                                          .set({
                                                        ...createTable3RecordData(
                                                          tableNumber:
                                                              FFAppState()
                                                                  .tableNumber,
                                                          costOfThisPost:
                                                              FFAppState()
                                                                  .pageTotalCost,
                                                          waiterName:
                                                              FFAppState()
                                                                  .waiterName,
                                                          isOrderReady: false,
                                                          isCostPaid: false,
                                                        ),
                                                        ...mapToFirestore(
                                                          {
                                                            'date': FieldValue
                                                                .serverTimestamp(),
                                                            'orderList':
                                                                FFAppState()
                                                                    .order,
                                                            'newOrderList':
                                                                FFAppState()
                                                                    .newOrderList,
                                                          },
                                                        ),
                                                      });
                                                    }

                                                    // clearAll
                                                    FFAppState().order = [];
                                                    FFAppState()
                                                        .deletedTheCost = [];
                                                    FFAppState().pageCost = [];
                                                    FFAppState().pageTotalCost =
                                                        0.0;
                                                    FFAppState().newOrderList =
                                                        [];
                                                    setState(() {});

                                                    context.pushNamed(
                                                        'ChooseTable');
                                                  } else {
                                                    if (FFAppState()
                                                            .tableNumber ==
                                                        4) {
                                                      if (widget.table4 !=
                                                          null) {
                                                        await widget
                                                            .table4!.reference
                                                            .delete();
                                                        FFAppState()
                                                            .order = (List<String>
                                                                        var1,
                                                                    List<String>
                                                                        var2) {
                                                          return var1 =
                                                              List.from(var1)
                                                                ..addAll(var2);
                                                        }(
                                                                FFAppState()
                                                                    .order
                                                                    .toList(),
                                                                FFAppState()
                                                                    .newOrderList
                                                                    .toList())
                                                            .toList()
                                                            .cast<String>();
                                                        setState(() {});

                                                        await Table4Record
                                                            .collection
                                                            .doc()
                                                            .set({
                                                          ...createTable4RecordData(
                                                            tableNumber:
                                                                FFAppState()
                                                                    .tableNumber,
                                                            costOfThisPost:
                                                                FFAppState()
                                                                    .pageTotalCost,
                                                            waiterName:
                                                                FFAppState()
                                                                    .waiterName,
                                                            isOrderReady: false,
                                                            isCostPaid: false,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'date': FieldValue
                                                                  .serverTimestamp(),
                                                              'orderList':
                                                                  FFAppState()
                                                                      .order,
                                                              'newOrderList':
                                                                  FFAppState()
                                                                      .newOrderList,
                                                            },
                                                          ),
                                                        });
                                                      } else {
                                                        await Table4Record
                                                            .collection
                                                            .doc()
                                                            .set({
                                                          ...createTable4RecordData(
                                                            tableNumber:
                                                                FFAppState()
                                                                    .tableNumber,
                                                            costOfThisPost:
                                                                FFAppState()
                                                                    .pageTotalCost,
                                                            waiterName:
                                                                FFAppState()
                                                                    .waiterName,
                                                            isOrderReady: false,
                                                            isCostPaid: false,
                                                          ),
                                                          ...mapToFirestore(
                                                            {
                                                              'date': FieldValue
                                                                  .serverTimestamp(),
                                                              'orderList':
                                                                  FFAppState()
                                                                      .order,
                                                              'newOrderList':
                                                                  FFAppState()
                                                                      .newOrderList,
                                                            },
                                                          ),
                                                        });
                                                      }

                                                      // clearAll
                                                      FFAppState().order = [];
                                                      FFAppState()
                                                          .deletedTheCost = [];
                                                      FFAppState().pageCost =
                                                          [];
                                                      FFAppState()
                                                          .pageTotalCost = 0.0;
                                                      FFAppState()
                                                          .newOrderList = [];
                                                      setState(() {});

                                                      context.pushNamed(
                                                          'ChooseTable');
                                                    } else {
                                                      if (FFAppState()
                                                              .tableNumber ==
                                                          5) {
                                                        if (widget.table5 !=
                                                            null) {
                                                          await widget
                                                              .table5!.reference
                                                              .delete();
                                                          FFAppState()
                                                              .order = (List<String>
                                                                          var1,
                                                                      List<String>
                                                                          var2) {
                                                            return var1 = List
                                                                .from(var1)
                                                              ..addAll(var2);
                                                          }(
                                                                  FFAppState()
                                                                      .order
                                                                      .toList(),
                                                                  FFAppState()
                                                                      .newOrderList
                                                                      .toList())
                                                              .toList()
                                                              .cast<String>();
                                                          setState(() {});

                                                          await Table5Record
                                                              .collection
                                                              .doc()
                                                              .set({
                                                            ...createTable5RecordData(
                                                              tableNumber:
                                                                  FFAppState()
                                                                      .tableNumber,
                                                              costOfThisPost:
                                                                  FFAppState()
                                                                      .pageTotalCost,
                                                              waiterName:
                                                                  FFAppState()
                                                                      .waiterName,
                                                              isOrderReady:
                                                                  false,
                                                              isCostPaid: false,
                                                            ),
                                                            ...mapToFirestore(
                                                              {
                                                                'date': FieldValue
                                                                    .serverTimestamp(),
                                                                'orderList':
                                                                    FFAppState()
                                                                        .order,
                                                                'newOrderList':
                                                                    FFAppState()
                                                                        .newOrderList,
                                                              },
                                                            ),
                                                          });
                                                        } else {
                                                          await Table5Record
                                                              .collection
                                                              .doc()
                                                              .set({
                                                            ...createTable5RecordData(
                                                              tableNumber:
                                                                  FFAppState()
                                                                      .tableNumber,
                                                              costOfThisPost:
                                                                  FFAppState()
                                                                      .pageTotalCost,
                                                              waiterName:
                                                                  FFAppState()
                                                                      .waiterName,
                                                              isOrderReady:
                                                                  false,
                                                              isCostPaid: false,
                                                            ),
                                                            ...mapToFirestore(
                                                              {
                                                                'date': FieldValue
                                                                    .serverTimestamp(),
                                                                'orderList':
                                                                    FFAppState()
                                                                        .order,
                                                                'newOrderList':
                                                                    FFAppState()
                                                                        .newOrderList,
                                                              },
                                                            ),
                                                          });
                                                        }

                                                        // clearAll
                                                        FFAppState().order = [];
                                                        FFAppState()
                                                            .deletedTheCost = [];
                                                        FFAppState().pageCost =
                                                            [];
                                                        FFAppState()
                                                                .pageTotalCost =
                                                            0.0;
                                                        FFAppState()
                                                            .newOrderList = [];
                                                        setState(() {});

                                                        context.pushNamed(
                                                            'ChooseTable');
                                                      } else {
                                                        if (FFAppState()
                                                                .tableNumber ==
                                                            6) {
                                                          if (widget.table6 !=
                                                              null) {
                                                            await widget
                                                                .table6!
                                                                .reference
                                                                .delete();
                                                            FFAppState()
                                                                .order = (List<String>
                                                                            var1,
                                                                        List<String>
                                                                            var2) {
                                                              return var1 = List
                                                                  .from(var1)
                                                                ..addAll(var2);
                                                            }(
                                                                    FFAppState()
                                                                        .order
                                                                        .toList(),
                                                                    FFAppState()
                                                                        .newOrderList
                                                                        .toList())
                                                                .toList()
                                                                .cast<String>();
                                                            setState(() {});

                                                            await Table6Record
                                                                .collection
                                                                .doc()
                                                                .set({
                                                              ...createTable6RecordData(
                                                                tableNumber:
                                                                    FFAppState()
                                                                        .tableNumber,
                                                                costOfThisPost:
                                                                    FFAppState()
                                                                        .pageTotalCost,
                                                                waiterName:
                                                                    FFAppState()
                                                                        .waiterName,
                                                                isOrderReady:
                                                                    false,
                                                                isCostPaid:
                                                                    false,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'date': FieldValue
                                                                      .serverTimestamp(),
                                                                  'orderList':
                                                                      FFAppState()
                                                                          .order,
                                                                  'newOrderList':
                                                                      FFAppState()
                                                                          .newOrderList,
                                                                },
                                                              ),
                                                            });
                                                          } else {
                                                            await Table6Record
                                                                .collection
                                                                .doc()
                                                                .set({
                                                              ...createTable6RecordData(
                                                                tableNumber:
                                                                    FFAppState()
                                                                        .tableNumber,
                                                                costOfThisPost:
                                                                    FFAppState()
                                                                        .pageTotalCost,
                                                                waiterName:
                                                                    FFAppState()
                                                                        .waiterName,
                                                                isOrderReady:
                                                                    false,
                                                                isCostPaid:
                                                                    false,
                                                              ),
                                                              ...mapToFirestore(
                                                                {
                                                                  'date': FieldValue
                                                                      .serverTimestamp(),
                                                                  'orderList':
                                                                      FFAppState()
                                                                          .order,
                                                                  'newOrderList':
                                                                      FFAppState()
                                                                          .newOrderList,
                                                                },
                                                              ),
                                                            });
                                                          }

                                                          // clearAll
                                                          FFAppState().order =
                                                              [];
                                                          FFAppState()
                                                              .deletedTheCost = [];
                                                          FFAppState()
                                                              .pageCost = [];
                                                          FFAppState()
                                                                  .pageTotalCost =
                                                              0.0;
                                                          FFAppState()
                                                              .newOrderList = [];
                                                          setState(() {});

                                                          context.pushNamed(
                                                              'ChooseTable');
                                                        } else {
                                                          if (FFAppState()
                                                                  .tableNumber ==
                                                              7) {
                                                            if (widget
                                                                    .table7 !=
                                                                null) {
                                                              await widget
                                                                  .table7!
                                                                  .reference
                                                                  .delete();
                                                              FFAppState()
                                                                  .order = (List<String>
                                                                              var1,
                                                                          List<String>
                                                                              var2) {
                                                                return var1 =
                                                                    List.from(
                                                                        var1)
                                                                      ..addAll(
                                                                          var2);
                                                              }(
                                                                      FFAppState()
                                                                          .order
                                                                          .toList(),
                                                                      FFAppState()
                                                                          .newOrderList
                                                                          .toList())
                                                                  .toList()
                                                                  .cast<
                                                                      String>();
                                                              setState(() {});

                                                              await Table7Record
                                                                  .collection
                                                                  .doc()
                                                                  .set({
                                                                ...createTable7RecordData(
                                                                  tableNumber:
                                                                      FFAppState()
                                                                          .tableNumber,
                                                                  costOfThisPost:
                                                                      FFAppState()
                                                                          .pageTotalCost,
                                                                  waiterName:
                                                                      FFAppState()
                                                                          .waiterName,
                                                                  isOrderReady:
                                                                      false,
                                                                  isCostPaid:
                                                                      false,
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'date': FieldValue
                                                                        .serverTimestamp(),
                                                                    'orderList':
                                                                        FFAppState()
                                                                            .order,
                                                                    'newOrderList':
                                                                        FFAppState()
                                                                            .newOrderList,
                                                                  },
                                                                ),
                                                              });
                                                            } else {
                                                              await Table7Record
                                                                  .collection
                                                                  .doc()
                                                                  .set({
                                                                ...createTable7RecordData(
                                                                  tableNumber:
                                                                      FFAppState()
                                                                          .tableNumber,
                                                                  costOfThisPost:
                                                                      FFAppState()
                                                                          .pageTotalCost,
                                                                  waiterName:
                                                                      FFAppState()
                                                                          .waiterName,
                                                                  isOrderReady:
                                                                      false,
                                                                  isCostPaid:
                                                                      false,
                                                                ),
                                                                ...mapToFirestore(
                                                                  {
                                                                    'date': FieldValue
                                                                        .serverTimestamp(),
                                                                    'orderList':
                                                                        FFAppState()
                                                                            .order,
                                                                    'newOrderList':
                                                                        FFAppState()
                                                                            .newOrderList,
                                                                  },
                                                                ),
                                                              });
                                                            }

                                                            // clearAll
                                                            FFAppState().order =
                                                                [];
                                                            FFAppState()
                                                                .deletedTheCost = [];
                                                            FFAppState()
                                                                .pageCost = [];
                                                            FFAppState()
                                                                    .pageTotalCost =
                                                                0.0;
                                                            FFAppState()
                                                                .newOrderList = [];
                                                            setState(() {});

                                                            context.pushNamed(
                                                                'ChooseTable');
                                                          } else {
                                                            if (FFAppState()
                                                                    .tableNumber ==
                                                                8) {
                                                              if (widget
                                                                      .table8 !=
                                                                  null) {
                                                                await widget
                                                                    .table8!
                                                                    .reference
                                                                    .delete();
                                                                FFAppState().order = (List<String>
                                                                                var1,
                                                                            List<String>
                                                                                var2) {
                                                                  return var1 =
                                                                      List.from(
                                                                          var1)
                                                                        ..addAll(
                                                                            var2);
                                                                }(
                                                                        FFAppState()
                                                                            .order
                                                                            .toList(),
                                                                        FFAppState()
                                                                            .newOrderList
                                                                            .toList())
                                                                    .toList()
                                                                    .cast<
                                                                        String>();
                                                                setState(() {});

                                                                await Table8Record
                                                                    .collection
                                                                    .doc()
                                                                    .set({
                                                                  ...createTable8RecordData(
                                                                    tableNumber:
                                                                        FFAppState()
                                                                            .tableNumber,
                                                                    costOfThisPost:
                                                                        FFAppState()
                                                                            .pageTotalCost,
                                                                    waiterName:
                                                                        FFAppState()
                                                                            .waiterName,
                                                                    isOrderReady:
                                                                        false,
                                                                    isCostPaid:
                                                                        false,
                                                                  ),
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'date': FieldValue
                                                                          .serverTimestamp(),
                                                                      'orderList':
                                                                          FFAppState()
                                                                              .order,
                                                                      'newOrderList':
                                                                          FFAppState()
                                                                              .newOrderList,
                                                                    },
                                                                  ),
                                                                });
                                                              } else {
                                                                await Table8Record
                                                                    .collection
                                                                    .doc()
                                                                    .set({
                                                                  ...createTable8RecordData(
                                                                    tableNumber:
                                                                        FFAppState()
                                                                            .tableNumber,
                                                                    costOfThisPost:
                                                                        FFAppState()
                                                                            .pageTotalCost,
                                                                    waiterName:
                                                                        FFAppState()
                                                                            .waiterName,
                                                                    isOrderReady:
                                                                        false,
                                                                    isCostPaid:
                                                                        false,
                                                                  ),
                                                                  ...mapToFirestore(
                                                                    {
                                                                      'date': FieldValue
                                                                          .serverTimestamp(),
                                                                      'orderList':
                                                                          FFAppState()
                                                                              .order,
                                                                      'newOrderList':
                                                                          FFAppState()
                                                                              .newOrderList,
                                                                    },
                                                                  ),
                                                                });
                                                              }

                                                              // clearAll
                                                              FFAppState()
                                                                  .order = [];
                                                              FFAppState()
                                                                  .deletedTheCost = [];
                                                              FFAppState()
                                                                  .pageCost = [];
                                                              FFAppState()
                                                                      .pageTotalCost =
                                                                  0.0;
                                                              FFAppState()
                                                                  .newOrderList = [];
                                                              setState(() {});

                                                              context.pushNamed(
                                                                  'ChooseTable');
                                                            } else {
                                                              if (FFAppState()
                                                                      .tableNumber ==
                                                                  9) {
                                                                if (widget
                                                                        .table9 !=
                                                                    null) {
                                                                  await widget
                                                                      .table9!
                                                                      .reference
                                                                      .delete();
                                                                  FFAppState()
                                                                      .order = (List<String>
                                                                              var1,
                                                                          List<String>
                                                                              var2) {
                                                                    return var1 = List
                                                                        .from(
                                                                            var1)
                                                                      ..addAll(
                                                                          var2);
                                                                  }(FFAppState().order.toList(), FFAppState().newOrderList.toList())
                                                                      .toList()
                                                                      .cast<String>();
                                                                  setState(
                                                                      () {});

                                                                  await Table9Record
                                                                      .collection
                                                                      .doc()
                                                                      .set({
                                                                    ...createTable9RecordData(
                                                                      tableNumber:
                                                                          FFAppState()
                                                                              .tableNumber,
                                                                      costOfThisPost:
                                                                          FFAppState()
                                                                              .pageTotalCost,
                                                                      waiterName:
                                                                          FFAppState()
                                                                              .waiterName,
                                                                      isOrderReady:
                                                                          false,
                                                                      isCostPaid:
                                                                          false,
                                                                    ),
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'date':
                                                                            FieldValue.serverTimestamp(),
                                                                        'orderList':
                                                                            FFAppState().order,
                                                                        'newOrderList':
                                                                            FFAppState().newOrderList,
                                                                      },
                                                                    ),
                                                                  });
                                                                } else {
                                                                  await Table9Record
                                                                      .collection
                                                                      .doc()
                                                                      .set({
                                                                    ...createTable9RecordData(
                                                                      tableNumber:
                                                                          FFAppState()
                                                                              .tableNumber,
                                                                      costOfThisPost:
                                                                          FFAppState()
                                                                              .pageTotalCost,
                                                                      waiterName:
                                                                          FFAppState()
                                                                              .waiterName,
                                                                      isOrderReady:
                                                                          false,
                                                                      isCostPaid:
                                                                          false,
                                                                    ),
                                                                    ...mapToFirestore(
                                                                      {
                                                                        'date':
                                                                            FieldValue.serverTimestamp(),
                                                                        'orderList':
                                                                            FFAppState().order,
                                                                        'newOrderList':
                                                                            FFAppState().newOrderList,
                                                                      },
                                                                    ),
                                                                  });
                                                                }

                                                                // clearAll
                                                                FFAppState()
                                                                    .order = [];
                                                                FFAppState()
                                                                    .deletedTheCost = [];
                                                                FFAppState()
                                                                    .pageCost = [];
                                                                FFAppState()
                                                                        .pageTotalCost =
                                                                    0.0;
                                                                FFAppState()
                                                                    .newOrderList = [];
                                                                setState(() {});

                                                                context.pushNamed(
                                                                    'ChooseTable');
                                                              } else {
                                                                if (FFAppState()
                                                                        .tableNumber ==
                                                                    10) {
                                                                  if (widget
                                                                          .table10 !=
                                                                      null) {
                                                                    await widget
                                                                        .table10!
                                                                        .reference
                                                                        .delete();
                                                                    FFAppState()
                                                                        .order = (List<String>
                                                                                var1,
                                                                            List<String>
                                                                                var2) {
                                                                      return var1 = List
                                                                          .from(
                                                                              var1)
                                                                        ..addAll(
                                                                            var2);
                                                                    }(FFAppState().order.toList(), FFAppState().newOrderList.toList())
                                                                        .toList()
                                                                        .cast<String>();
                                                                    setState(
                                                                        () {});

                                                                    await Table10Record
                                                                        .collection
                                                                        .doc()
                                                                        .set({
                                                                      ...createTable10RecordData(
                                                                        tableNumber:
                                                                            FFAppState().tableNumber,
                                                                        costOfThisPost:
                                                                            FFAppState().pageTotalCost,
                                                                        waiterName:
                                                                            FFAppState().waiterName,
                                                                        isOrderReady:
                                                                            false,
                                                                        isCostPaid:
                                                                            false,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'date':
                                                                              FieldValue.serverTimestamp(),
                                                                          'orderList':
                                                                              FFAppState().order,
                                                                          'newOrderList':
                                                                              FFAppState().newOrderList,
                                                                        },
                                                                      ),
                                                                    });
                                                                  } else {
                                                                    await Table10Record
                                                                        .collection
                                                                        .doc()
                                                                        .set({
                                                                      ...createTable10RecordData(
                                                                        tableNumber:
                                                                            FFAppState().tableNumber,
                                                                        costOfThisPost:
                                                                            FFAppState().pageTotalCost,
                                                                        waiterName:
                                                                            FFAppState().waiterName,
                                                                        isOrderReady:
                                                                            false,
                                                                        isCostPaid:
                                                                            false,
                                                                      ),
                                                                      ...mapToFirestore(
                                                                        {
                                                                          'date':
                                                                              FieldValue.serverTimestamp(),
                                                                          'orderList':
                                                                              FFAppState().order,
                                                                          'newOrderList':
                                                                              FFAppState().newOrderList,
                                                                        },
                                                                      ),
                                                                    });
                                                                  }

                                                                  // clearAll
                                                                  FFAppState()
                                                                      .order = [];
                                                                  FFAppState()
                                                                      .deletedTheCost = [];
                                                                  FFAppState()
                                                                      .pageCost = [];
                                                                  FFAppState()
                                                                          .pageTotalCost =
                                                                      0.0;
                                                                  FFAppState()
                                                                      .newOrderList = [];
                                                                  setState(
                                                                      () {});

                                                                  context.pushNamed(
                                                                      'ChooseTable');
                                                                } else {
                                                                  if (FFAppState()
                                                                          .tableNumber ==
                                                                      11) {
                                                                    if (widget
                                                                            .table11 !=
                                                                        null) {
                                                                      await widget
                                                                          .table11!
                                                                          .reference
                                                                          .delete();
                                                                      FFAppState()
                                                                          .order = (List<String> var1,
                                                                              List<String> var2) {
                                                                        return var1 = List.from(
                                                                            var1)
                                                                          ..addAll(
                                                                              var2);
                                                                      }(FFAppState().order.toList(), FFAppState().newOrderList.toList())
                                                                          .toList()
                                                                          .cast<String>();
                                                                      setState(
                                                                          () {});

                                                                      await Table11Record
                                                                          .collection
                                                                          .doc()
                                                                          .set({
                                                                        ...createTable11RecordData(
                                                                          tableNumber:
                                                                              FFAppState().tableNumber,
                                                                          costOfThisPost:
                                                                              FFAppState().pageTotalCost,
                                                                          waiterName:
                                                                              FFAppState().waiterName,
                                                                          isOrderReady:
                                                                              false,
                                                                          isCostPaid:
                                                                              false,
                                                                        ),
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'date':
                                                                                FieldValue.serverTimestamp(),
                                                                            'orderList':
                                                                                FFAppState().order,
                                                                            'newOrderList':
                                                                                FFAppState().newOrderList,
                                                                          },
                                                                        ),
                                                                      });
                                                                    } else {
                                                                      await Table11Record
                                                                          .collection
                                                                          .doc()
                                                                          .set({
                                                                        ...createTable11RecordData(
                                                                          tableNumber:
                                                                              FFAppState().tableNumber,
                                                                          costOfThisPost:
                                                                              FFAppState().pageTotalCost,
                                                                          waiterName:
                                                                              FFAppState().waiterName,
                                                                          isOrderReady:
                                                                              false,
                                                                          isCostPaid:
                                                                              false,
                                                                        ),
                                                                        ...mapToFirestore(
                                                                          {
                                                                            'date':
                                                                                FieldValue.serverTimestamp(),
                                                                            'orderList':
                                                                                FFAppState().order,
                                                                            'newOrderList':
                                                                                FFAppState().newOrderList,
                                                                          },
                                                                        ),
                                                                      });
                                                                    }

                                                                    // clearAll
                                                                    FFAppState()
                                                                        .order = [];
                                                                    FFAppState()
                                                                        .deletedTheCost = [];
                                                                    FFAppState()
                                                                        .pageCost = [];
                                                                    FFAppState()
                                                                            .pageTotalCost =
                                                                        0.0;
                                                                    FFAppState()
                                                                        .newOrderList = [];
                                                                    setState(
                                                                        () {});

                                                                    context.pushNamed(
                                                                        'ChooseTable');
                                                                  } else {
                                                                    if (FFAppState()
                                                                            .tableNumber ==
                                                                        12) {
                                                                      if (widget
                                                                              .table12 !=
                                                                          null) {
                                                                        await widget
                                                                            .table12!
                                                                            .reference
                                                                            .delete();
                                                                        FFAppState()
                                                                            .order = (List<String> var1,
                                                                                List<String> var2) {
                                                                          return var1 = List.from(
                                                                              var1)
                                                                            ..addAll(var2);
                                                                        }(FFAppState().order.toList(), FFAppState().newOrderList.toList())
                                                                            .toList()
                                                                            .cast<String>();
                                                                        setState(
                                                                            () {});

                                                                        await Table12Record
                                                                            .collection
                                                                            .doc()
                                                                            .set({
                                                                          ...createTable12RecordData(
                                                                            tableNumber:
                                                                                FFAppState().tableNumber,
                                                                            costOfThisPost:
                                                                                FFAppState().pageTotalCost,
                                                                            waiterName:
                                                                                FFAppState().waiterName,
                                                                            isOrderReady:
                                                                                false,
                                                                            isCostPaid:
                                                                                false,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'date': FieldValue.serverTimestamp(),
                                                                              'orderList': FFAppState().order,
                                                                              'newOrderList': FFAppState().newOrderList,
                                                                            },
                                                                          ),
                                                                        });
                                                                      } else {
                                                                        await Table12Record
                                                                            .collection
                                                                            .doc()
                                                                            .set({
                                                                          ...createTable12RecordData(
                                                                            tableNumber:
                                                                                FFAppState().tableNumber,
                                                                            costOfThisPost:
                                                                                FFAppState().pageTotalCost,
                                                                            waiterName:
                                                                                FFAppState().waiterName,
                                                                            isOrderReady:
                                                                                false,
                                                                            isCostPaid:
                                                                                false,
                                                                          ),
                                                                          ...mapToFirestore(
                                                                            {
                                                                              'date': FieldValue.serverTimestamp(),
                                                                              'orderList': FFAppState().order,
                                                                              'newOrderList': FFAppState().newOrderList,
                                                                            },
                                                                          ),
                                                                        });
                                                                      }

                                                                      // clearAll
                                                                      FFAppState()
                                                                          .order = [];
                                                                      FFAppState()
                                                                          .deletedTheCost = [];
                                                                      FFAppState()
                                                                          .pageCost = [];
                                                                      FFAppState()
                                                                              .pageTotalCost =
                                                                          0.0;
                                                                      FFAppState()
                                                                          .newOrderList = [];
                                                                      setState(
                                                                          () {});

                                                                      context.pushNamed(
                                                                          'ChooseTable');
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            },
                                            text: '~ EKLE ~',
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                              elevation: 3.0,
                                              borderSide: const BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(),
                                Container(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
