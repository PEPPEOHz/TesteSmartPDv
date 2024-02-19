import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cobranca_pag_copy_widget.dart' show CobrancaPagCopyWidget;
import 'package:flutter/material.dart';

class CobrancaPagCopyModel extends FlutterFlowModel<CobrancaPagCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Stores action output result for [Custom Action - multiplicarNumero] action in Container widget.
  int? outValorFinal;
  // Stores action output result for [Custom Action - fazerPagamento] action in Container widget.
  DadosVendaStruct? outDados;
  // Stores action output result for [Backend Call - API (webhookMercurioNovo)] action in Container widget.
  ApiCallResponse? apiResult939;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
