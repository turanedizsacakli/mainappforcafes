import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'payment_page_model.dart';
export 'payment_page_model.dart';

class PaymentPageWidget extends StatefulWidget {
  const PaymentPageWidget({super.key});

  @override
  State<PaymentPageWidget> createState() => _PaymentPageWidgetState();
}

class _PaymentPageWidgetState extends State<PaymentPageWidget> {
  late PaymentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            'Ödeme Sayfası',
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
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 90.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: StreamBuilder<List<Table1Record>>(
                        stream: queryTable1Record(
                          singleRecord: true,
                        ),
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
                          List<Table1Record> containerTable1Table1RecordList =
                              snapshot.data!;

                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerTable1Table1Record =
                              containerTable1Table1RecordList.isNotEmpty
                                  ? containerTable1Table1RecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            height: 80.0,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Visibility(
                              visible: containerTable1Table1Record?.reference !=
                                  null,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      19.0, 0.0, 17.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table1Record>>(
                                                    stream: queryTable1Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table1Record>
                                                          tlTextTable1RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable1Record =
                                                          tlTextTable1RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable1RecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'PaymentDetailedPage',
                                                            queryParameters: {
                                                              'tableDetails':
                                                                  serializeParam(
                                                                tlTextTable1Record,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'tableDetails':
                                                                  tlTextTable1Record,
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          'MASA 1',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    3.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table1Record>>(
                                                    stream: queryTable1Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table1Record>
                                                          tlTextTable1RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable1Record =
                                                          tlTextTable1RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable1RecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        tlTextTable1Record!
                                                            .costOfThisPost
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '₺',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            StreamBuilder<List<Table1Record>>(
                                              stream: queryTable1Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table1Record>
                                                    iconTable1RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable1Record =
                                                    iconTable1RecordList
                                                            .isNotEmpty
                                                        ? iconTable1RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable1Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable1Record
                                                                ?.costOfThisPost,
                                                        date: iconTable1Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable1Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: false,
                                                        withCashMoney: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable1Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable1Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .moneyBillWave,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                            SizedBox(
                                              width: 30.0,
                                              child: Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            StreamBuilder<List<Table1Record>>(
                                              stream: queryTable1Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table1Record>
                                                    iconTable1RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable1Record =
                                                    iconTable1RecordList
                                                            .isNotEmpty
                                                        ? iconTable1RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable1Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable1Record
                                                                ?.costOfThisPost,
                                                        date: iconTable1Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable1Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: true,
                                                        withCashMoney: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable1Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable1Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCreditCard,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: StreamBuilder<List<Table2Record>>(
                        stream: queryTable2Record(
                          singleRecord: true,
                        ),
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
                          List<Table2Record> containerTable2Table2RecordList =
                              snapshot.data!;

                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerTable2Table2Record =
                              containerTable2Table2RecordList.isNotEmpty
                                  ? containerTable2Table2RecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            height: 80.0,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Visibility(
                              visible: containerTable2Table2Record?.reference !=
                                  null,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      19.0, 0.0, 17.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table2Record>>(
                                                    stream: queryTable2Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table2Record>
                                                          tlTextTable2RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable2Record =
                                                          tlTextTable2RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable2RecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'PaymentDetailedPage',
                                                            queryParameters: {
                                                              'forTable2':
                                                                  serializeParam(
                                                                tlTextTable2Record,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'forTable2':
                                                                  tlTextTable2Record,
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          'MASA 2',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    3.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table2Record>>(
                                                    stream: queryTable2Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table2Record>
                                                          tlTextTable2RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable2Record =
                                                          tlTextTable2RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable2RecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        tlTextTable2Record!
                                                            .costOfThisPost
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '₺',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            StreamBuilder<List<Table2Record>>(
                                              stream: queryTable2Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table2Record>
                                                    iconTable2RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable2Record =
                                                    iconTable2RecordList
                                                            .isNotEmpty
                                                        ? iconTable2RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable2Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable2Record
                                                                ?.costOfThisPost,
                                                        date: iconTable2Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable2Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: false,
                                                        withCashMoney: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable2Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable2Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .moneyBillWave,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                            SizedBox(
                                              width: 30.0,
                                              child: Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            StreamBuilder<List<Table2Record>>(
                                              stream: queryTable2Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table2Record>
                                                    iconTable2RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable2Record =
                                                    iconTable2RecordList
                                                            .isNotEmpty
                                                        ? iconTable2RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable2Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable2Record
                                                                ?.costOfThisPost,
                                                        date: iconTable2Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable2Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: true,
                                                        withCashMoney: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable2Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable2Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCreditCard,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: StreamBuilder<List<Table1Record>>(
                        stream: queryTable1Record(
                          singleRecord: true,
                        ),
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
                          List<Table1Record> containerTable3Table1RecordList =
                              snapshot.data!;

                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerTable3Table1Record =
                              containerTable3Table1RecordList.isNotEmpty
                                  ? containerTable3Table1RecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            height: 80.0,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Visibility(
                              visible: containerTable3Table1Record?.reference !=
                                  null,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      19.0, 0.0, 17.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table3Record>>(
                                                    stream: queryTable3Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table3Record>
                                                          tlTextTable3RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable3Record =
                                                          tlTextTable3RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable3RecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'PaymentDetailedPage',
                                                            queryParameters: {
                                                              'forTable3':
                                                                  serializeParam(
                                                                tlTextTable3Record,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'forTable3':
                                                                  tlTextTable3Record,
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          'MASA 3',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    3.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table3Record>>(
                                                    stream: queryTable3Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table3Record>
                                                          tlTextTable3RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable3Record =
                                                          tlTextTable3RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable3RecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        tlTextTable3Record!
                                                            .costOfThisPost
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '₺',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            StreamBuilder<List<Table3Record>>(
                                              stream: queryTable3Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table3Record>
                                                    iconTable3RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable3Record =
                                                    iconTable3RecordList
                                                            .isNotEmpty
                                                        ? iconTable3RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable3Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable3Record
                                                                ?.costOfThisPost,
                                                        date: iconTable3Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable3Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: false,
                                                        withCashMoney: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable3Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable3Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .moneyBillWave,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                            SizedBox(
                                              width: 30.0,
                                              child: Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            StreamBuilder<List<Table3Record>>(
                                              stream: queryTable3Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table3Record>
                                                    iconTable3RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable3Record =
                                                    iconTable3RecordList
                                                            .isNotEmpty
                                                        ? iconTable3RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable3Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable3Record
                                                                ?.costOfThisPost,
                                                        date: iconTable3Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable3Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: true,
                                                        withCashMoney: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable3Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable3Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCreditCard,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: StreamBuilder<List<Table1Record>>(
                        stream: queryTable1Record(
                          singleRecord: true,
                        ),
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
                          List<Table1Record> containerTable4Table1RecordList =
                              snapshot.data!;

                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerTable4Table1Record =
                              containerTable4Table1RecordList.isNotEmpty
                                  ? containerTable4Table1RecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            height: 80.0,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Visibility(
                              visible: containerTable4Table1Record?.reference !=
                                  null,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      19.0, 0.0, 17.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table4Record>>(
                                                    stream: queryTable4Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table4Record>
                                                          tlTextTable4RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable4Record =
                                                          tlTextTable4RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable4RecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'PaymentDetailedPage',
                                                            queryParameters: {
                                                              'forTable4':
                                                                  serializeParam(
                                                                tlTextTable4Record,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'forTable4':
                                                                  tlTextTable4Record,
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          'MASA 4',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    3.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table4Record>>(
                                                    stream: queryTable4Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table4Record>
                                                          tlTextTable4RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable4Record =
                                                          tlTextTable4RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable4RecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        tlTextTable4Record!
                                                            .costOfThisPost
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '₺',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            StreamBuilder<List<Table4Record>>(
                                              stream: queryTable4Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table4Record>
                                                    iconTable4RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable4Record =
                                                    iconTable4RecordList
                                                            .isNotEmpty
                                                        ? iconTable4RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable4Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable4Record
                                                                ?.costOfThisPost,
                                                        date: iconTable4Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable4Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: false,
                                                        withCashMoney: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable4Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable4Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .moneyBillWave,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                            SizedBox(
                                              width: 30.0,
                                              child: Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            StreamBuilder<List<Table4Record>>(
                                              stream: queryTable4Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table4Record>
                                                    iconTable4RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable4Record =
                                                    iconTable4RecordList
                                                            .isNotEmpty
                                                        ? iconTable4RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable4Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable4Record
                                                                ?.costOfThisPost,
                                                        date: iconTable4Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable4Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: true,
                                                        withCashMoney: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable4Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable4Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCreditCard,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: StreamBuilder<List<Table5Record>>(
                        stream: queryTable5Record(
                          singleRecord: true,
                        ),
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
                          List<Table5Record> containerTable5Table5RecordList =
                              snapshot.data!;

                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerTable5Table5Record =
                              containerTable5Table5RecordList.isNotEmpty
                                  ? containerTable5Table5RecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            height: 80.0,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Visibility(
                              visible: containerTable5Table5Record?.reference !=
                                  null,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      19.0, 0.0, 17.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table5Record>>(
                                                    stream: queryTable5Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table5Record>
                                                          tlTextTable5RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable5Record =
                                                          tlTextTable5RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable5RecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'PaymentDetailedPage',
                                                            queryParameters: {
                                                              'forTable5':
                                                                  serializeParam(
                                                                tlTextTable5Record,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'forTable5':
                                                                  tlTextTable5Record,
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          'MASA 5',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    3.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table5Record>>(
                                                    stream: queryTable5Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table5Record>
                                                          tlTextTable5RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable5Record =
                                                          tlTextTable5RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable5RecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        tlTextTable5Record!
                                                            .costOfThisPost
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '₺',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            StreamBuilder<List<Table5Record>>(
                                              stream: queryTable5Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table5Record>
                                                    iconTable5RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable5Record =
                                                    iconTable5RecordList
                                                            .isNotEmpty
                                                        ? iconTable5RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable5Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable5Record
                                                                ?.costOfThisPost,
                                                        date: iconTable5Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable5Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: false,
                                                        withCashMoney: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable5Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable5Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .moneyBillWave,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                            SizedBox(
                                              width: 30.0,
                                              child: Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            StreamBuilder<List<Table5Record>>(
                                              stream: queryTable5Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table5Record>
                                                    iconTable5RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable5Record =
                                                    iconTable5RecordList
                                                            .isNotEmpty
                                                        ? iconTable5RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable5Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable5Record
                                                                ?.costOfThisPost,
                                                        date: iconTable5Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable5Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: true,
                                                        withCashMoney: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable5Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable5Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCreditCard,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: StreamBuilder<List<Table6Record>>(
                        stream: queryTable6Record(
                          singleRecord: true,
                        ),
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
                          List<Table6Record> containerTable6Table6RecordList =
                              snapshot.data!;

                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerTable6Table6Record =
                              containerTable6Table6RecordList.isNotEmpty
                                  ? containerTable6Table6RecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            height: 80.0,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Visibility(
                              visible: containerTable6Table6Record?.reference !=
                                  null,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      19.0, 0.0, 17.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table6Record>>(
                                                    stream: queryTable6Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table6Record>
                                                          tlTextTable6RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable6Record =
                                                          tlTextTable6RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable6RecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'PaymentDetailedPage',
                                                            queryParameters: {
                                                              'forTable6':
                                                                  serializeParam(
                                                                tlTextTable6Record,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'forTable6':
                                                                  tlTextTable6Record,
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          'MASA 6',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    3.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table6Record>>(
                                                    stream: queryTable6Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table6Record>
                                                          tlTextTable6RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable6Record =
                                                          tlTextTable6RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable6RecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        tlTextTable6Record!
                                                            .costOfThisPost
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '₺',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            StreamBuilder<List<Table6Record>>(
                                              stream: queryTable6Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table6Record>
                                                    iconTable6RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable6Record =
                                                    iconTable6RecordList
                                                            .isNotEmpty
                                                        ? iconTable6RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable6Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable6Record
                                                                ?.costOfThisPost,
                                                        date: iconTable6Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable6Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: false,
                                                        withCashMoney: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable6Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable6Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .moneyBillWave,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                            SizedBox(
                                              width: 30.0,
                                              child: Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            StreamBuilder<List<Table6Record>>(
                                              stream: queryTable6Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table6Record>
                                                    iconTable6RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable6Record =
                                                    iconTable6RecordList
                                                            .isNotEmpty
                                                        ? iconTable6RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable6Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable6Record
                                                                ?.costOfThisPost,
                                                        date: iconTable6Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable6Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: true,
                                                        withCashMoney: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable6Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable6Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCreditCard,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: StreamBuilder<List<Table7Record>>(
                        stream: queryTable7Record(
                          singleRecord: true,
                        ),
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
                          List<Table7Record> containerTable7Table7RecordList =
                              snapshot.data!;

                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerTable7Table7Record =
                              containerTable7Table7RecordList.isNotEmpty
                                  ? containerTable7Table7RecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            height: 80.0,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Visibility(
                              visible: containerTable7Table7Record?.reference !=
                                  null,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      19.0, 0.0, 17.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table7Record>>(
                                                    stream: queryTable7Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table7Record>
                                                          tlTextTable7RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable7Record =
                                                          tlTextTable7RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable7RecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'PaymentDetailedPage',
                                                            queryParameters: {
                                                              'forTable7':
                                                                  serializeParam(
                                                                tlTextTable7Record,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'forTable7':
                                                                  tlTextTable7Record,
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          'MASA 7',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    3.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table7Record>>(
                                                    stream: queryTable7Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table7Record>
                                                          tlTextTable7RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable7Record =
                                                          tlTextTable7RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable7RecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        tlTextTable7Record!
                                                            .costOfThisPost
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '₺',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            StreamBuilder<List<Table7Record>>(
                                              stream: queryTable7Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table7Record>
                                                    iconTable7RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable7Record =
                                                    iconTable7RecordList
                                                            .isNotEmpty
                                                        ? iconTable7RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable7Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable7Record
                                                                ?.costOfThisPost,
                                                        date: iconTable7Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable7Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: false,
                                                        withCashMoney: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable7Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable7Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .moneyBillWave,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                            SizedBox(
                                              width: 30.0,
                                              child: Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            StreamBuilder<List<Table7Record>>(
                                              stream: queryTable7Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table7Record>
                                                    iconTable7RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable7Record =
                                                    iconTable7RecordList
                                                            .isNotEmpty
                                                        ? iconTable7RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable7Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable7Record
                                                                ?.costOfThisPost,
                                                        date: iconTable7Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable7Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: true,
                                                        withCashMoney: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable7Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable7Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCreditCard,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: StreamBuilder<List<Table8Record>>(
                        stream: queryTable8Record(
                          singleRecord: true,
                        ),
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
                          List<Table8Record> containerTable8Table8RecordList =
                              snapshot.data!;

                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerTable8Table8Record =
                              containerTable8Table8RecordList.isNotEmpty
                                  ? containerTable8Table8RecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            height: 80.0,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Visibility(
                              visible: containerTable8Table8Record?.reference !=
                                  null,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      19.0, 0.0, 17.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table8Record>>(
                                                    stream: queryTable8Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table8Record>
                                                          tlTextTable8RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable8Record =
                                                          tlTextTable8RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable8RecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'PaymentDetailedPage',
                                                            queryParameters: {
                                                              'forTable8':
                                                                  serializeParam(
                                                                tlTextTable8Record,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'forTable8':
                                                                  tlTextTable8Record,
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          'MASA 8',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    3.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table1Record>>(
                                                    stream: queryTable1Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table1Record>
                                                          tlTextTable1RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable1Record =
                                                          tlTextTable1RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable1RecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        tlTextTable1Record!
                                                            .costOfThisPost
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '₺',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            StreamBuilder<List<Table8Record>>(
                                              stream: queryTable8Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table8Record>
                                                    iconTable8RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable8Record =
                                                    iconTable8RecordList
                                                            .isNotEmpty
                                                        ? iconTable8RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable8Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable8Record
                                                                ?.costOfThisPost,
                                                        date: iconTable8Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable8Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: false,
                                                        withCashMoney: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable8Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable8Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .moneyBillWave,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                            SizedBox(
                                              width: 30.0,
                                              child: Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            StreamBuilder<List<Table8Record>>(
                                              stream: queryTable8Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table8Record>
                                                    iconTable8RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable8Record =
                                                    iconTable8RecordList
                                                            .isNotEmpty
                                                        ? iconTable8RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable8Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable8Record
                                                                ?.costOfThisPost,
                                                        date: iconTable8Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable8Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: true,
                                                        withCashMoney: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable8Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable8Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCreditCard,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: StreamBuilder<List<Table9Record>>(
                        stream: queryTable9Record(
                          singleRecord: true,
                        ),
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
                          List<Table9Record> containerTable9Table9RecordList =
                              snapshot.data!;

                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerTable9Table9Record =
                              containerTable9Table9RecordList.isNotEmpty
                                  ? containerTable9Table9RecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            height: 80.0,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Visibility(
                              visible: containerTable9Table9Record?.reference !=
                                  null,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      19.0, 0.0, 17.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table9Record>>(
                                                    stream: queryTable9Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table9Record>
                                                          tlTextTable9RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable9Record =
                                                          tlTextTable9RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable9RecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'PaymentDetailedPage',
                                                            queryParameters: {
                                                              'forTable9':
                                                                  serializeParam(
                                                                tlTextTable9Record,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'forTable9':
                                                                  tlTextTable9Record,
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          'MASA 9',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    3.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table9Record>>(
                                                    stream: queryTable9Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table9Record>
                                                          tlTextTable9RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable9Record =
                                                          tlTextTable9RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable9RecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        tlTextTable9Record!
                                                            .costOfThisPost
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '₺',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            StreamBuilder<List<Table9Record>>(
                                              stream: queryTable9Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table9Record>
                                                    iconTable9RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable9Record =
                                                    iconTable9RecordList
                                                            .isNotEmpty
                                                        ? iconTable9RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable9Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable9Record
                                                                ?.costOfThisPost,
                                                        date: iconTable9Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable9Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: false,
                                                        withCashMoney: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable9Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable9Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .moneyBillWave,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                            SizedBox(
                                              width: 30.0,
                                              child: Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            StreamBuilder<List<Table9Record>>(
                                              stream: queryTable9Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table9Record>
                                                    iconTable9RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable9Record =
                                                    iconTable9RecordList
                                                            .isNotEmpty
                                                        ? iconTable9RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable9Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable9Record
                                                                ?.costOfThisPost,
                                                        date: iconTable9Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable9Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: true,
                                                        withCashMoney: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable9Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable9Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCreditCard,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: StreamBuilder<List<Table10Record>>(
                        stream: queryTable10Record(
                          singleRecord: true,
                        ),
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
                          List<Table10Record>
                              containerTable10Table10RecordList =
                              snapshot.data!;

                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerTable10Table10Record =
                              containerTable10Table10RecordList.isNotEmpty
                                  ? containerTable10Table10RecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            height: 80.0,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Visibility(
                              visible:
                                  containerTable10Table10Record?.reference !=
                                      null,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      19.0, 0.0, 17.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table10Record>>(
                                                    stream: queryTable10Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table10Record>
                                                          tlTextTable10RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable10Record =
                                                          tlTextTable10RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable10RecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'PaymentDetailedPage',
                                                            queryParameters: {
                                                              'forTable10':
                                                                  serializeParam(
                                                                tlTextTable10Record,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'forTable10':
                                                                  tlTextTable10Record,
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          'MASA 10',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    3.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table10Record>>(
                                                    stream: queryTable10Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table10Record>
                                                          tlTextTable10RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable10Record =
                                                          tlTextTable10RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable10RecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        tlTextTable10Record!
                                                            .costOfThisPost
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '₺',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            StreamBuilder<List<Table10Record>>(
                                              stream: queryTable10Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table10Record>
                                                    iconTable10RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable10Record =
                                                    iconTable10RecordList
                                                            .isNotEmpty
                                                        ? iconTable10RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable10Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable10Record
                                                                ?.costOfThisPost,
                                                        date: iconTable10Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable10Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: false,
                                                        withCashMoney: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable10Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable10Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .moneyBillWave,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                            SizedBox(
                                              width: 30.0,
                                              child: Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            StreamBuilder<List<Table10Record>>(
                                              stream: queryTable10Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table10Record>
                                                    iconTable10RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable10Record =
                                                    iconTable10RecordList
                                                            .isNotEmpty
                                                        ? iconTable10RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable10Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable10Record
                                                                ?.costOfThisPost,
                                                        date: iconTable10Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable10Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: true,
                                                        withCashMoney: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable10Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable10Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCreditCard,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: StreamBuilder<List<Table11Record>>(
                        stream: queryTable11Record(
                          singleRecord: true,
                        ),
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
                          List<Table11Record>
                              containerTable11Table11RecordList =
                              snapshot.data!;

                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerTable11Table11Record =
                              containerTable11Table11RecordList.isNotEmpty
                                  ? containerTable11Table11RecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            height: 80.0,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Visibility(
                              visible:
                                  containerTable11Table11Record?.reference !=
                                      null,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      19.0, 0.0, 17.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table11Record>>(
                                                    stream: queryTable11Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table11Record>
                                                          tlTextTable11RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable11Record =
                                                          tlTextTable11RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable11RecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'PaymentDetailedPage',
                                                            queryParameters: {
                                                              'forTable11':
                                                                  serializeParam(
                                                                tlTextTable11Record,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'forTable11':
                                                                  tlTextTable11Record,
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          'MASA 11',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    3.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table11Record>>(
                                                    stream: queryTable11Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table11Record>
                                                          tlTextTable11RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable11Record =
                                                          tlTextTable11RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable11RecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        tlTextTable11Record!
                                                            .costOfThisPost
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '₺',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            StreamBuilder<List<Table11Record>>(
                                              stream: queryTable11Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table11Record>
                                                    iconTable11RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable11Record =
                                                    iconTable11RecordList
                                                            .isNotEmpty
                                                        ? iconTable11RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable11Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable11Record
                                                                ?.costOfThisPost,
                                                        date: iconTable11Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable11Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: false,
                                                        withCashMoney: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable11Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable11Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .moneyBillWave,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                            SizedBox(
                                              width: 30.0,
                                              child: Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            StreamBuilder<List<Table11Record>>(
                                              stream: queryTable11Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table11Record>
                                                    iconTable11RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable11Record =
                                                    iconTable11RecordList
                                                            .isNotEmpty
                                                        ? iconTable11RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable11Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable11Record
                                                                ?.costOfThisPost,
                                                        date: iconTable11Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable11Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: true,
                                                        withCashMoney: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable11Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable11Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCreditCard,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          10.0, 10.0, 10.0, 10.0),
                      child: StreamBuilder<List<Table12Record>>(
                        stream: queryTable12Record(
                          singleRecord: true,
                        ),
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
                          List<Table12Record>
                              containerTable12Table12RecordList =
                              snapshot.data!;

                          // Return an empty Container when the item does not exist.
                          if (snapshot.data!.isEmpty) {
                            return Container();
                          }
                          final containerTable12Table12Record =
                              containerTable12Table12RecordList.isNotEmpty
                                  ? containerTable12Table12RecordList.first
                                  : null;
                          return Container(
                            width: double.infinity,
                            height: 80.0,
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
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Visibility(
                              visible:
                                  containerTable12Table12Record?.reference !=
                                      null,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      19.0, 0.0, 17.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table12Record>>(
                                                    stream: queryTable12Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table12Record>
                                                          tlTextTable12RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable12Record =
                                                          tlTextTable12RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable12RecordList
                                                                  .first
                                                              : null;
                                                      return InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'PaymentDetailedPage',
                                                            queryParameters: {
                                                              'forTable12':
                                                                  serializeParam(
                                                                tlTextTable12Record,
                                                                ParamType
                                                                    .Document,
                                                              ),
                                                            }.withoutNulls,
                                                            extra: <String,
                                                                dynamic>{
                                                              'forTable12':
                                                                  tlTextTable12Record,
                                                            },
                                                          );
                                                        },
                                                        child: Text(
                                                          'MASA 12',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    3.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: StreamBuilder<
                                                      List<Table12Record>>(
                                                    stream: queryTable12Record(
                                                      singleRecord: true,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
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
                                                      List<Table12Record>
                                                          tlTextTable12RecordList =
                                                          snapshot.data!;

                                                      // Return an empty Container when the item does not exist.
                                                      if (snapshot
                                                          .data!.isEmpty) {
                                                        return Container();
                                                      }
                                                      final tlTextTable12Record =
                                                          tlTextTable12RecordList
                                                                  .isNotEmpty
                                                              ? tlTextTable12RecordList
                                                                  .first
                                                              : null;
                                                      return Text(
                                                        tlTextTable12Record!
                                                            .costOfThisPost
                                                            .toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Text(
                                                    '₺',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 0.0,
                                        child: VerticalDivider(
                                          thickness: 0.0,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100.0,
                                        child: VerticalDivider(
                                          thickness: 2.0,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            StreamBuilder<List<Table12Record>>(
                                              stream: queryTable12Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table12Record>
                                                    iconTable12RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable12Record =
                                                    iconTable12RecordList
                                                            .isNotEmpty
                                                        ? iconTable12RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable12Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable12Record
                                                                ?.costOfThisPost,
                                                        date: iconTable12Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable12Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: false,
                                                        withCashMoney: true,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable12Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable12Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .moneyBillWave,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                            SizedBox(
                                              width: 30.0,
                                              child: Divider(
                                                thickness: 2.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            StreamBuilder<List<Table12Record>>(
                                              stream: queryTable12Record(
                                                singleRecord: true,
                                              ),
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
                                                List<Table12Record>
                                                    iconTable12RecordList =
                                                    snapshot.data!;

                                                // Return an empty Container when the item does not exist.
                                                if (snapshot.data!.isEmpty) {
                                                  return Container();
                                                }
                                                final iconTable12Record =
                                                    iconTable12RecordList
                                                            .isNotEmpty
                                                        ? iconTable12RecordList
                                                            .first
                                                        : null;
                                                return InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await ExOrderRecord
                                                        .collection
                                                        .doc()
                                                        .set({
                                                      ...createExOrderRecordData(
                                                        tableNumber:
                                                            iconTable12Record
                                                                ?.tableNumber,
                                                        costOfThisPost:
                                                            iconTable12Record
                                                                ?.costOfThisPost,
                                                        date: iconTable12Record
                                                            ?.date,
                                                        waiterName:
                                                            iconTable12Record
                                                                ?.waiterName,
                                                        isOrderReady: true,
                                                        isCostPaid: true,
                                                        withCreditCard: true,
                                                        withCashMoney: false,
                                                      ),
                                                      ...mapToFirestore(
                                                        {
                                                          'orderList':
                                                              iconTable12Record
                                                                  ?.orderList,
                                                        },
                                                      ),
                                                    });
                                                    await iconTable12Record!
                                                        .reference
                                                        .delete();
                                                  },
                                                  child: FaIcon(
                                                    FontAwesomeIcons
                                                        .solidCreditCard,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success,
                                                    size: 24.0,
                                                  ),
                                                );
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
