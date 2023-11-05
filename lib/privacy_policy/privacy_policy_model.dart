import '/components/footer_phone_widget.dart';
import '/components/footer_tablet_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'privacy_policy_widget.dart' show PrivacyPolicyWidget;
import 'package:flutter/material.dart';

class PrivacyPolicyModel extends FlutterFlowModel<PrivacyPolicyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for FooterTablet component.
  late FooterTabletModel footerTabletModel;
  // Model for FooterPhone component.
  late FooterPhoneModel footerPhoneModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    footerTabletModel = createModel(context, () => FooterTabletModel());
    footerPhoneModel = createModel(context, () => FooterPhoneModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    footerTabletModel.dispose();
    footerPhoneModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
