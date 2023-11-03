import '/components/menu_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'about_page_model.dart';
export 'about_page_model.dart';

class AboutPageWidget extends StatefulWidget {
  const AboutPageWidget({Key? key}) : super(key: key);

  @override
  _AboutPageWidgetState createState() => _AboutPageWidgetState();
}

class _AboutPageWidgetState extends State<AboutPageWidget>
    with TickerProviderStateMixin {
  late AboutPageModel _model;

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
          offset: Offset(0.0, 0.0),
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
          offset: Offset(0.0, 0.0),
          rotation: 1.571,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutPageModel());

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
        title: 'AboutPage',
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
                        alignment: AlignmentDirectional(0.00, -1.00),
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    80.0, 40.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.1,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.06,
                                      decoration: BoxDecoration(),
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
                                            kTransitionInfoKey: TransitionInfo(
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: FFAppState()
                                                          .MenuBtnColor ==
                                                      'Home'
                                                  ? Color(0xFF6A994E)
                                                  : FlutterFlowTheme.of(context)
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
                                        borderSide: BorderSide(
                                          color: Color(0x00FFFFFF),
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        hoverColor: Color(0x00FFFFFF),
                                        hoverBorderSide: BorderSide(
                                          color: Color(0x00FFFFFF),
                                          width: 0.0,
                                        ),
                                        hoverTextColor: Color(0xFFA7C957),
                                      ),
                                      showLoadingIndicator: false,
                                    ),
                                    FFButtonWidget(
                                      onPressed: () async {
                                        setState(() {
                                          FFAppState().KPInformation =
                                              'AboutUs';
                                          FFAppState().MenuBtnColor = 'About';
                                        });
                                      },
                                      text: 'About',
                                      options: FFButtonOptions(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x00FFFFFF),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: FFAppState()
                                                          .MenuBtnColor ==
                                                      'About'
                                                  ? Color(0xFF6A994E)
                                                  : FlutterFlowTheme.of(context)
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
                                        borderSide: BorderSide(
                                          color: Color(0x00FFFFFF),
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        hoverColor: Color(0x00FFFFFF),
                                        hoverBorderSide: BorderSide(
                                          color: Color(0x00FFFFFF),
                                          width: 0.0,
                                        ),
                                        hoverTextColor: Color(0xFFA7C957),
                                      ),
                                      showLoadingIndicator: false,
                                    ),
                                    FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: 'Download',
                                      options: FFButtonOptions(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0x00FFFFFF),
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
                                        borderSide: BorderSide(
                                          color: Color(0x00FFFFFF),
                                          width: 0.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        hoverColor: Color(0x000FFFFF),
                                        hoverBorderSide: BorderSide(
                                          color: Color(0x000FFFFF),
                                          width: 0.0,
                                        ),
                                        hoverTextColor: Color(0xFFA7C957),
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
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 100.0, 0.0, 0.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    50.0, 50.0, 50.0, 50.0),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.15,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.25,
                                              decoration: BoxDecoration(),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/Logo_Color.png',
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 50.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.6,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        35.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Text(
                                                              'About Kapam-Pamangan',
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
                                                                        return 17.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1728.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1919.0)) {
                                                                        return 20.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1920.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2239.0)) {
                                                                        return 20.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              2240.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2559.0)) {
                                                                        return 23.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          2560.0) {
                                                                        return 26.0;
                                                                      } else {
                                                                        return 20.0;
                                                                      }
                                                                    }(),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      10.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: SelectionArea(
                                                              child: Text(
                                                            'Welcome to Kapam-Pamangan, a mobile recipe application dedicated to celebrating and preserving the rich culture of Kapampangan cuisine. This application was carefully developed by a group of IT college students from the Institute of Business and Computing Education of Mabalacat City College as part of their Capstone project.\n\nKapam-Pamangan is the ultimate culinary companion for anyone with a passion for Kapampangan recipes, known for their unique flavors and traditional heritage. Whether you\'re an aspiring cook honing your skills or a seasoned pro seeking local inspiration, this recipe app has something special to offer.\n\nOur mission is not only to share the delights of Kapampangan cuisine but also to protect your privacy and data. We are committed to data protection and full compliance with data protection laws. Kapam-Pamangan respects your privacy, and we ensure that your data is safeguarded while you savor the traditions that make Kapampangan cuisine truly remarkable. It\'s the beginning of a flavorful culinary adventure, a journey that transports you back to the traditional tastes of Kapampangan cuisine while preserving cherished recipes that bind our community together.\n\nExplore a diverse selection of Kapampangan recipes, from hearty main dishes to savory soups and delightful pastries, drinks, and more. The app invites food enthusiasts and casual cooks alike to delve into the vibrant local food culture and rediscover the joys of Kapampangan cooking. It\'s the beginning of a flavorful culinary adventure, a journey that transports you back to the traditional tastes of Kapampangan cuisine while preserving cherished recipes that bind our community together.\n\nOur application is packed with a variety of features designed to meet all your culinary needs. You can easily search for a wide range of Kapampangan recipes, generate personalized recipes based on your available ingredients, access step-by-step cooking instructions, plan your meals, and much more. It\'s like having a personal chef by your side, guiding you through each delightful step of your cooking journey.\n\nKapam-Pamangan is not just an app; it\'s a labor of love and a tribute to Kapampangan culinary heritage. We hope this culinary companion enriches your cooking experience, inspires creativity in your kitchen, and brings the warmth of Kapampangan flavors to your table. Join us on this flavorful journey, and together, let\'s savor the traditions that make Kapampangan cuisine truly remarkable. Happy cooking!',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
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
                                                                      return 17.0;
                                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                                            1728.0) &&
                                                                        (MediaQuery.sizeOf(context).width <=
                                                                            1919.0)) {
                                                                      return 20.0;
                                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                                            1920.0) &&
                                                                        (MediaQuery.sizeOf(context).width <=
                                                                            2239.0)) {
                                                                      return 20.0;
                                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                                            2240.0) &&
                                                                        (MediaQuery.sizeOf(context).width <=
                                                                            2559.0)) {
                                                                      return 23.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width >=
                                                                        2560.0) {
                                                                      return 26.0;
                                                                    } else {
                                                                      return 20.0;
                                                                    }
                                                                  }(),
                                                                ),
                                                          )),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.00, 0.00),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        25.0,
                                                                        10.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Our Story and Team',
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
                                                                        return 17.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1728.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              1919.0)) {
                                                                        return 20.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              1920.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2239.0)) {
                                                                        return 20.0;
                                                                      } else if ((MediaQuery.sizeOf(context).width >=
                                                                              2240.0) &&
                                                                          (MediaQuery.sizeOf(context).width <=
                                                                              2559.0)) {
                                                                        return 23.0;
                                                                      } else if (MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          2560.0) {
                                                                        return 26.0;
                                                                      } else {
                                                                        return 20.0;
                                                                      }
                                                                    }(),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      10.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: SelectionArea(
                                                              child: Text(
                                                            'Our journey began with a creative group of six IT students who identified a big gap in the market for recipe apps which specializes on Kapampangan recipes, despite Pampanga being regarded by many as the culinary capital of the Philippines. Inspired by the rich culinary heritage of our region, we embarked on a mission to create an app that would not only bridge this gap but also make these cherished recipes accessible to a wider audience.\n\n\nKapam-Pamangan stands as a heartfelt tribute to the flavors, traditions, and cultural significance that have profoundly shaped our community for generations. Our passionate team embarked on this extraordinary culinary adventure, driven by an unwavering love for Kapampangan cuisine. \n\nTogether, we have breathed life into this app, drawing inspiration from renowned Kapampangan cookbooks including Atching Lillian\'s Heirloom Recipes by Lillian Mercado-Lising Borromeo and Cocina Sulipeña: Culinary Gems from Old Pampanga by Gene Gonzalez. These cherished culinary books, brimming with time-honored wisdom, have guided us in our quest to capture the essence of Kapampangan cooking and share it with the world.\n\nWith the invaluable support and guidance of the experienced professors, dedicated instructors, and our cherished technical advisors from the Institute of Business and Computing Education and Institute of Hospitality and Tourism Management, and through countless hours of meticulous research, development, and attention to detail, we\'ve crafted an app that aims to not only preserve these treasured recipes but also celebrates the culture that surrounds them. Kapam-Pamangan is a labor of our unwavering commitment to preserving and promoting the rich tapestry of Kapampangan cuisine.\n\nAs we invite you to embark on this gastronomic journey with us, we hope that Kapam-Pamangan enriches your culinary experiences, inspires creativity in your kitchen, and becomes a cherished companion in your exploration of Kapampangan flavors. Together, let\'s continue to savor the traditions that make Kapampangan cuisine truly extraordinary.\n',
                                                            textAlign: TextAlign
                                                                .justify,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
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
                                                                      return 17.0;
                                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                                            1728.0) &&
                                                                        (MediaQuery.sizeOf(context).width <=
                                                                            1919.0)) {
                                                                      return 20.0;
                                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                                            1920.0) &&
                                                                        (MediaQuery.sizeOf(context).width <=
                                                                            2239.0)) {
                                                                      return 20.0;
                                                                    } else if ((MediaQuery.sizeOf(context).width >=
                                                                            2240.0) &&
                                                                        (MediaQuery.sizeOf(context).width <=
                                                                            2559.0)) {
                                                                      return 23.0;
                                                                    } else if (MediaQuery.sizeOf(context)
                                                                            .width >=
                                                                        2560.0) {
                                                                      return 26.0;
                                                                    } else {
                                                                      return 20.0;
                                                                    }
                                                                  }(),
                                                                ),
                                                          )),
                                                        ),
                                                      ].addToEnd(SizedBox(
                                                          height: 50.0)),
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 26.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 20.0, 20.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.28,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.04,
                                            constraints: BoxConstraints(
                                              maxWidth: 200.0,
                                              maxHeight: 60.0,
                                            ),
                                            decoration: BoxDecoration(),
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
                                            AlignmentDirectional(1.00, 0.00),
                                        child: Builder(
                                          builder: (context) => Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  followerAnchor:
                                                      AlignmentDirectional(
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
                                                        child: MenuBarWidget(),
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
                                                      AlignmentDirectional(
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 26.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 20.0, 20.0, 20.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.31,
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.05,
                                            constraints: BoxConstraints(
                                              maxWidth: 200.0,
                                              maxHeight: 60.0,
                                            ),
                                            decoration: BoxDecoration(),
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
                                            AlignmentDirectional(1.00, 0.00),
                                        child: Builder(
                                          builder: (context) => Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  followerAnchor:
                                                      AlignmentDirectional(
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
                                                        child: MenuBarWidget(),
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
                                                      AlignmentDirectional(
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 50.0, 0.0, 0.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.6,
                                              constraints: BoxConstraints(
                                                maxWidth: 300.0,
                                                maxHeight: 300.0,
                                              ),
                                              decoration: BoxDecoration(),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/Logo_Color.png',
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 10.0, 10.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.00, 0.00),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    35.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'About Kapam-Pamangan',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Welcome to Kapam-Pamangan, a mobile recipe application dedicated to celebrating and preserving the rich culture of Kapampangan cuisine. This application was carefully developed by a group of IT college students from the Institute of Business and Computing Education of Mabalacat City College as part of their Capstone project.\n\nKapam-Pamangan is the ultimate culinary companion for anyone with a passion for Kapampangan recipes, known for their unique flavors and traditional heritage. Whether you\'re an aspiring cook honing your skills or a seasoned pro seeking local inspiration, this recipe app has something special to offer.\n\nExplore a diverse selection of Kapampangan recipes, from hearty main dishes to savory soups and delightful pastries, drinks, and more. The app invites food enthusiasts and casual cooks alike to delve into the vibrant local food culture and rediscover the joys of Kapampangan cooking. It\'s the beginning of a flavorful culinary adventure, a journey that transports you back to the traditional tastes of Kapampangan cuisine while preserving cherished recipes that bind our community together.\n\nOur application is packed with a variety of features designed to meet all your culinary needs. You can easily search for a wide range of Kapampangan recipes, generate personalized recipes based on your available ingredients, access step-by-step cooking instructions, plan your meals, and much more. It\'s like having a personal chef by your side, guiding you through each delightful step of your cooking journey.\n\nKapam-Pamangan is not just an app; it\'s a labor of love and a tribute to Kapampangan culinary heritage. We hope this culinary companion enriches your cooking experience, inspires creativity in your kitchen, and brings the warmth of Kapampangan flavors to your table. Join us on this flavorful journey, and together, let\'s savor the traditions that make Kapampangan cuisine truly remarkable. Happy cooking!',
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
                                                          AlignmentDirectional(
                                                              -1.00, 0.00),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    25.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Our Story and Team',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Our journey began with a creative group of six IT students who identified a big gap in the market for recipe apps which specializes on Kapampangan recipes, despite Pampanga being regarded by many as the culinary capital of the Philippines. Inspired by the rich culinary heritage of our region, we embarked on a mission to create an app that would not only bridge this gap but also make these cherished recipes accessible to a wider audience.\n\nKapam-Pamangan stands as a heartfelt tribute to the flavors, traditions, and cultural significance that have profoundly shaped our community for generations. Our passionate team embarked on this extraordinary culinary adventure, driven by an unwavering love for Kapampangan cuisine. \n\nTogether, we have breathed life into this app, drawing inspiration from renowned Kapampangan cookbooks including Atching Lillian\'s Heirloom Recipes by Lillian Mercado-Lising Borromeo and Cocina Sulipeña: Culinary Gems from Old Pampanga by Gene Gonzalez. These cherished culinary books, brimming with time-honored wisdom, have guided us in our quest to capture the essence of Kapampangan cooking and share it with the world.\n\nWith the invaluable support and guidance of the experienced professors, dedicated instructors, and our cherished technical advisors from the Institute of Business and Computing Education and Institute of Hospitality and Tourism Management, and through countless hours of meticulous research, development, and attention to detail, we\'ve crafted an app that aims to not only preserve these treasured recipes but also celebrates the culture that surrounds them. Kapam-Pamangan is a labor of our unwavering commitment to preserving and promoting the rich tapestry of Kapampangan cuisine.\n\nAs we invite you to embark on this gastronomic journey with us, we hope that Kapam-Pamangan enriches your culinary experiences, inspires creativity in your kitchen, and becomes a cherished companion in your exploration of Kapampangan flavors. Together, let\'s continue to savor the traditions that make Kapampangan cuisine truly extraordinary.',
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
                                                          AlignmentDirectional(
                                                              -1.00, 0.00),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    25.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Copyright Disclaimer and Fair Use Policy',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Kapam-Pamangan is a recipe application designed for educational and informational purposes only. While we have developed and own the rights to various assets within the app, including ingredient icons, animations, and other elements, we do not claim ownership of any recipes, images, or videos featured in the application unless otherwise stated. All recipes included in the app are provided by various sources, and the copyright for these recipes and their accompanying content is retained by their respective creators and owners.\n\nRepublic Act No. 8293, also known as the Intellectual Property Code of the Philippines, governs copyright law in the Philippines. Specifically, Section 185 of RA 8293 addresses fair use, which includes provisions allowing for certain uses of copyrighted material. We respect the intellectual property rights of recipe creators and contributors and have made efforts to ensure that any copyrighted material used within the app is done so in compliance with the fair use provisions of Section 185 of RA 8293.\n\nIf you are the owner of a recipe or content featured in our application and believe that it has been used improperly or without proper attribution, please contact us immediately. We will address any concerns and take appropriate action in accordance with the law.\n\nThe information provided in Kapam-Pamangan is for personal use only and should not be used for commercial purposes without obtaining the necessary permissions from the copyright holders. Users of the application are responsible for ensuring that their use of recipes and content complies with all applicable copyright laws.\n\nKapam-Pamangan is not responsible for any disputes or legal issues that may arise from the use of the content within the application. Users are advised to use the recipes and content in accordance with the law and seek legal counsel if they have any concerns regarding copyright issues. If you have any questions about our use of copyrighted content in this app, please do not hesitate to contact us at kapam-pamangan@gmail.com.',
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
                                                          AlignmentDirectional(
                                                              -1.00, 0.00),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    25.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Future Plans',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Our story is just beginning, and we have exciting plans for the future. We are committed to expanding Kapam-Pamangan to iOS, ensuring that more people can savor the delights of Kapampangan cuisine. Additionally, our goal is to continuously enhance the app with innovative features that enhance the cooking and dining experience. We aspire to create a thriving community of food enthusiasts who share our passion for Kapampangan flavors.\n\nBeyond this, we\'re dedicated to growing our database with even more original Kapampangan recipes, ensuring that the app remains a rich resource for those who love to cook and appreciate great food. Join us on this journey as we work tirelessly to preserve and celebrate Kapampangan culinary heritage, one delicious recipe at a time.\n',
                                                        textAlign:
                                                            TextAlign.justify,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                  ].addToEnd(
                                                      SizedBox(height: 50.0)),
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
