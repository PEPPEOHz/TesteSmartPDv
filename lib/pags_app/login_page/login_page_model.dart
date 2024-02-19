import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Emailfield widget.
  FocusNode? emailfieldFocusNode;
  TextEditingController? emailfieldController;
  String? Function(BuildContext, String?)? emailfieldControllerValidator;
  // State field(s) for Senhafield widget.
  FocusNode? senhafieldFocusNode;
  TextEditingController? senhafieldController;
  late bool senhafieldVisibility;
  String? Function(BuildContext, String?)? senhafieldControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    senhafieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    emailfieldFocusNode?.dispose();
    emailfieldController?.dispose();

    senhafieldFocusNode?.dispose();
    senhafieldController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
