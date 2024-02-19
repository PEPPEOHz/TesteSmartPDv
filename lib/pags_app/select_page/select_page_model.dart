import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_page_widget.dart' show SelectPageWidget;
import 'package:flutter/material.dart';

class SelectPageModel extends FlutterFlowModel<SelectPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (ApiLogin)] action in SelectPage widget.
  ApiCallResponse? apiResultpyz;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
