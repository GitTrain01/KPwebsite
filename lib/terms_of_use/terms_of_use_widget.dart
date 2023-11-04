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
import 'terms_of_use_model.dart';
export 'terms_of_use_model.dart';

class TermsOfUseWidget extends StatefulWidget {
  const TermsOfUseWidget({super.key});

  @override
  _TermsOfUseWidgetState createState() => _TermsOfUseWidgetState();
}

class _TermsOfUseWidgetState extends State<TermsOfUseWidget>
    with TickerProviderStateMixin {
  late TermsOfUseModel _model;

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
    _model = createModel(context, () => TermsOfUseModel());

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
        title: 'TermsOfUse',
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
                                                                'Terms of Use',
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
                                                                          return 15.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1440.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1511.0)) {
                                                                          return 16.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1512.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1535.0)) {
                                                                          return 17.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1536.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1727.0)) {
                                                                          return 18.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1728.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                1919.0)) {
                                                                          return 22.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                1920.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2239.0)) {
                                                                          return 25.0;
                                                                        } else if ((MediaQuery.sizeOf(context).width >=
                                                                                2240.0) &&
                                                                            (MediaQuery.sizeOf(context).width <=
                                                                                2559.0)) {
                                                                          return 27.0;
                                                                        } else if (MediaQuery.sizeOf(context).width >=
                                                                            2560.0) {
                                                                          return 30.0;
                                                                        } else {
                                                                          return 20.0;
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
                                                                          10.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                'Introduction and Agreement to Legal Terms',
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
                                                              'We are the Capstoneers ("Company," "we," "us," "our"). We operate the mobile application Kapam-Pamangan (the "App"), as well as any other related products and services that refer or link to these legal terms (the "Legal Terms") (collectively, the "Services"). You can contact us by email at bsit3bcapstone@gmail.com.   \n\nThese Legal Terms constitute a legally binding agreement made between you, whether personally or on behalf of an entity ("you"), and the Capstoneers, concerning your access to and use of the Services. You agree that by accessing the Services, you have read, understood, and agreed to be bound by all of these Legal Terms. IF YOU DO NOT AGREE WITH ALL OF THESE LEGAL TERMS, THEN YOU ARE EXPRESSLY PROHIBITED FROM USING THE SERVICES, AND YOU MUST DISCONTINUE USE IMMEDIATELY.\n\nWe value transparency and are committed to keeping users informed of significant updates to these Terms of Use. While we will make efforts to notify users of substantial changes, it may not always be feasible to notify all users individually. Therefore, it is essential for users to periodically review these terms to stay informed about any updates.\n\nChanges to these Terms of Use will be effective upon posting on our platform, and it is your responsibility to stay informed about the latest policies and guidelines. Continued use of Kapam-Pamangan constitutes acceptance of the revised terms.\n\nThe Services are intended for users who are at least 18 years old, or for users under the age of 18, parental consent is required to use or register for the Services.',
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
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: AutoSizeText(
                                                              'Welcome to Kapam-Pamangan, a mobile recipe application dedicated to celebrating and preserving the rich culture of Kapampangan cuisine. This application was carefully developed by a group of IT college students from the Institute of Business and Computing Education of Mabalacat City College as part of their Capstone project. Kapam-Pamangan is the ultimate culinary companion for anyone with a passion for Kapampangan recipes, known for their unique flavors and traditional heritage.',
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
                                                                          5.0),
                                                              child:
                                                                  SelectionArea(
                                                                      child:
                                                                          AutoSizeText(
                                                                '1.1 Explanation of the Purpose',
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
                                                            child: AutoSizeText(
                                                              'Kapam-Pamangan is designed to provide users with a platform to access, explore, and share Kapampangan recipes. It aims to promote the culinary heritage of the Kapampangan community and facilitate a culinary experience that showcases the rich flavors and traditions associated with Kapampangan cuisine. We are committed to preserving and celebrating these cherished recipes while fostering a vibrant culinary community.',
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
                                                                          AutoSizeText(
                                                                '1.2 Acknowledgment of Ownership',
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
                                                              'Kapam-Pamangan is designed to provide users with a platform to access, explore, and share Kapampangan recipes. It aims to promote the culinary heritage of the Kapampangan community and facilitate a culinary experience that showcases the rich flavors and traditions associated with Kapampangan cuisine. We are committed to preserving and celebrating these cherished recipes while fostering a vibrant culinary community.',
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
                                                                '2. Acceptance of Terms',
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
                                                              'By accessing or using Kapam-Pamangan, you agree to be bound by these Terms of Use/Service. We invite users to explore and enjoy our application, but it is essential to understand and accept these terms. If you do not agree with these terms, please do not use the application. Users must be at least 18 years old to use Kapam-Pamangan, or they must have parental consent to do so.',
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
                                                                '3. User Registration',
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
                                                                '3.1 Registration Process',
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
                                                              'To access certain features of Kapam-Pamangan, users may be required to register an account. During the registration process, users must provide accurate and complete information, ensuring the personalized experience our application offers. It\'s essential that users take care to enter correct details to fully enjoy the features and benefits of Kapam-Pamangan.',
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
                                                                '3.2 Security Measures',
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
                                                              'Kapam-Pamangan employs security measures to protect user accounts and data. Users are encouraged to choose strong passwords, keep your account credentials confidential, and promptly report any unauthorized access to their accounts, among other security measures as needed. We are continuously working to improve the security features of Kapam-Pamangan, and we appreciate your diligence in keeping your account safe.',
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
                                                                  AutoSizeText(
                                                                '4. User Conduct',
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
                                                              ),
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
                                                                '4.1 Guidelines for Acceptable Behavior',
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
                                                              'Users are expected to engage in responsible and respectful behavior while using Kapam-Pamangan. Although we do not have a chat or comment feature that allows direct user-to-user interaction, we encourage all users to respect the content shared by others. This includes not engaging in any form of harassment or misuse of the features available within the application. Our community values responsible use of the platform and the culinary inspiration it provides.',
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
                                                                '4.2 Prohibited Activities',
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
                                                              'To maintain the integrity of our application, users are strictly prohibited from engaging in any illegal activities. This includes but is not limited to copyright infringement, harassment, the distribution of inappropriate content, and any actions that violate Philippine laws or regulations. We are committed to upholding the law and ensuring that Kapam-Pamangan remains a safe and respectful platform for all users.',
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
                                                                '5. Intellectual Property',
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
                                                                '5.1 Ownership of Content',
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
                                                              'While Kapam-Pamangan owns the rights to the content developed specifically for the application, such as graphics, animations, and unique features, we want to emphasize that we do not claim ownership of any recipes, images, or videos featured in the application unless explicitly stated otherwise. Our primary goal is to celebrate and share Kapampangan culinary traditions while respecting the intellectual property rights of recipe creators and contributors.',
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
                                                                '5.2 Reporting Copyright Violations',
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
                                                              'If you believe that your copyright has been violated within Kapam-Pamangan, please contact us immediately. We are committed to investigating any such claims and taking appropriate action in accordance with Republic Act No. 8293, the Intellectual Property Code of the Philippines. Our aim is to uphold copyright laws and ensure fair use of content within our application.',
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
                                                                '6. Privacy Policy',
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
                                                              'Kapam-Pamangan\'s Privacy Policy is dedicated to explaining how user data is collected, used, and protected. We are unwavering in our commitment to complying with data protection laws and ensuring the privacy and security of user information. Please review our comprehensive Privacy Policy separately for detailed information on data handling practices.',
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
                                                                '7. User Responsibilities',
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
                                                                '7.1 User-Generated Content',
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
                                                              'Users play a pivotal role in shaping the content of Kapam-Pamangan. We encourage users to share their culinary creations, but it\'s essential to remember that they are responsible for any content they upload or share on our platform. User-generated content must adhere to our community guidelines and must not infringe upon the rights of others.',
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
                                                                '7.2 Maintenance of Account Information',
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
                                                              'Maintaining accurate and up-to-date account information is crucial for a seamless experience on Kapam-Pamangan. Users are responsible for ensuring that their account details, including contact information, remain current. Failure to do so may result in limitations or restrictions on account access, and we appreciate your cooperation in this regard.',
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
                                                                '8. Termination of Accounts',
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
                                                              'The Capstoneers retain the right to terminate user accounts under specific conditions, including violations of these Terms of Use/Service or our community guidelines. Account termination may result from, but is not limited to, violations such as engaging in prohibited activities (e.g., copyright infringement, harassment, or distribution of inappropriate content), repeated failure to comply with community guidelines, or suspicion of fraudulent activity or misuse of the application. \n\nUsers have the option to appeal account termination by contacting us. Our team will review appeals and make determinations in accordance with our commitment to fairness and adherence to these terms. We value transparency and aim to ensure that account termination processes are conducted fairly and equitably for all users.',
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
                                                                '9. Dispute Resolution',
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
                                                              'In the event of disputes or conflicts between users or between users and Kapam-Pamangan, we encourage parties to seek resolution through negotiation, mediation, or arbitration, as deemed necessary and appropriate by both parties involved. If you have concerns or need assistance with dispute resolution, please contact us and our team will provide guidance and support in accordance with these principles.',
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
                                                              minFontSize: 11.0,
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
                                                                '10. Limitation of Liability',
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
                                                                '10.1 Disclaimer of Responsibility',
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
                                                              'Kapam-Pamangan is provided on an "as-is" basis. The Capstoneers disclaim responsibility for any damages, losses, or inconveniences resulting from the use of the application. While we strive to offer a seamless and enjoyable experience, users are encouraged to use Kapam-Pamangan responsibly and acknowledge the inherent risks of online interaction.',
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
                                                                '10.2 Limitation of Liability',
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
                                                              'To the extent permitted by applicable law, the Capstoneers\' liability for any claims arising from the use of Kapam-Pamangan is limited to the amount paid by the user (if applicable) or the resolution of the issue in question. We prioritize user satisfaction and are committed to addressing concerns in a fair and reasonable manner.',
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
                                                                '11. Changes to Terms',
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
                                                              'The Capstoneers reserve the right to modify these Terms of Use at any time. While we will make efforts to notify users of significant changes, it may not always be feasible to notify all users individually. Therefore, it is essential for users to periodically review these terms to stay informed about any updates. Continued use of Kapam-Pamangan constitutes acceptance of the revised terms. We value transparency and will endeavor to keep users informed of significant updates, but the responsibility to stay informed ultimately rests with each user. We encourage regular review of these terms to ensure compliance with our latest policies and guidelines.',
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
                                                                '12. Governing Law and Jurisdiction',
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
                                                              'Any legal disputes related to Kapam-Pamangan and these Terms of Use will be settled in the appropriate jurisdiction as specified in our separate Governing Law and Jurisdiction Policy. We believe in upholding the law and ensuring a fair and just resolution of legal matters.',
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
                                                                '13. Contact Information',
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
                                                              'For inquiries, feedback, or concerns related to Kapam-Pamangan, please contact us at kapam-pamangan@gmail.com. We value your feedback and are here to assist you in any way possible.\n\nThank you for choosing Kapam-Pamangan, and we hope you enjoy your culinary journey with us. Together, let\'s celebrate the rich traditions of Kapampangan cuisine and foster a vibrant culinary community!\n',
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
                                            highlightColor: Colors.transparent,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
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
                                            highlightColor: Colors.transparent,
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
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
                          Container(
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
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 10.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
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
                                                        'Terms of Use',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 25.0,
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
                                                                  10.0),
                                                      child: Text(
                                                        'Introduction and Agreement to Legal Terms',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'We are the Capstoneers ("Company," "we," "us," "our"). We operate the mobile application Kapam-Pamangan (the "App"), as well as any other related products and services that refer or link to these legal terms (the "Legal Terms") (collectively, the "Services"). You can contact us by email at bsit3bcapstone@gmail.com.   \n\nThese Legal Terms constitute a legally binding agreement made between you, whether personally or on behalf of an entity ("you"), and the Capstoneers, concerning your access to and use of the Services. You agree that by accessing the Services, you have read, understood, and agreed to be bound by all of these Legal Terms. IF YOU DO NOT AGREE WITH ALL OF THESE LEGAL TERMS, THEN YOU ARE EXPRESSLY PROHIBITED FROM USING THE SERVICES, AND YOU MUST DISCONTINUE USE IMMEDIATELY.\n\nWe value transparency and are committed to keeping users informed of significant updates to these Terms of Use. While we will make efforts to notify users of substantial changes, it may not always be feasible to notify all users individually. Therefore, it is essential for users to periodically review these terms to stay informed about any updates.\n\nChanges to these Terms of Use will be effective upon posting on our platform, and it is your responsibility to stay informed about the latest policies and guidelines. Continued use of Kapam-Pamangan constitutes acceptance of the revised terms.\n\nThe Services are intended for users who are at least 18 years old, or for users under the age of 18, parental consent is required to use or register for the Services.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'Welcome to Kapam-Pamangan, a mobile recipe application dedicated to celebrating and preserving the rich culture of Kapampangan cuisine. This application was carefully developed by a group of IT college students from the Institute of Business and Computing Education of Mabalacat City College as part of their Capstone project. Kapam-Pamangan is the ultimate culinary companion for anyone with a passion for Kapampangan recipes, known for their unique flavors and traditional heritage.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                                  5.0),
                                                      child: Text(
                                                        '1.1 Explanation of the Purpose',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 13.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'Kapam-Pamangan is designed to provide users with a platform to access, explore, and share Kapampangan recipes. It aims to promote the culinary heritage of the Kapampangan community and facilitate a culinary experience that showcases the rich flavors and traditions associated with Kapampangan cuisine. We are committed to preserving and celebrating these cherished recipes while fostering a vibrant culinary community.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '1.2 Acknowledgment of Ownership',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 13.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'Kapam-Pamangan is designed to provide users with a platform to access, explore, and share Kapampangan recipes. It aims to promote the culinary heritage of the Kapampangan community and facilitate a culinary experience that showcases the rich flavors and traditions associated with Kapampangan cuisine. We are committed to preserving and celebrating these cherished recipes while fostering a vibrant culinary community.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '2. Acceptance of Terms',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'By accessing or using Kapam-Pamangan, you agree to be bound by these Terms of Use/Service. We invite users to explore and enjoy our application, but it is essential to understand and accept these terms. If you do not agree with these terms, please do not use the application. Users must be at least 18 years old to use Kapam-Pamangan, or they must have parental consent to do so.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '3. User Registration',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                        '3.1 Registration Process',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 13.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'To access certain features of Kapam-Pamangan, users may be required to register an account. During the registration process, users must provide accurate and complete information, ensuring the personalized experience our application offers. It\'s essential that users take care to enter correct details to fully enjoy the features and benefits of Kapam-Pamangan.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '3.2 Security Measures',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 13.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'Kapam-Pamangan employs security measures to protect user accounts and data. Users are encouraged to choose strong passwords, keep your account credentials confidential, and promptly report any unauthorized access to their accounts, among other security measures as needed. We are continuously working to improve the security features of Kapam-Pamangan, and we appreciate your diligence in keeping your account safe.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '4. User Conduct',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                        '4.1 Guidelines for Acceptable Behavior',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 13.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'Users are expected to engage in responsible and respectful behavior while using Kapam-Pamangan. Although we do not have a chat or comment feature that allows direct user-to-user interaction, we encourage all users to respect the content shared by others. This includes not engaging in any form of harassment or misuse of the features available within the application. Our community values responsible use of the platform and the culinary inspiration it provides.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '4.2 Prohibited Activities',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 13.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'To maintain the integrity of our application, users are strictly prohibited from engaging in any illegal activities. This includes but is not limited to copyright infringement, harassment, the distribution of inappropriate content, and any actions that violate Philippine laws or regulations. We are committed to upholding the law and ensuring that Kapam-Pamangan remains a safe and respectful platform for all users.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '5. Intellectual Property',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                        '5.1 Ownership of Content',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 13.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'While Kapam-Pamangan owns the rights to the content developed specifically for the application, such as graphics, animations, and unique features, we want to emphasize that we do not claim ownership of any recipes, images, or videos featured in the application unless explicitly stated otherwise. Our primary goal is to celebrate and share Kapampangan culinary traditions while respecting the intellectual property rights of recipe creators and contributors.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '5.2 Reporting Copyright Violations',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 13.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'If you believe that your copyright has been violated within Kapam-Pamangan, please contact us immediately. We are committed to investigating any such claims and taking appropriate action in accordance with Republic Act No. 8293, the Intellectual Property Code of the Philippines. Our aim is to uphold copyright laws and ensure fair use of content within our application.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '6. Privacy Policy',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'Kapam-Pamangan\'s Privacy Policy is dedicated to explaining how user data is collected, used, and protected. We are unwavering in our commitment to complying with data protection laws and ensuring the privacy and security of user information. Please review our comprehensive Privacy Policy separately for detailed information on data handling practices.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '7. User Responsibilities',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                        '7.1 User-Generated Content',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 13.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'Users play a pivotal role in shaping the content of Kapam-Pamangan. We encourage users to share their culinary creations, but it\'s essential to remember that they are responsible for any content they upload or share on our platform. User-generated content must adhere to our community guidelines and must not infringe upon the rights of others.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '7.2 Maintenance of Account Information',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 13.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'Maintaining accurate and up-to-date account information is crucial for a seamless experience on Kapam-Pamangan. Users are responsible for ensuring that their account details, including contact information, remain current. Failure to do so may result in limitations or restrictions on account access, and we appreciate your cooperation in this regard.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '8. Termination of Accounts',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'The Capstoneers retain the right to terminate user accounts under specific conditions, including violations of these Terms of Use/Service or our community guidelines. Account termination may result from, but is not limited to, violations such as engaging in prohibited activities (e.g., copyright infringement, harassment, or distribution of inappropriate content), repeated failure to comply with community guidelines, or suspicion of fraudulent activity or misuse of the application. \n\nUsers have the option to appeal account termination by contacting us. Our team will review appeals and make determinations in accordance with our commitment to fairness and adherence to these terms. We value transparency and aim to ensure that account termination processes are conducted fairly and equitably for all users.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '9. Dispute Resolution',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'In the event of disputes or conflicts between users or between users and Kapam-Pamangan, we encourage parties to seek resolution through negotiation, mediation, or arbitration, as deemed necessary and appropriate by both parties involved. If you have concerns or need assistance with dispute resolution, please contact us and our team will provide guidance and support in accordance with these principles.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '10. Limitation of Liability',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                        '10.1 Disclaimer of Responsibility',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 13.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'Kapam-Pamangan is provided on an "as-is" basis. The Capstoneers disclaim responsibility for any damages, losses, or inconveniences resulting from the use of the application. While we strive to offer a seamless and enjoyable experience, users are encouraged to use Kapam-Pamangan responsibly and acknowledge the inherent risks of online interaction.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '10.2 Limitation of Liability',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 13.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'To the extent permitted by applicable law, the Capstoneers\' liability for any claims arising from the use of Kapam-Pamangan is limited to the amount paid by the user (if applicable) or the resolution of the issue in question. We prioritize user satisfaction and are committed to addressing concerns in a fair and reasonable manner.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '11. Changes to Terms',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'The Capstoneers reserve the right to modify these Terms of Use at any time. While we will make efforts to notify users of significant changes, it may not always be feasible to notify all users individually. Therefore, it is essential for users to periodically review these terms to stay informed about any updates. Continued use of Kapam-Pamangan constitutes acceptance of the revised terms. We value transparency and will endeavor to keep users informed of significant updates, but the responsibility to stay informed ultimately rests with each user. We encourage regular review of these terms to ensure compliance with our latest policies and guidelines.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '12. Governing Law and Jurisdiction',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'Any legal disputes related to Kapam-Pamangan and these Terms of Use will be settled in the appropriate jurisdiction as specified in our separate Governing Law and Jurisdiction Policy. We believe in upholding the law and ensuring a fair and just resolution of legal matters.',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                        '13. Contact Information',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 15.0,
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
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      'For inquiries, feedback, or concerns related to Kapam-Pamangan, please contact us at kapam-pamangan@gmail.com. We value your feedback and are here to assist you in any way possible.\n\nThank you for choosing Kapam-Pamangan, and we hope you enjoy your culinary journey with us. Together, let\'s celebrate the rich traditions of Kapampangan cuisine and foster a vibrant culinary community!\n',
                                                      textAlign:
                                                          TextAlign.justify,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium,
                                                    ),
                                                  ),
                                                ].addToEnd(
                                                    const SizedBox(height: 50.0)),
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
