import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'pag_pdv_widget.dart' show PagPdvWidget;
import 'package:flutter/material.dart';

class PagPdvModel extends FlutterFlowModel<PagPdvWidget> {
  ///  Local state fields for this page.

  bool favoritos = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - SQLite (Select VendaIdpk)] action in PagPdv widget.
  List<SelectVendaIdpkRow>? outAction1;

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
