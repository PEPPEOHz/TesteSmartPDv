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

Future deleteAllDocuments() async {
  // Acesse a instância do Firestore
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Substitua 'sua_colecao' pelo nome da sua coleção
  String collectionName = 'ProdutosCupom';

  // Consulte todos os documentos na coleção
  QuerySnapshot querySnapshot =
      await firestore.collection(collectionName).get();

  // Percorra os documentos e exclua-os
  for (QueryDocumentSnapshot documentSnapshot in querySnapshot.docs) {
    await firestore
        .collection(collectionName)
        .doc(documentSnapshot.id)
        .delete();
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
