import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:octo_image/octo_image.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'listofworkers_model.dart';
export 'listofworkers_model.dart';

class ListofworkersWidget extends StatefulWidget {
  const ListofworkersWidget({super.key});

  @override
  State<ListofworkersWidget> createState() => _ListofworkersWidgetState();
}

class _ListofworkersWidgetState extends State<ListofworkersWidget> {
  late ListofworkersModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListofworkersModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'Listofworkers',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: Color(0xFF070202),
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 70.0,
                icon: Icon(
                  Icons.chevron_left_rounded,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 40.0,
                ),
                onPressed: () async {
                  context.pushNamed('homeCopyCopy');
                },
              ),
              title: Text(
                'Bolsa de Trabajo ',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                    ),
                                hintText:
                                    'Buscar trabajador por especialidad..',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: Color(0x80D3D3D3),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 25.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderRadius: 20.0,
                            buttonSize: 40.0,
                            fillColor: FlutterFlowTheme.of(context).primaryText,
                            icon: Icon(
                              Icons.search_rounded,
                              color: Colors.white,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                'searchlistofworker',
                                queryParameters: {
                                  'search': serializeParam(
                                    _model.textController.text,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.scale,
                                    alignment: Alignment.bottomCenter,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 386.78,
                    height: 599.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: (_model.apiRequestCompleter ??=
                                Completer<ApiCallResponse>()
                                  ..complete(ReedBolsaDeEmpleoRowsCall.call()))
                            .future,
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
                          final listViewReedBolsaDeEmpleoRowsResponse =
                              snapshot.data!;

                          return Builder(
                            builder: (context) {
                              final workers = getJsonField(
                                listViewReedBolsaDeEmpleoRowsResponse.jsonBody,
                                r'''$''',
                              ).toList();

                              return RefreshIndicator(
                                onRefresh: () async {
                                  safeSetState(
                                      () => _model.apiRequestCompleter = null);
                                  await _model.waitForApiRequestCompleted();
                                },
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  itemCount: workers.length,
                                  itemBuilder: (context, workersIndex) {
                                    final workersItem = workers[workersIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 8.0, 5.0, 8.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'workerdetails',
                                            queryParameters: {
                                              'lasname': serializeParam(
                                                getJsonField(
                                                  workersItem,
                                                  r'''$.lastname''',
                                                ).toString(),
                                                ParamType.String,
                                              ),
                                              'address': serializeParam(
                                                getJsonField(
                                                  workersItem,
                                                  r'''$.Adress''',
                                                ).toString(),
                                                ParamType.String,
                                              ),
                                              'photourl': serializeParam(
                                                getJsonField(
                                                  workersItem,
                                                  r'''$.photo_url''',
                                                ).toString(),
                                                ParamType.String,
                                              ),
                                              'phone': serializeParam(
                                                getJsonField(
                                                  workersItem,
                                                  r'''$.phone''',
                                                ),
                                                ParamType.int,
                                              ),
                                              'plaza': serializeParam(
                                                getJsonField(
                                                  workersItem,
                                                  r'''$.aspiration''',
                                                ).toString(),
                                                ParamType.String,
                                              ),
                                              'especializcion': serializeParam(
                                                getJsonField(
                                                  workersItem,
                                                  r'''$.especiality''',
                                                ).toString(),
                                                ParamType.String,
                                              ),
                                              'certification': serializeParam(
                                                getJsonField(
                                                  workersItem,
                                                  r'''$.certifications''',
                                                ).toString(),
                                                ParamType.String,
                                              ),
                                              'salary': serializeParam(
                                                getJsonField(
                                                  workersItem,
                                                  r'''$.ideal_slary''',
                                                ).toString(),
                                                ParamType.String,
                                              ),
                                              'workplace': serializeParam(
                                                getJsonField(
                                                  workersItem,
                                                  r'''$.work_place''',
                                                ).toString(),
                                                ParamType.String,
                                              ),
                                              'age': serializeParam(
                                                getJsonField(
                                                  workersItem,
                                                  r'''$.age''',
                                                ),
                                                ParamType.int,
                                              ),
                                              'name': serializeParam(
                                                getJsonField(
                                                  workersItem,
                                                  r'''$.name''',
                                                ).toString(),
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Container(
                                          width: 333.0,
                                          height: 133.0,
                                          decoration: BoxDecoration(
                                            color: Color(0x65FFFFFF),
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  2.0,
                                                ),
                                                spreadRadius: 3.0,
                                              )
                                            ],
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(5.0),
                                              bottomRight: Radius.circular(5.0),
                                              topLeft: Radius.circular(5.0),
                                              topRight: Radius.circular(5.0),
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 100.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: OctoImage(
                                                    placeholderBuilder: (_) =>
                                                        SizedBox.expand(
                                                      child: Image(
                                                        image: BlurHashImage(
                                                            'LEHLk~WB2yk8pyo0adR*.7kCMdnj'),
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    image:
                                                        CachedNetworkImageProvider(
                                                      getJsonField(
                                                        workersItem,
                                                        r'''$.photo_url''',
                                                      ).toString(),
                                                    ),
                                                    width: 108.0,
                                                    height: 135.0,
                                                    fit: BoxFit.contain,
                                                    errorBuilder: (context,
                                                            error,
                                                            stackTrace) =>
                                                        Image.asset(
                                                      'assets/images/error_image.webp',
                                                      width: 108.0,
                                                      height: 135.0,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  5.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              getJsonField(
                                                                workersItem,
                                                                r'''$.name''',
                                                              )
                                                                  .toString()
                                                                  .maybeHandleOverflow(
                                                                    maxChars: 8,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              getJsonField(
                                                                workersItem,
                                                                r'''$.lastname''',
                                                              )
                                                                  .toString()
                                                                  .maybeHandleOverflow(
                                                                    maxChars: 6,
                                                                    replacement:
                                                                        '…',
                                                                  ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Readex Pro',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  5.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Text(
                                                        getJsonField(
                                                          workersItem,
                                                          r'''$.phone''',
                                                        ).toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        getJsonField(
                                                          workersItem,
                                                          r'''$.especiality''',
                                                        )
                                                            .toString()
                                                            .maybeHandleOverflow(
                                                              maxChars: 12,
                                                              replacement: '…',
                                                            ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Edad : ${getJsonField(
                                                          workersItem,
                                                          r'''$.age''',
                                                        ).toString()}',
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
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Salario ideal/día:${getJsonField(
                                                          workersItem,
                                                          r'''$.ideal_slary''',
                                                        ).toString()}',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Readex Pro',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        35.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            Color(0xFFC0C0D2),
                                                        borderRadius: 20.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 47.0,
                                                        fillColor:
                                                            Color(0xB226CB1F),
                                                        icon: FaIcon(
                                                          FontAwesomeIcons
                                                              .whatsapp,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          await launchURL(
                                                              'https://wa.me/+53${getJsonField(
                                                            workersItem,
                                                            r'''$.phone''',
                                                          ).toString()}?text=Necesito%20que%20me%20contacte%20es%20de%20laquincalla.com');
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            Color(0xD8AAAADF),
                                                        borderRadius: 20.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 47.0,
                                                        fillColor:
                                                            Color(0x975F5FFD),
                                                        icon: Icon(
                                                          Icons.call,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          size: 24.0,
                                                        ),
                                                        onPressed: () async {
                                                          await launchUrl(Uri(
                                                            scheme: 'tel',
                                                            path: getJsonField(
                                                              workersItem,
                                                              r'''$.phone''',
                                                            ).toString(),
                                                          ));
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
