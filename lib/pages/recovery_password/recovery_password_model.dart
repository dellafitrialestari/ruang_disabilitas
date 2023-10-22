import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'recovery_password_widget.dart' show RecoveryPasswordWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RecoveryPasswordModel extends FlutterFlowModel<RecoveryPasswordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for emailAddressRecovery widget.
  FocusNode? emailAddressRecoveryFocusNode;
  TextEditingController? emailAddressRecoveryController;
  String? Function(BuildContext, String?)?
      emailAddressRecoveryControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    emailAddressRecoveryFocusNode?.dispose();
    emailAddressRecoveryController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
