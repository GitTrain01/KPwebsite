import '/components/footer_phone_widget.dart';
import '/components/footer_tablet_widget.dart';
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
import 'package:provider/provider.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  _PrivacyPolicyWidgetState createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget>
    with TickerProviderStateMixin {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

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
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());

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
        title: 'PrivacyPolicy',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Column(
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
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        alignment: const AlignmentDirectional(0.00, -1.00),
                        image: Image.asset(
                          'assets/images/Website_About.png',
                        ).image,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    80.0, 40.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.1,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.05,
                                      decoration: const BoxDecoration(),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/Logo2_Color.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed(
                                          'HomePage',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );

                                        setState(() {
                                          FFAppState().MenuBtnColor = 'Home';
                                        });
                                      },
                                      text: 'Home',
                                      options: FFButtonOptions(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
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
                                                } else if (MediaQuery.sizeOf(context).width >=
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        hoverColor: const Color(0x00FFFFFF),
                                        hoverBorderSide: const BorderSide(
                                          color: Color(0x00FFFFFF),
                                          width: 0.0,
                                        ),
                                        hoverTextColor: const Color(0xFFFDDBA9),
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
                                              duration:
                                                  Duration(milliseconds: 0),
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
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
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
                                                } else if (MediaQuery.sizeOf(context).width >=
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        hoverColor: const Color(0x00FFFFFF),
                                        hoverBorderSide: const BorderSide(
                                          color: Color(0x00FFFFFF),
                                          width: 0.0,
                                        ),
                                        hoverTextColor: const Color(0xFFFDDBA9),
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
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: const Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
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
                                                } else if (MediaQuery.sizeOf(context).width >=
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        hoverColor: const Color(0x000FFFFF),
                                        hoverBorderSide: const BorderSide(
                                          color: Color(0x000FFFFF),
                                          width: 0.0,
                                        ),
                                        hoverTextColor: const Color(0xFFFDDBA9),
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
                                    } else if ((MediaQuery.sizeOf(context)
                                                .width >=
                                            1728.0) &&
                                        (MediaQuery.sizeOf(context).width <=
                                            1919.0)) {
                                      return 60.0;
                                    } else if ((MediaQuery.sizeOf(context)
                                                .width >=
                                            1920.0) &&
                                        (MediaQuery.sizeOf(context).width <=
                                            2239.0)) {
                                      return 60.0;
                                    } else if ((MediaQuery.sizeOf(context)
                                                .width >=
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
                              Expanded(
                                child: Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 100.0, 0.0, 0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 50.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.6,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.9,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          25.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                'Privacy Policy',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 21.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 22.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 23.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 24.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 25.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 30.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 33.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 36.0;
                                                                        } else {
                                                                          return 25.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    20.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          20.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                'Last Updated: October 6, 2023',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 21.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 24.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                    ),
                                                                minFontSize:
                                                                    14.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: SelectionArea(
                                                                child: AutoSizeText(
                                                              'Welcome to Kapam-Pamangan\'s Privacy Policy. This document outlines how we collect, use, protect, and manage your data when you use our mobile recipe application, Kapam-Pamangan. As a team of IT students from the Philippines, we are dedicated to preserving the rich culture of Kapampangan cuisine while ensuring your privacy is respected and your data is secure.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        () {
                                                                      if ((MediaQuery.sizeOf(context).width >=
                                                                              1280.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1439.0)) {
                                                                        return 11.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1440.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1511.0)) {
                                                                        return 12.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1512.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1535.0)) {
                                                                        return 13.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1536.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1727.0)) {
                                                                        return 14.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1728.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1919.0)) {
                                                                        return 15.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1920.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2239.0)) {
                                                                        return 17.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              2240.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2559.0)) {
                                                                        return 19.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          2560.0) {
                                                                        return 21.0;
                                                                      } else {
                                                                        return 19.0;
                                                                      }
                                                                    }(),
                                                                  ),
                                                              minFontSize: 13.0,
                                                            )),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          25.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '1. Introduction',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 20.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 22.0;
                                                                        } else {
                                                                          return 20.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    13.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '1.1 Purpose of this Privacy Policy',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    11.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: SelectionArea(
                                                                child: AutoSizeText(
                                                              'This Privacy Policy serves to explain our data handling practices and your rights regarding your personal information when you use Kapam-Pamangan. We recognize the importance of safeguarding your data and are committed to maintaining transparency and trust with our users.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        () {
                                                                      if ((MediaQuery.sizeOf(context).width >=
                                                                              1280.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1439.0)) {
                                                                        return 11.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1440.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1511.0)) {
                                                                        return 12.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1512.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1535.0)) {
                                                                        return 13.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1536.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1727.0)) {
                                                                        return 14.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1728.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1919.0)) {
                                                                        return 15.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1920.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2239.0)) {
                                                                        return 17.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              2240.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2559.0)) {
                                                                        return 19.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          2560.0) {
                                                                        return 21.0;
                                                                      } else {
                                                                        return 19.0;
                                                                      }
                                                                    }(),
                                                                  ),
                                                              minFontSize: 12.0,
                                                            )),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          15.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '1.2 Commitment to Data Protection',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    11.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: SelectionArea(
                                                                child: AutoSizeText(
                                                              'Protecting your personal information is paramount to us. We understand the value of your trust, and we prioritize the security and confidentiality of your data.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        () {
                                                                      if ((MediaQuery.sizeOf(context).width >=
                                                                              1280.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1439.0)) {
                                                                        return 11.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1440.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1511.0)) {
                                                                        return 12.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1512.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1535.0)) {
                                                                        return 13.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1536.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1727.0)) {
                                                                        return 14.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1728.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1919.0)) {
                                                                        return 15.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1920.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2239.0)) {
                                                                        return 17.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              2240.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2559.0)) {
                                                                        return 19.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          2560.0) {
                                                                        return 21.0;
                                                                      } else {
                                                                        return 19.0;
                                                                      }
                                                                    }(),
                                                                  ),
                                                              minFontSize: 12.0,
                                                            )),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          25.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '2. Information We Collect',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 20.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 22.0;
                                                                        } else {
                                                                          return 20.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    13.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '2.1 Types of Data Collected',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    11.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: RichText(
                                                              textScaleFactor:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaleFactor,
                                                              text: TextSpan(
                                                                children: const [
                                                                  TextSpan(
                                                                    text:
                                                                        'Kapam-Pamangan collects two main types of data:\n',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\n•\tPersonal Data: ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'This includes information that can identify you, such as your name, email address, and profile details.',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\n•\tNon-Personal Data: ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'This type of data is collected in a way that does not personally identify you. It may include usage statistics, device information, or aggregated data.',
                                                                    style:
                                                                        TextStyle(),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 17.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 19.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 21.0;
                                                                        } else {
                                                                          return 19.0;
                                                                        }
                                                                      }(),
                                                                    ),
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          15.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          Text(
                                                                '2.2 How Data is Collected',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: RichText(
                                                              textScaleFactor:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaleFactor,
                                                              text: TextSpan(
                                                                children: const [
                                                                  TextSpan(
                                                                    text:
                                                                        'We collect data through:\n',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\n•\tUser Input: ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'When you create an account or use our features, we may collect personal data.',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\n•\tAutomated Collection:  ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'We gather non-personal data through technologies that help us improve the application\'s performance and user experience.',
                                                                    style:
                                                                        TextStyle(),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 17.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 19.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 21.0;
                                                                        } else {
                                                                          return 19.0;
                                                                        }
                                                                      }(),
                                                                    ),
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          25.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '3. Use of Information',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 20.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 22.0;
                                                                        } else {
                                                                          return 20.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    13.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '3.1 How We Use Your Data',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    11.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: RichText(
                                                              textScaleFactor:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaleFactor,
                                                              text: TextSpan(
                                                                children: const [
                                                                  TextSpan(
                                                                    text:
                                                                        'Kapam-Pamangan uses collected data for the following purposes:\n',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\n•\tImproving the App: ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'This involves collecting specific data points, such as the Recipe Like Count and the Recipe Cook Count, which offer insights into recipe popularity and user preferences. We also analyze user engagement patterns, helping us understand how frequently users interact with the app and providing insights into app performance. By studying these data points, the app can be updated to run more smoothly, enhance recipe quality, and provide an improved user experience. Your valuable feedback and interactions shape the app to meet your culinary needs.\n',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\n• Communication: ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'To keep users informed and engaged, Kapam-Pamangan may collect data for communication purposes. This can include your email address or other contact information. With this data, the app can send you updates about new recipes, notifications about app features or improvements, and promotions related to Kapam-Pamangan. The aim is to provide valuable information and keep you connected with the app.',
                                                                    style:
                                                                        TextStyle(),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 17.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 19.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 21.0;
                                                                        } else {
                                                                          return 19.0;
                                                                        }
                                                                      }(),
                                                                    ),
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          25.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '4. Data Sharing',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 20.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 22.0;
                                                                        } else {
                                                                          return 20.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    13.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '4.1 When We Share Your Data',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    11.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: RichText(
                                                              textScaleFactor:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaleFactor,
                                                              text: TextSpan(
                                                                children: const [
                                                                  TextSpan(
                                                                    text:
                                                                        'Your data\'s security is vital to us, and we will not share your personal data with third parties except in the following circumstances:\n',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\n•\tWith Your Consent: ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'We may share your data with third parties if you explicitly give consent.',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\n•\tService Providers:   ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'We engage third-party service providers who are bound to safeguard your data as instructed by us. These providers assist us in hosting, maintaining, and securing the application.',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\n•\tLegal Requirements: ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'We may share your data when required by law, regulations, or to protect our rights, safety, or property.',
                                                                    style:
                                                                        TextStyle(),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 17.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 19.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 21.0;
                                                                        } else {
                                                                          return 19.0;
                                                                        }
                                                                      }(),
                                                                    ),
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          25.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '5. User Rights',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 20.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 22.0;
                                                                        } else {
                                                                          return 20.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    13.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '5.1 Your Data Rights',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    11.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: RichText(
                                                              textScaleFactor:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaleFactor,
                                                              text: TextSpan(
                                                                children: const [
                                                                  TextSpan(
                                                                    text:
                                                                        'You have certain rights concerning your data:\n',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\n•\tAccess: ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'You can request to access the personal data we hold about you, enabling you to review the information we have and how it\'s used.',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\n•\tCorrection: ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'You may update or correct your personal data to ensure its accuracy.',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\n•\tDeletion: ',
                                                                    style:
                                                                        TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        'You can request the deletion of your personal data if you choose to discontinue using Kapam-Pamangan.\n',
                                                                    style:
                                                                        TextStyle(),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '\nYou have certain rights concerning your data, including the right to access, correct, or delete your personal data. To exercise these rights or make data-related requests, please contact us at the email address provided in Section 11.',
                                                                    style:
                                                                        TextStyle(),
                                                                  )
                                                                ],
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 17.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 19.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 21.0;
                                                                        } else {
                                                                          return 19.0;
                                                                        }
                                                                      }(),
                                                                    ),
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          25.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '6. Data Retention',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 20.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 22.0;
                                                                        } else {
                                                                          return 20.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    13.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '6.1 How Long We Keep Your Data',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    11.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: SelectionArea(
                                                                child: AutoSizeText(
                                                              'We retain your personal data as long as necessary for the purposes described in this Privacy Policy or as required by applicable laws. When you delete your account, we will securely remove your personal data from our systems.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        () {
                                                                      if ((MediaQuery.sizeOf(context).width >=
                                                                              1280.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1439.0)) {
                                                                        return 11.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1440.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1511.0)) {
                                                                        return 12.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1512.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1535.0)) {
                                                                        return 13.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1536.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1727.0)) {
                                                                        return 14.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1728.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1919.0)) {
                                                                        return 15.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1920.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2239.0)) {
                                                                        return 17.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              2240.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2559.0)) {
                                                                        return 19.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          2560.0) {
                                                                        return 21.0;
                                                                      } else {
                                                                        return 19.0;
                                                                      }
                                                                    }(),
                                                                  ),
                                                              minFontSize: 12.0,
                                                            )),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          25.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '7. Security Measures',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 20.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 22.0;
                                                                        } else {
                                                                          return 20.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    13.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '7.1 Protecting Your Data',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    11.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: SelectionArea(
                                                                child: AutoSizeText(
                                                              'We employ robust security measures to protect your data from unauthorized access or disclosure. Our measures include encryption, access controls, and regular security assessments. While we take precautions, no method of data transmission is entirely secure, and we continuously monitor and update our security protocols to mitigate risks.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        () {
                                                                      if ((MediaQuery.sizeOf(context).width >=
                                                                              1280.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1439.0)) {
                                                                        return 11.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1440.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1511.0)) {
                                                                        return 12.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1512.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1535.0)) {
                                                                        return 13.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1536.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1727.0)) {
                                                                        return 14.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1728.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1919.0)) {
                                                                        return 15.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1920.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2239.0)) {
                                                                        return 17.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              2240.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2559.0)) {
                                                                        return 19.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          2560.0) {
                                                                        return 21.0;
                                                                      } else {
                                                                        return 19.0;
                                                                      }
                                                                    }(),
                                                                  ),
                                                              minFontSize: 12.0,
                                                            )),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          25.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '8. Third-Party Links',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 20.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 22.0;
                                                                        } else {
                                                                          return 20.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    13.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '8.1 External Links',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    11.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: SelectionArea(
                                                                child: AutoSizeText(
                                                              'Kapam-Pamangan may include links to third-party websites or services for your convenience and culinary inspiration. However, these sites have their own privacy policies, and we do not endorse or control them. We encourage you to review their policies when visiting such sites to ensure your data is protected.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        () {
                                                                      if ((MediaQuery.sizeOf(context).width >=
                                                                              1280.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1439.0)) {
                                                                        return 11.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1440.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1511.0)) {
                                                                        return 12.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1512.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1535.0)) {
                                                                        return 13.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1536.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1727.0)) {
                                                                        return 14.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1728.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1919.0)) {
                                                                        return 15.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1920.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2239.0)) {
                                                                        return 17.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              2240.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2559.0)) {
                                                                        return 19.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          2560.0) {
                                                                        return 21.0;
                                                                      } else {
                                                                        return 19.0;
                                                                      }
                                                                    }(),
                                                                  ),
                                                              minFontSize: 12.0,
                                                            )),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          25.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '9. Children\'s Privacy',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 20.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 22.0;
                                                                        } else {
                                                                          return 20.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    13.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '9.1 Age Restrictions',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    11.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: SelectionArea(
                                                                child: AutoSizeText(
                                                              'Kapam-Pamangan is intended for users aged 18 and older. If you are under 18, you must have parental consent to use our application. We take this measure to ensure the privacy and safety of younger users.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        () {
                                                                      if ((MediaQuery.sizeOf(context).width >=
                                                                              1280.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1439.0)) {
                                                                        return 11.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1440.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1511.0)) {
                                                                        return 12.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1512.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1535.0)) {
                                                                        return 13.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1536.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1727.0)) {
                                                                        return 14.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1728.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1919.0)) {
                                                                        return 15.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1920.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2239.0)) {
                                                                        return 17.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              2240.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2559.0)) {
                                                                        return 19.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          2560.0) {
                                                                        return 21.0;
                                                                      } else {
                                                                        return 19.0;
                                                                      }
                                                                    }(),
                                                                  ),
                                                              minFontSize: 12.0,
                                                            )),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          25.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '10. Changes to Privacy Policy',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 20.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 22.0;
                                                                        } else {
                                                                          return 20.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    13.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '10.1 Policy Updates',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    11.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: SelectionArea(
                                                                child: AutoSizeText(
                                                              'We may update this Privacy Policy to reflect changes in our practices, technology, or for legal reasons. We will provide notice of significant changes within the application or via email, as applicable. Your continued use of Kapam-Pamangan following such changes constitutes acceptance of the revised policy.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        () {
                                                                      if ((MediaQuery.sizeOf(context).width >=
                                                                              1280.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1439.0)) {
                                                                        return 11.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1440.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1511.0)) {
                                                                        return 12.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1512.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1535.0)) {
                                                                        return 13.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1536.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1727.0)) {
                                                                        return 14.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1728.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1919.0)) {
                                                                        return 15.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1920.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2239.0)) {
                                                                        return 17.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              2240.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2559.0)) {
                                                                        return 19.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          2560.0) {
                                                                        return 21.0;
                                                                      } else {
                                                                        return 19.0;
                                                                      }
                                                                    }(),
                                                                  ),
                                                              minFontSize: 12.0,
                                                            )),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          25.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '11. Contact Information',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 20.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 22.0;
                                                                        } else {
                                                                          return 20.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    13.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '11.1 Reach Out to Us',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    11.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: SelectionArea(
                                                                child: AutoSizeText(
                                                              'For inquiries, data-related requests, or concerns regarding this Privacy Policy, please contact us at kapam-pamangan@gmail.com. We are here to assist you with any privacy-related questions or concerns and value your feedback.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        () {
                                                                      if ((MediaQuery.sizeOf(context).width >=
                                                                              1280.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1439.0)) {
                                                                        return 11.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1440.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1511.0)) {
                                                                        return 12.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1512.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1535.0)) {
                                                                        return 13.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1536.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1727.0)) {
                                                                        return 14.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1728.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1919.0)) {
                                                                        return 15.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1920.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2239.0)) {
                                                                        return 17.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              2240.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2559.0)) {
                                                                        return 19.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          2560.0) {
                                                                        return 21.0;
                                                                      } else {
                                                                        return 19.0;
                                                                      }
                                                                    }(),
                                                                  ),
                                                              minFontSize: 12.0,
                                                            )),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          25.0,
                                                                          10.0,
                                                                          10.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '12. Compliance with Philippine Data Protection Laws',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 20.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 22.0;
                                                                        } else {
                                                                          return 20.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    13.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    -1.00,
                                                                    0.00),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '12.1 Legal Compliance',
                                                                textAlign:
                                                                    TextAlign
                                                                        .justify,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          () {
                                                                        if ((MediaQuery.sizeOf(context).width >=
                                                                                1280.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1439.0)) {
                                                                          return 10.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 11.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 12.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 13.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 14.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 18.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 20.0;
                                                                        } else {
                                                                          return 18.0;
                                                                        }
                                                                      }(),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                    ),
                                                                minFontSize:
                                                                    11.0,
                                                              )),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: SelectionArea(
                                                                child: AutoSizeText(
                                                              'We are committed to complying with applicable Philippine data protection laws and regulations, ensuring your data is handled in accordance with local legal requirements.\n\nThank you for choosing Kapam-Pamangan. Your trust is invaluable to us, and we are dedicated to providing you with a delightful culinary experience while safeguarding your privacy and data.',
                                                              textAlign:
                                                                  TextAlign
                                                                      .justify,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        () {
                                                                      if ((MediaQuery.sizeOf(context).width >=
                                                                              1280.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1439.0)) {
                                                                        return 11.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1440.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1511.0)) {
                                                                        return 12.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1512.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1535.0)) {
                                                                        return 13.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1536.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1727.0)) {
                                                                        return 14.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1728.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1919.0)) {
                                                                        return 15.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1920.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2239.0)) {
                                                                        return 17.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              2240.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2559.0)) {
                                                                        return 19.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          2560.0) {
                                                                        return 21.0;
                                                                      } else {
                                                                        return 19.0;
                                                                      }
                                                                    }(),
                                                                  ),
                                                              minFontSize: 12.0,
                                                            )),
                                                          ),
                                                        ].addToEnd(const SizedBox(
                                                            height: 50.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: double.infinity,
                                            height: 180.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: Image.asset(
                                                  'assets/images/Website_Footer.png',
                                                ).image,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      57.0, 31.0, 30.0, 10.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  InkWell(
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
                                                        'AboutPage',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );

                                                      setState(() {
                                                        FFAppState()
                                                                .KPInformation =
                                                            'AboutUs';
                                                        FFAppState()
                                                                .MenuBtnColor =
                                                            'About';
                                                      });
                                                    },
                                                    child: Text(
                                                      'About',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
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
                                                              } else if ((MediaQuery.sizeOf(context)
                                                                          .width >=
                                                                      1920.0) &&
                                                                  (MediaQuery.sizeOf(context)
                                                                          .width <=
                                                                      2239.0)) {
                                                                return 20.0;
                                                              } else if ((MediaQuery.sizeOf(context)
                                                                          .width >=
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                  InkWell(
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
                                                        'TermsOfUse',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              const TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    },
                                                    child: Text(
                                                      'Terms of Use',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
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
                                                              } else if ((MediaQuery.sizeOf(context)
                                                                          .width >=
                                                                      1920.0) &&
                                                                  (MediaQuery.sizeOf(context)
                                                                          .width <=
                                                                      2239.0)) {
                                                                return 20.0;
                                                              } else if ((MediaQuery.sizeOf(context)
                                                                          .width >=
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'PrivacyPolicy',
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          0),
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          child: Text(
                                                            'Privacy Policy',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      SelectionArea(
                                                          child: Text(
                                                        '© 2023 Capstoneers, All Rights Reserved.',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
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
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width >=
                                                                        2560.0) {
                                                                      return 22.0;
                                                                    } else {
                                                                      return 18.0;
                                                                    }
                                                                  }(),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      )),
                                                    ],
                                                  ),
                                                ].divide(
                                                    const SizedBox(height: 10.0)),
                                              ),
                                            ),
                                          ),
                                        ],
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
                  ).animateOnPageLoad(
                      animationsMap['containerOnPageLoadAnimation']!),
                if (responsiveVisibility(
                  context: context,
                  desktop: false,
                ))
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (responsiveVisibility(
                            context: context,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(
                                    'assets/images/Website_AboutPhone.png',
                                  ).image,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 26.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 20.0, 20.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
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
                                                'assets/images/Logo2_White.png',
                                                fit: BoxFit.fill,
                                              ),
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
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: Image.asset(
                                    'assets/images/Website_AboutTablet.png',
                                  ).image,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 26.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 20.0, 20.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
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
                                                'assets/images/Logo2_White.png',
                                                fit: BoxFit.fill,
                                              ),
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
                              ),
                            ),
                          if (responsiveVisibility(
                            context: context,
                            desktop: false,
                          ))
                            Align(
                              alignment: const AlignmentDirectional(-1.00, -1.00),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 10.0, 10.0, 0.0),
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      25.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            'Privacy Policy',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      25.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      20.0),
                                                          child: Text(
                                                            'Last Updated: October 6, 2023',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      12.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Welcome to Kapam-Pamangan\'s Privacy Policy. This document outlines how we collect, use, protect, and manage your data when you use our mobile recipe application, Kapam-Pamangan. As a team of IT students from the Philippines, we are dedicated to preserving the rich culture of Kapampangan cuisine while ensuring your privacy is respected and your data is secure.',
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      25.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: Text(
                                                            '1. Introduction',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '1.1 Purpose of this Privacy Policy',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'This Privacy Policy serves to explain our data handling practices and your rights regarding your personal information when you use Kapam-Pamangan. We recognize the importance of safeguarding your data and are committed to maintaining transparency and trust with our users.',
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      15.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '1.2 Commitment to Data Protection',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Protecting your personal information is paramount to us. We understand the value of your trust, and we prioritize the security and confidentiality of your data.',
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      25.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: Text(
                                                            '2. Information We Collect',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '2.1 Types of Data Collected',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: RichText(
                                                          textScaleFactor:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaleFactor,
                                                          text: TextSpan(
                                                            children: const [
                                                              TextSpan(
                                                                text:
                                                                    'Kapam-Pamangan collects two main types of data:\n',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '\n•\tPersonal Data: ',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'This includes information that can identify you, such as your name, email address, and profile details.',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '\n•\tNon-Personal Data: ',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'This type of data is collected in a way that does not personally identify you. It may include usage statistics, device information, or aggregated data.',
                                                                style:
                                                                    TextStyle(),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      15.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '2.2 How Data is Collected',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: RichText(
                                                          textScaleFactor:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaleFactor,
                                                          text: TextSpan(
                                                            children: const [
                                                              TextSpan(
                                                                text:
                                                                    'We collect data through:\n',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '\n•\tUser Input: ',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'When you create an account or use our features, we may collect personal data.',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '\n•\tAutomated Collection:  ',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'We gather non-personal data through technologies that help us improve the application\'s performance and user experience.',
                                                                style:
                                                                    TextStyle(),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      25.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: Text(
                                                            '3. Use of Information',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '3.1 How We Use Your Data',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: RichText(
                                                          textScaleFactor:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaleFactor,
                                                          text: TextSpan(
                                                            children: const [
                                                              TextSpan(
                                                                text:
                                                                    'Kapam-Pamangan uses collected data for the following purposes:\n',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '\n•\tImproving the App: ',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'This involves collecting specific data points, such as the Recipe Like Count and the Recipe Cook Count, which offer insights into recipe popularity and user preferences. We also analyze user engagement patterns, helping us understand how frequently users interact with the app and providing insights into app performance. By studying these data points, the app can be updated to run more smoothly, enhance recipe quality, and provide an improved user experience. Your valuable feedback and interactions shape the app to meet your culinary needs.\n',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '\n• Communication: ',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'To keep users informed and engaged, Kapam-Pamangan may collect data for communication purposes. This can include your email address or other contact information. With this data, the app can send you updates about new recipes, notifications about app features or improvements, and promotions related to Kapam-Pamangan. The aim is to provide valuable information and keep you connected with the app.',
                                                                style:
                                                                    TextStyle(),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      25.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: Text(
                                                            '4. Data Sharing',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '4.1 When We Share Your Data',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: RichText(
                                                          textScaleFactor:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaleFactor,
                                                          text: TextSpan(
                                                            children: const [
                                                              TextSpan(
                                                                text:
                                                                    'Your data\'s security is vital to us, and we will not share your personal data with third parties except in the following circumstances:\n',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '\n•\tWith Your Consent: ',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'We may share your data with third parties if you explicitly give consent.',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '\n•\tService Providers:   ',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'We engage third-party service providers who are bound to safeguard your data as instructed by us. These providers assist us in hosting, maintaining, and securing the application.',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '\n•\tLegal Requirements: ',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'We may share your data when required by law, regulations, or to protect our rights, safety, or property.',
                                                                style:
                                                                    TextStyle(),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      25.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: Text(
                                                            '5. User Rights',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '5.1 Your Data Rights',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: RichText(
                                                          textScaleFactor:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaleFactor,
                                                          text: TextSpan(
                                                            children: const [
                                                              TextSpan(
                                                                text:
                                                                    'You have certain rights concerning your data:\n',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '\n•\tAccess: ',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'You can request to access the personal data we hold about you, enabling you to review the information we have and how it\'s used.',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '\n•\tCorrection: ',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'You may update or correct your personal data to ensure its accuracy.',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '\n•\tDeletion: ',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'You can request the deletion of your personal data if you choose to discontinue using Kapam-Pamangan.\n',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    '\nYou have certain rights concerning your data, including the right to access, correct, or delete your personal data. To exercise these rights or make data-related requests, please contact us at the email address provided in Section 11.',
                                                                style:
                                                                    TextStyle(),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium,
                                                          ),
                                                          textAlign:
                                                              TextAlign.justify,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      25.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: Text(
                                                            '6. Data Retention',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '6.1 How Long We Keep Your Data',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'We retain your personal data as long as necessary for the purposes described in this Privacy Policy or as required by applicable laws. When you delete your account, we will securely remove your personal data from our systems.',
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      25.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: Text(
                                                            '7. Security Measures',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '7.1 Protecting Your Data',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'We employ robust security measures to protect your data from unauthorized access or disclosure. Our measures include encryption, access controls, and regular security assessments. While we take precautions, no method of data transmission is entirely secure, and we continuously monitor and update our security protocols to mitigate risks.',
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      25.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: Text(
                                                            '8. Third-Party Links',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '8.1 External Links',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Kapam-Pamangan may include links to third-party websites or services for your convenience and culinary inspiration. However, these sites have their own privacy policies, and we do not endorse or control them. We encourage you to review their policies when visiting such sites to ensure your data is protected.',
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      25.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: Text(
                                                            '9. Children\'s Privacy',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '9.1 Age Restrictions',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Kapam-Pamangan is intended for users aged 18 and older. If you are under 18, you must have parental consent to use our application. We take this measure to ensure the privacy and safety of younger users.',
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      25.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: Text(
                                                            '10. Changes to Privacy Policy',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '10.1 Policy Updates',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'We may update this Privacy Policy to reflect changes in our practices, technology, or for legal reasons. We will provide notice of significant changes within the application or via email, as applicable. Your continued use of Kapam-Pamangan following such changes constitutes acceptance of the revised policy.',
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      25.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: Text(
                                                            '11. Contact Information',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '11.1 Reach Out to Us',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'For inquiries, data-related requests, or concerns regarding this Privacy Policy, please contact us at kapam-pamangan@gmail.com. We are here to assist you with any privacy-related questions or concerns and value your feedback.',
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      25.0,
                                                                      10.0,
                                                                      10.0),
                                                          child: Text(
                                                            '12. Compliance with Philippine Data Protection Laws',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      15.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.00, 0.00),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      5.0),
                                                          child: Text(
                                                            '12.1 Legal Compliance',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      13.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'We are committed to complying with applicable Philippine data protection laws and regulations, ensuring your data is handled in accordance with local legal requirements.\n\nThank you for choosing Kapam-Pamangan. Your trust is invaluable to us, and we are dedicated to providing you with a delightful culinary experience while safeguarding your privacy and data.',
                                                          textAlign:
                                                              TextAlign.justify,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium,
                                                        ),
                                                      ),
                                                    ].addToEnd(
                                                        const SizedBox(height: 50.0)),
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
                                                  height: 130.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    image: DecorationImage(
                                                      fit: BoxFit.fill,
                                                      image: Image.asset(
                                                        'assets/images/Website_FooterTablet.png',
                                                      ).image,
                                                    ),
                                                  ),
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .footerTabletModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: const FooterTabletWidget(),
                                                  ),
                                                ),
                                              if (responsiveVisibility(
                                                context: context,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                                Container(
                                                  width: double.infinity,
                                                  height: 130.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                  child: wrapWithModel(
                                                    model:
                                                        _model.footerPhoneModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: const FooterPhoneWidget(),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ));
  }
}
