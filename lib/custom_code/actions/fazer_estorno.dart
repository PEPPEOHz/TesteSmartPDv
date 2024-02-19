// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:smart_pag_contract/smart_pag_handler.dart';

Future<void> fazerEstorno(
    String? codigoDaTransacao, String? identificadorDaTransacao) async {
  return SmartPagHandler.realizarEstorno(
      codigoDaTransacao: codigoDaTransacao,
      identificadorDaTransacao: identificadorDaTransacao);
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
