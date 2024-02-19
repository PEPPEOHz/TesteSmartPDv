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

Future criarRegistro(
  String referencia,
  String codTransacao,
  String bandeira,
  String cnpjCliente,
  String nomeCliente,
  String cnpjCredenciador,
  double valor,
  String rede,
  String nsu,
  String emailCliente,
  String dataHoraTransacao,
) async {
  try {
    final firestoreDB = FirebaseFirestore.instance;

    firestoreDB
        .collection("VendasPagas")
        .doc(referencia) // Custom firestore document reference ID e.g. "apple"
        .set({
      "codTransacao": codTransacao,
      "bandeira": bandeira,
      "cnpjCliente": cnpjCliente,
      "nomeCliente": nomeCliente,
      "cnpjCredenciador": cnpjCredenciador,
      "valor": valor,
      "rede": rede,
      "nsu": nsu,
      "emailCliente": emailCliente,
      "dataHoraTransacao": dataHoraTransacao,
    });

    return "Success";
  } catch (e) {
    return e.toString();
  }

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
}
