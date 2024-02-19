import '/flutter_flow/flutter_flow_util.dart';
import 'pesquisa_produto_widget.dart' show PesquisaProdutoWidget;
import 'package:flutter/material.dart';

class PesquisaProdutoModel extends FlutterFlowModel<PesquisaProdutoWidget> {
  ///  Local state fields for this component.

  bool pesquisar = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
