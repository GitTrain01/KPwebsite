import '/components/menu_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasTextTriggered1 = false;
  var hasContainerTriggered = false;
  var hasTextTriggered2 = false;
  var hasTextTriggered3 = false;
  var hasTextTriggered4 = false;
  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1060.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: const Offset(1000.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1370.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'richTextOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          hz: 2,
          offset: const Offset(0.0, 0.0),
          rotation: 1.571,
        ),
      ],
    ),
    'iconOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 300.ms,
          hz: 2,
          offset: const Offset(0.0, 0.0),
          rotation: 1.571,
        ),
      ],
    ),
    'textOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: const Offset(-1000.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'richTextOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'Home',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SingleChildScrollView(
              controller: _model.columnController,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.6,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primary,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: Image.asset(
                            'assets/images/Website_Home.png',
                          ).image,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                80.0, 40.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.14,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.07,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/Logo2_Color.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    setState(() {
                                      FFAppState().MenuBtnColor = 'Home';
                                    });
                                  },
                                  text: 'Home',
                                  options: FFButtonOptions(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0x00FFFFFF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color:
                                              FFAppState().MenuBtnColor ==
                                                      'Home'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryText,
                                          fontSize: () {
                                            if ((MediaQuery.sizeOf(context).width >=
                                                    1280.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1439.0)) {
                                              return 18.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1440.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1511.0)) {
                                              return 20.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1512.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1535.0)) {
                                              return 20.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1536.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1727.0)) {
                                              return 20.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1728.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1919.0)) {
                                              return 24.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1920.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    2239.0)) {
                                              return 24.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    2240.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    2559.0)) {
                                              return 26.0;
                                            } else if (MediaQuery.sizeOf(context)
                                                    .width >=
                                                2560.0) {
                                              return 32.0;
                                            } else {
                                              return 20.0;
                                            }
                                          }(),
                                          fontWeight: FontWeight.bold,
                                        ),
                                    elevation: 0.0,
                                    borderSide: const BorderSide(
                                      color: Color(0x00FFFFFF),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    hoverColor: const Color(0x00FFFFFF),
                                    hoverBorderSide: const BorderSide(
                                      color: Color(0x00FFFFFF),
                                      width: 0.0,
                                    ),
                                    hoverTextColor: const Color(0xFFDD5E5F),
                                  ),
                                  showLoadingIndicator: false,
                                ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    context.pushNamed(
                                      'AboutPage',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );

                                    setState(() {
                                      FFAppState().MenuBtnColor = 'About';
                                    });
                                  },
                                  text: 'About',
                                  options: FFButtonOptions(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0x00FFFFFF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FFAppState().MenuBtnColor ==
                                                  'About'
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          fontSize: () {
                                            if ((MediaQuery.sizeOf(context).width >=
                                                    1280.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1439.0)) {
                                              return 18.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1440.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1511.0)) {
                                              return 20.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1512.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1535.0)) {
                                              return 20.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1536.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1727.0)) {
                                              return 20.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1728.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1919.0)) {
                                              return 24.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1920.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    2239.0)) {
                                              return 24.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    2240.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    2559.0)) {
                                              return 26.0;
                                            } else if (MediaQuery.sizeOf(context)
                                                    .width >=
                                                2560.0) {
                                              return 32.0;
                                            } else {
                                              return 20.0;
                                            }
                                          }(),
                                          fontWeight: FontWeight.bold,
                                        ),
                                    elevation: 0.0,
                                    borderSide: const BorderSide(
                                      color: Color(0x00FFFFFF),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    hoverColor: const Color(0x00FFFFFF),
                                    hoverBorderSide: const BorderSide(
                                      color: Color(0x00FFFFFF),
                                      width: 0.0,
                                    ),
                                    hoverTextColor: const Color(0xFFDD5E5F),
                                  ),
                                  showLoadingIndicator: false,
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Button pressed ...');
                                  },
                                  text: 'Download',
                                  options: FFButtonOptions(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: const Color(0x00FFFFFF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: () {
                                            if ((MediaQuery.sizeOf(context).width >=
                                                    1280.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1439.0)) {
                                              return 18.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1440.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1511.0)) {
                                              return 20.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1512.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1535.0)) {
                                              return 20.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1536.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1727.0)) {
                                              return 20.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1728.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1919.0)) {
                                              return 24.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1920.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    2239.0)) {
                                              return 24.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    2240.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    2559.0)) {
                                              return 26.0;
                                            } else if (MediaQuery.sizeOf(context)
                                                    .width >=
                                                2560.0) {
                                              return 32.0;
                                            } else {
                                              return 20.0;
                                            }
                                          }(),
                                          fontWeight: FontWeight.bold,
                                        ),
                                    elevation: 0.0,
                                    borderSide: const BorderSide(
                                      color: Color(0x00FFFFFF),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                    hoverColor: const Color(0x000FFFFF),
                                    hoverBorderSide: const BorderSide(
                                      color: Color(0x000FFFFF),
                                      width: 0.0,
                                    ),
                                    hoverTextColor: const Color(0xFFDD5E5F),
                                  ),
                                  showLoadingIndicator: false,
                                ),
                              ].divide(SizedBox(width: () {
                                if ((MediaQuery.sizeOf(context).width >=
                                        1280.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        1439.0)) {
                                  return 45.0;
                                } else if ((MediaQuery.sizeOf(context).width >=
                                        1440.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        1511.0)) {
                                  return 60.0;
                                } else if ((MediaQuery.sizeOf(context).width >=
                                        1512.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        1535.0)) {
                                  return 60.0;
                                } else if ((MediaQuery.sizeOf(context).width >=
                                        1536.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        1727.0)) {
                                  return 60.0;
                                } else if ((MediaQuery.sizeOf(context).width >=
                                        1728.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        1919.0)) {
                                  return 60.0;
                                } else if ((MediaQuery.sizeOf(context).width >=
                                        1920.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        2239.0)) {
                                  return 60.0;
                                } else if ((MediaQuery.sizeOf(context).width >=
                                        2240.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        2559.0)) {
                                  return 80.0;
                                } else if (MediaQuery.sizeOf(context).width >=
                                    2560.0) {
                                  return 90.0;
                                } else {
                                  return 60.0;
                                }
                              }())),
                            ),
                          ),
                        ],
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation']!),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onDoubleTap: () async {
                          await _model.columnController?.animateTo(
                            0,
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.ease,
                          );
                        },
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: Image.asset(
                                'assets/images/Website_Home_A.png',
                              ).image,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                140.0, 200.0, 140.0, 320.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.35,
                                  decoration: const BoxDecoration(),
                                  alignment: const AlignmentDirectional(-1.00, 0.00),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.00, -1.00),
                                        child: SelectionArea(
                                            child: Text(
                                          'Discover',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: () {
                                                  if ((MediaQuery.sizeOf(context).width >=
                                                          1280.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1439.0)) {
                                                    return 30.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1440.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1511.0)) {
                                                    return 35.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1512.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1535.0)) {
                                                    return 35.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1536.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1727.0)) {
                                                    return 38.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1728.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1919.0)) {
                                                    return 40.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1920.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          2239.0)) {
                                                    return 45.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          2240.0) &&
                                                      (MediaQuery.sizeOf(context)
                                                              .width <=
                                                          2559.0)) {
                                                    return 50.0;
                                                  } else if (MediaQuery.sizeOf(context)
                                                          .width >=
                                                      2560.0) {
                                                    return 50.0;
                                                  } else {
                                                    return 30.0;
                                                  }
                                                }(),
                                                fontWeight: FontWeight.bold,
                                              ),
                                        )),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.00, -1.00),
                                        child: SelectionArea(
                                            child: Text(
                                          'Kapampangan Cuisine',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: () {
                                                  if ((MediaQuery.sizeOf(context).width >=
                                                          1280.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1439.0)) {
                                                    return 30.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1440.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1511.0)) {
                                                    return 35.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1512.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1535.0)) {
                                                    return 35.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1536.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1727.0)) {
                                                    return 38.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1728.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1919.0)) {
                                                    return 40.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1920.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          2239.0)) {
                                                    return 45.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          2240.0) &&
                                                      (MediaQuery.sizeOf(context)
                                                              .width <=
                                                          2559.0)) {
                                                    return 50.0;
                                                  } else if (MediaQuery.sizeOf(context)
                                                          .width >=
                                                      2560.0) {
                                                    return 50.0;
                                                  } else {
                                                    return 30.0;
                                                  }
                                                }(),
                                                fontWeight: FontWeight.bold,
                                              ),
                                        )),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.00, -1.00),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 10.0, 10.0),
                                          child: SelectionArea(
                                              child: Text(
                                            'Embark on a delightful journey through the world of Kapampangan cuisine with the Kapam-Pamangan app. Access a wide range of over 150+ Kapampangan recipes, from mouthwatering main dishes to savory soups and delightful desserts. Find your favorites and start a culinary adventure today!',
                                            textAlign: TextAlign.justify,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  fontSize: () {
                                                    if ((MediaQuery.sizeOf(context).width >=
                                                            1280.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1439.0)) {
                                                      return 16.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1440.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1511.0)) {
                                                      return 18.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1512.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1535.0)) {
                                                      return 20.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1536.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1727.0)) {
                                                      return 20.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1728.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1919.0)) {
                                                      return 23.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1920.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            2239.0)) {
                                                      return 27.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            2240.0) &&
                                                        (MediaQuery.sizeOf(context)
                                                                .width <=
                                                            2559.0)) {
                                                      return 35.0;
                                                    } else if (MediaQuery.sizeOf(context)
                                                            .width >=
                                                        2560.0) {
                                                      return 40.0;
                                                    } else {
                                                      return 16.0;
                                                    }
                                                  }(),
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1.00, 0.00),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.35,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.00, -1.00),
                                          child: SelectionArea(
                                              child: Text(
                                            'App Features',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: () {
                                                    if ((MediaQuery.sizeOf(context).width >=
                                                            1280.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1439.0)) {
                                                      return 30.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1440.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1511.0)) {
                                                      return 35.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1512.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1535.0)) {
                                                      return 35.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1536.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1727.0)) {
                                                      return 38.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1728.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1919.0)) {
                                                      return 40.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1920.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            2239.0)) {
                                                      return 45.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            2240.0) &&
                                                        (MediaQuery.sizeOf(context)
                                                                .width <=
                                                            2559.0)) {
                                                      return 50.0;
                                                    } else if (MediaQuery.sizeOf(context)
                                                            .width >=
                                                        2560.0) {
                                                      return 50.0;
                                                    } else {
                                                      return 30.0;
                                                    }
                                                  }(),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.00, -1.00),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 10.0),
                                            child: SelectionArea(
                                                child: Text(
                                              'Explore Kapampangan cuisine like never before with the Kapam-Pamangan app, packed with a diverse range of features to enhance your culinary experience. From searching for numerous Kapampangan recipes to generating recommended dishes based on available ingredients, our app is your indispensable kitchen companion. Dive into the world of Kapampangan cooking with step-by-step cooking instructions, meal planning tools, and more!',
                                              textAlign: TextAlign.justify,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    fontSize: () {
                                                      if ((MediaQuery.sizeOf(context).width >=
                                                              1280.0) &&
                                                          (MediaQuery.sizeOf(context).width <=
                                                              1439.0)) {
                                                        return 16.0;
                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                              1440.0) &&
                                                          (MediaQuery.sizeOf(context).width <=
                                                              1511.0)) {
                                                        return 18.0;
                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                              1512.0) &&
                                                          (MediaQuery.sizeOf(context).width <=
                                                              1535.0)) {
                                                        return 20.0;
                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                              1536.0) &&
                                                          (MediaQuery.sizeOf(context).width <=
                                                              1727.0)) {
                                                        return 20.0;
                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                              1728.0) &&
                                                          (MediaQuery.sizeOf(context).width <=
                                                              1919.0)) {
                                                        return 23.0;
                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                              1920.0) &&
                                                          (MediaQuery.sizeOf(context).width <=
                                                              2239.0)) {
                                                        return 27.0;
                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                              2240.0) &&
                                                          (MediaQuery.sizeOf(context)
                                                                  .width <=
                                                              2559.0)) {
                                                        return 35.0;
                                                      } else if (MediaQuery.sizeOf(context)
                                                              .width >=
                                                          2560.0) {
                                                        return 40.0;
                                                      } else {
                                                        return 16.0;
                                                      }
                                                    }(),
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                            )).animateOnActionTrigger(
                                                animationsMap[
                                                    'textOnActionTriggerAnimation1']!,
                                                hasBeenTriggered:
                                                    hasTextTriggered1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(height: () {
                                if ((MediaQuery.sizeOf(context).width >=
                                        1280.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        1439.0)) {
                                  return 200.0;
                                } else if ((MediaQuery.sizeOf(context).width >=
                                        1440.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        1511.0)) {
                                  return 250.0;
                                } else if ((MediaQuery.sizeOf(context).width >=
                                        1512.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        1535.0)) {
                                  return 300.0;
                                } else if ((MediaQuery.sizeOf(context).width >=
                                        1536.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        1727.0)) {
                                  return 300.0;
                                } else if ((MediaQuery.sizeOf(context).width >=
                                        1728.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        1919.0)) {
                                  return 310.0;
                                } else if ((MediaQuery.sizeOf(context).width >=
                                        1920.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        2239.0)) {
                                  return 425.0;
                                } else if ((MediaQuery.sizeOf(context).width >=
                                        2240.0) &&
                                    (MediaQuery.sizeOf(context).width <=
                                        2559.0)) {
                                  return 470.0;
                                } else if (MediaQuery.sizeOf(context).width >=
                                    2560.0) {
                                  return 500.0;
                                } else {
                                  return 300.0;
                                }
                              }())),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: Image.asset(
                            'assets/images/Website_Home_B2.png',
                          ).image,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                180.0, 250.0, 180.0, 250.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.35,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  alignment: const AlignmentDirectional(-1.00, 0.00),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.00, -1.00),
                                        child: SelectionArea(
                                            child: Text(
                                          'Explore Kapampangan\nCuisine. Download',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: () {
                                                  if ((MediaQuery.sizeOf(context).width >=
                                                          1280.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1439.0)) {
                                                    return 30.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1440.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1511.0)) {
                                                    return 30.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1512.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1535.0)) {
                                                    return 33.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1536.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1727.0)) {
                                                    return 35.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1728.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1919.0)) {
                                                    return 38.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1920.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          2239.0)) {
                                                    return 50.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          2240.0) &&
                                                      (MediaQuery.sizeOf(context)
                                                              .width <=
                                                          2559.0)) {
                                                    return 55.0;
                                                  } else if (MediaQuery.sizeOf(context)
                                                          .width >=
                                                      2560.0) {
                                                    return 55.0;
                                                  } else {
                                                    return 30.0;
                                                  }
                                                }(),
                                                fontWeight: FontWeight.bold,
                                              ),
                                        )),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.00, 0.00),
                                        child: RichText(
                                          textScaleFactor:
                                              MediaQuery.of(context)
                                                  .textScaleFactor,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Kapam-Pamangan ',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: () {
                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                1280.0) &&
                                                            (MediaQuery.sizeOf(context).width <=
                                                                1439.0)) {
                                                          return 30.0;
                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                1440.0) &&
                                                            (MediaQuery.sizeOf(context).width <=
                                                                1511.0)) {
                                                          return 30.0;
                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                1512.0) &&
                                                            (MediaQuery.sizeOf(context).width <=
                                                                1535.0)) {
                                                          return 33.0;
                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                1536.0) &&
                                                            (MediaQuery.sizeOf(context).width <=
                                                                1727.0)) {
                                                          return 35.0;
                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                1728.0) &&
                                                            (MediaQuery.sizeOf(context).width <=
                                                                1919.0)) {
                                                          return 38.0;
                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                1920.0) &&
                                                            (MediaQuery.sizeOf(context).width <=
                                                                2239.0)) {
                                                          return 50.0;
                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                2240.0) &&
                                                            (MediaQuery.sizeOf(context)
                                                                    .width <=
                                                                2559.0)) {
                                                          return 55.0;
                                                        } else if (MediaQuery.sizeOf(context)
                                                                .width >=
                                                            2560.0) {
                                                          return 55.0;
                                                        } else {
                                                          return 30.0;
                                                        }
                                                      }(),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                              ),
                                              TextSpan(
                                                text: 'now!',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: () {
                                                    if ((MediaQuery.sizeOf(context).width >=
                                                            1280.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1439.0)) {
                                                      return 30.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1440.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1511.0)) {
                                                      return 30.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1512.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1535.0)) {
                                                      return 33.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1536.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1727.0)) {
                                                      return 35.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1728.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1919.0)) {
                                                      return 38.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1920.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            2239.0)) {
                                                      return 50.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            2240.0) &&
                                                        (MediaQuery.sizeOf(context)
                                                                .width <=
                                                            2559.0)) {
                                                      return 55.0;
                                                    } else if (MediaQuery.sizeOf(context)
                                                            .width >=
                                                        2560.0) {
                                                      return 55.0;
                                                    } else {
                                                      return 30.0;
                                                    }
                                                  }(),
                                                ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: () {
                                                    if ((MediaQuery.sizeOf(context).width >=
                                                            1280.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1439.0)) {
                                                      return 30.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1440.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1511.0)) {
                                                      return 30.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1512.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1535.0)) {
                                                      return 33.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1536.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1727.0)) {
                                                      return 35.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1728.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            1919.0)) {
                                                      return 38.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            1920.0) &&
                                                        (MediaQuery.sizeOf(context).width <=
                                                            2239.0)) {
                                                      return 50.0;
                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                            2240.0) &&
                                                        (MediaQuery.sizeOf(context)
                                                                .width <=
                                                            2559.0)) {
                                                      return 55.0;
                                                    } else if (MediaQuery.sizeOf(context)
                                                            .width >=
                                                        2560.0) {
                                                      return 55.0;
                                                    } else {
                                                      return 30.0;
                                                    }
                                                  }(),
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                          textAlign: TextAlign.center,
                                        ).animateOnPageLoad(animationsMap[
                                            'richTextOnPageLoadAnimation1']!),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.00, 0.00),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/GoogleBadge.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation']!,
                                    hasBeenTriggered: hasContainerTriggered),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                57.0, 31.0, 30.0, 31.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'AboutPage',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );

                                    setState(() {
                                      FFAppState().KPInformation = 'AboutUs';
                                      FFAppState().MenuBtnColor = 'About';
                                    });
                                  },
                                  child: Text(
                                    'About',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: () {
                                            if ((MediaQuery.sizeOf(context).width >=
                                                    1280.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1439.0)) {
                                              return 14.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1440.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1511.0)) {
                                              return 15.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1512.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1535.0)) {
                                              return 16.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1536.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1727.0)) {
                                              return 16.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1728.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1919.0)) {
                                              return 18.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1920.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    2239.0)) {
                                              return 20.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    2240.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    2559.0)) {
                                              return 22.0;
                                            } else if (MediaQuery.sizeOf(context)
                                                    .width >=
                                                2560.0) {
                                              return 22.0;
                                            } else {
                                              return 18.0;
                                            }
                                          }(),
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'TermsOfUse',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: const TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                  child: Text(
                                    'Terms of Use',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontSize: () {
                                            if ((MediaQuery.sizeOf(context).width >=
                                                    1280.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1439.0)) {
                                              return 14.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1440.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1511.0)) {
                                              return 15.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1512.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1535.0)) {
                                              return 16.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1536.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1727.0)) {
                                              return 16.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1728.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    1919.0)) {
                                              return 18.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    1920.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    2239.0)) {
                                              return 20.0;
                                            } else if ((MediaQuery.sizeOf(context).width >=
                                                    2240.0) &&
                                                (MediaQuery.sizeOf(context).width <=
                                                    2559.0)) {
                                              return 22.0;
                                            } else if (MediaQuery.sizeOf(context)
                                                    .width >=
                                                2560.0) {
                                              return 22.0;
                                            } else {
                                              return 18.0;
                                            }
                                          }(),
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'PrivacyPolicy',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Text(
                                          'Privacy Policy',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: () {
                                                  if ((MediaQuery.sizeOf(context).width >=
                                                          1280.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1439.0)) {
                                                    return 14.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1440.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1511.0)) {
                                                    return 15.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1512.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1535.0)) {
                                                    return 16.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1536.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1727.0)) {
                                                    return 16.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1728.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          1919.0)) {
                                                    return 18.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          1920.0) &&
                                                      (MediaQuery.sizeOf(context).width <=
                                                          2239.0)) {
                                                    return 20.0;
                                                  } else if ((MediaQuery.sizeOf(context).width >=
                                                          2240.0) &&
                                                      (MediaQuery.sizeOf(context)
                                                              .width <=
                                                          2559.0)) {
                                                    return 22.0;
                                                  } else if (MediaQuery.sizeOf(context)
                                                          .width >=
                                                      2560.0) {
                                                    return 22.0;
                                                  } else {
                                                    return 18.0;
                                                  }
                                                }(),
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),
                                    SelectionArea(
                                        child: Text(
                                      '© 2023 Capstoneers, All Rights Reserved.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            fontSize: () {
                                              if ((MediaQuery.sizeOf(context).width >=
                                                      1280.0) &&
                                                  (MediaQuery.sizeOf(context).width <=
                                                      1439.0)) {
                                                return 14.0;
                                              } else if ((MediaQuery.sizeOf(context).width >=
                                                      1440.0) &&
                                                  (MediaQuery.sizeOf(context).width <=
                                                      1511.0)) {
                                                return 15.0;
                                              } else if ((MediaQuery.sizeOf(context).width >=
                                                      1512.0) &&
                                                  (MediaQuery.sizeOf(context).width <=
                                                      1535.0)) {
                                                return 16.0;
                                              } else if ((MediaQuery.sizeOf(context).width >=
                                                      1536.0) &&
                                                  (MediaQuery.sizeOf(context).width <=
                                                      1727.0)) {
                                                return 16.0;
                                              } else if ((MediaQuery.sizeOf(context).width >=
                                                      1728.0) &&
                                                  (MediaQuery.sizeOf(context).width <=
                                                      1919.0)) {
                                                return 18.0;
                                              } else if ((MediaQuery.sizeOf(context).width >=
                                                      1920.0) &&
                                                  (MediaQuery.sizeOf(context).width <=
                                                      2239.0)) {
                                                return 20.0;
                                              } else if ((MediaQuery.sizeOf(context).width >=
                                                      2240.0) &&
                                                  (MediaQuery.sizeOf(context).width <=
                                                      2559.0)) {
                                                return 22.0;
                                              } else if (MediaQuery.sizeOf(context).width >=
                                                  2560.0) {
                                                return 22.0;
                                              } else {
                                                return 18.0;
                                              }
                                            }(),
                                            fontWeight: FontWeight.bold,
                                          ),
                                    )),
                                  ],
                                ),
                              ].divide(const SizedBox(height: 10.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          desktop: false,
                        ))
                          Container(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.6,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/Website_HomePhone.png',
                                ).image,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.00, 0.00),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 20.0, 20.0, 20.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.28,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.04,
                                          constraints: const BoxConstraints(
                                            maxWidth: 200.0,
                                            maxHeight: 60.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Logo2_Color.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(1.00, 0.00),
                                        child: Builder(
                                          builder: (context) => Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 20.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (animationsMap[
                                                        'iconOnActionTriggerAnimation1'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'iconOnActionTriggerAnimation1']!
                                                      .controller
                                                      .forward(from: 0.0);
                                                }
                                                await showAlignedDialog(
                                                  context: context,
                                                  isGlobal: true,
                                                  avoidOverflow: false,
                                                  targetAnchor:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  followerAnchor:
                                                      const AlignmentDirectional(
                                                              0.0, -1.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  builder: (dialogContext) {
                                                    return Material(
                                                      color: Colors.transparent,
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: const MenuBarWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              child: Container(
                                                width: 40.0,
                                                height: 40.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.bars,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 20.0,
                                                  ).animateOnActionTrigger(
                                                    animationsMap[
                                                        'iconOnActionTriggerAnimation1']!,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          desktop: false,
                        ))
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Website_HomePhone_A.png',
                                ).image,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  60.0, 320.0, 60.0, 160.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    decoration: const BoxDecoration(),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 20.0),
                                            child: SelectionArea(
                                                child: AutoSizeText(
                                              'Discover  \nKapampangan Cuisine',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            )),
                                          ),
                                          SelectionArea(
                                              child: Text(
                                            'Embark on a delightful journey through the world of Kapampangan cuisine with the Kapam-Pamangan app. Access a wide range of over 150+ Kapampangan recipes, from mouthwatering main dishes to savory soups and delightful desserts. Find your favorites and start a culinary adventure today!',
                                            textAlign: TextAlign.justify,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: 13.0,
                                                ),
                                          )),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: SelectionArea(
                                              child: AutoSizeText(
                                            'App Features',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )),
                                        ),
                                        SelectionArea(
                                            child: Text(
                                          'Explore Kapampangan cuisine like never before with the Kapam-Pamangan app, packed with a diverse range of features to enhance your culinary experience. From searching for numerous Kapampangan recipes to generating recommended dishes based on available ingredients, our app is your indispensable kitchen companion. Dive into the world of Kapampangan cooking with step-by-step cooking instructions, meal planning tools, and more!',
                                          textAlign: TextAlign.justify,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 13.0,
                                              ),
                                        )),
                                      ],
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 390.0)),
                              ),
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          desktop: false,
                        ))
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).warning,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/Website_HomePhone_B.png',
                                ).image,
                              ),
                            ),
                            alignment: const AlignmentDirectional(-1.00, 0.00),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 90.0, 150.0, 90.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SelectionArea(
                                          child: Text(
                                        'Explore Kapampamgan\nCusines. Download',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      )),
                                      RichText(
                                        textScaleFactor: MediaQuery.of(context)
                                            .textScaleFactor,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Kapam-Pamangan ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            const TextSpan(
                                              text: 'now!',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.0,
                                              ),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.35,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.06,
                                        decoration: const BoxDecoration(),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/GoogleBadge.png',
                                            width: 300.0,
                                            height: 200.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 15.0, 15.0, 15.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.00, 0.00),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'AboutPage',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );

                                            setState(() {
                                              FFAppState().MenuBtnColor =
                                                  'About';
                                            });
                                          },
                                          child: Text(
                                            'About',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: 10.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.00, 0.00),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'TermsOfUse',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );

                                            setState(() {
                                              FFAppState().MenuBtnColor =
                                                  'About';
                                            });
                                          },
                                          child: Text(
                                            'Terms of Use',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: 10.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.00, 0.00),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'PrivacyPolicy',
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 0),
                                                      ),
                                                    },
                                                  );

                                                  setState(() {
                                                    FFAppState().MenuBtnColor =
                                                        'About';
                                                  });
                                                },
                                                child: Text(
                                                  'Privacy Policy',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 10.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: SelectionArea(
                                                child: Text(
                                              '© 2023 Capstoneers, All Rights Reserved.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 6.0,
                                                      ),
                                            )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    desktop: false,
                  ))
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          desktop: false,
                        ))
                          Container(
                            width: double.infinity,
                            height: MediaQuery.sizeOf(context).height * 0.55,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/Website_HomeTablet.png',
                                ).image,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(0.00, 0.00),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 20.0, 20.0, 20.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.31,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.05,
                                          constraints: const BoxConstraints(
                                            maxWidth: 200.0,
                                            maxHeight: 60.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/Logo2_Color.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(1.00, 0.00),
                                        child: Builder(
                                          builder: (context) => Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    20.0, 20.0, 20.0, 20.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (animationsMap[
                                                        'iconOnActionTriggerAnimation2'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'iconOnActionTriggerAnimation2']!
                                                      .controller
                                                      .forward(from: 0.0);
                                                }
                                                await showAlignedDialog(
                                                  context: context,
                                                  isGlobal: true,
                                                  avoidOverflow: false,
                                                  targetAnchor:
                                                      const AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  followerAnchor:
                                                      const AlignmentDirectional(
                                                              0.0, -1.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  builder: (dialogContext) {
                                                    return Material(
                                                      color: Colors.transparent,
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: const MenuBarWidget(),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          0.00, 0.00),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.bars,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 20.0,
                                                  ).animateOnActionTrigger(
                                                    animationsMap[
                                                        'iconOnActionTriggerAnimation2']!,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          desktop: false,
                        ))
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/Website_HomeTablet_A.png',
                                ).image,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  40.0, 100.0, 40.0, 100.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    decoration: const BoxDecoration(),
                                    alignment:
                                        const AlignmentDirectional(-1.00, 0.00),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.00, -1.00),
                                          child: SelectionArea(
                                              child: Text(
                                            'Discover',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width >=
                                                              800.0) &&
                                                          (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <=
                                                              1023.0)
                                                      ? 18.0
                                                      : 23.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )).animateOnActionTrigger(
                                              animationsMap[
                                                  'textOnActionTriggerAnimation2']!,
                                              hasBeenTriggered:
                                                  hasTextTriggered2),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.00, -1.00),
                                          child: SelectionArea(
                                              child: Text(
                                            'Kapampangan Cuisine',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width >=
                                                              800.0) &&
                                                          (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <=
                                                              1023.0)
                                                      ? 18.0
                                                      : 23.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          )).animateOnActionTrigger(
                                              animationsMap[
                                                  'textOnActionTriggerAnimation3']!,
                                              hasBeenTriggered:
                                                  hasTextTriggered3),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.00, -1.00),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 10.0),
                                            child: SelectionArea(
                                                child: Text(
                                              'Embark on a delightful journey through the world of Kapampangan cuisine with the Kapam-Pamangan app. Access a wide range of over 150+ Kapampangan recipes, from mouthwatering main dishes to savory soups and delightful desserts. Find your favorites and start a culinary adventure today!',
                                              textAlign: TextAlign.justify,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >=
                                                                    800.0) &&
                                                                (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <=
                                                                    1023.0)
                                                            ? 14.0
                                                            : 16.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            )).animateOnActionTrigger(
                                                animationsMap[
                                                    'textOnActionTriggerAnimation4']!,
                                                hasBeenTriggered:
                                                    hasTextTriggered4),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.00, 0.00),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.4,
                                      decoration: const BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                0.00, -1.00),
                                            child: SelectionArea(
                                                child: Text(
                                              'App Features',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    fontSize: (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >=
                                                                800.0) &&
                                                            (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <=
                                                                1023.0)
                                                        ? 18.0
                                                        : 23.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            )),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                0.00, -1.00),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 10.0, 10.0),
                                              child: SelectionArea(
                                                  child: Text(
                                                'Explore Kapampangan cuisine like never before with the Kapam-Pamangan app, packed with a diverse range of features to enhance your culinary experience. From searching for numerous Kapampangan recipes to generating recommended dishes based on available ingredients, our app is your indispensable kitchen companion. Dive into the world of Kapampangan cooking with step-by-step cooking instructions, meal planning tools, and more!',
                                                textAlign: TextAlign.justify,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >=
                                                                      800.0) &&
                                                                  (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <=
                                                                      1023.0)
                                                              ? 14.0
                                                              : 16.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              )),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ].divide(const SizedBox(height: 100.0)),
                              ),
                            ),
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          desktop: false,
                        ))
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).warning,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: Image.asset(
                                  'assets/images/Website_HomeTablet_B.png',
                                ).image,
                              ),
                            ),
                            alignment: const AlignmentDirectional(-1.00, 0.00),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 50.0, 400.0, 100.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.35,
                                        decoration: const BoxDecoration(),
                                        alignment:
                                            const AlignmentDirectional(-1.00, 0.00),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.00, -1.00),
                                              child: SelectionArea(
                                                  child: Text(
                                                'Explore Kapampangan\nCuisine. Download',
                                                textAlign: TextAlign.center,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 25.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              )),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: RichText(
                                                textScaleFactor:
                                                    MediaQuery.of(context)
                                                        .textScaleFactor,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Kapam-Pamangan ',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 25.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                    ),
                                                    TextSpan(
                                                      text: 'now!',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 25.0,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 25.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                textAlign: TextAlign.center,
                                              ).animateOnPageLoad(animationsMap[
                                                  'richTextOnPageLoadAnimation2']!),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 10.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.asset(
                                                      'assets/images/GoogleBadge.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 15.0, 15.0, 15.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.00, 0.00),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'AboutPage',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );

                                            setState(() {
                                              FFAppState().MenuBtnColor =
                                                  'About';
                                            });
                                          },
                                          child: Text(
                                            'About',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: 15.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.00, 0.00),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed(
                                              'TermsOfUse',
                                              extra: <String, dynamic>{
                                                kTransitionInfoKey:
                                                    const TransitionInfo(
                                                  hasTransition: true,
                                                  transitionType:
                                                      PageTransitionType.fade,
                                                  duration:
                                                      Duration(milliseconds: 0),
                                                ),
                                              },
                                            );

                                            setState(() {
                                              FFAppState().MenuBtnColor =
                                                  'About';
                                            });
                                          },
                                          child: Text(
                                            'Terms of Use',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width >=
                                                              800.0) &&
                                                          (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <=
                                                              1023.0)
                                                      ? 10.0
                                                      : 15.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.00, 0.00),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'PrivacyPolicy',
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          const TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .fade,
                                                        duration: Duration(
                                                            milliseconds: 0),
                                                      ),
                                                    },
                                                  );

                                                  setState(() {
                                                    FFAppState().MenuBtnColor =
                                                        'About';
                                                  });
                                                },
                                                child: Text(
                                                  'Privacy Policy',
                                                  style:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            fontSize: (MediaQuery.sizeOf(context)
                                                                            .width >=
                                                                        800.0) &&
                                                                    (MediaQuery.sizeOf(context)
                                                                            .width <=
                                                                        1023.0)
                                                                ? 10.0
                                                                : 15.0,
                                                          ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: const AlignmentDirectional(
                                                -1.00, 0.00),
                                            child: Text(
                                              '© 2023 Capstoneers, All Rights Reserved.',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 12.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        ));
  }
}
