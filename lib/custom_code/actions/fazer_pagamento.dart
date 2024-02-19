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

import 'index.dart'; // Imports other custom actions

import 'package:smart_pag_contract/smart_pag_handler.dart';
import 'package:smart_pag_contract/interfaces/pagamento.dart';

final bool exibirDadosRecebidosDaApi = false;

Future<DadosVendaStruct?> fazerPagamento(
  BuildContext context,
  int formaDePagamento,
  int parcelas,
  int valor,
) async {
  try {
    var result = await SmartPagHandler.fazerPagamento(
      context,
      formaDePagamento.toFormaDePagamento(),
      parcelas,
      valor,
    );
    if (result.erro != null) {
      return null;
    }

    var codAutorizacao = result.transactionCode;
    var nsu = result.nsu;
    var bandeira = result.cardBrand;
    var data = result.date.toString();
    var hour = result.time.toString();
    var dateAndHour = '$data $hour';
    //'codigoDaTransacao'
    // 'identificadorDaTransacao'
    if (exibirDadosRecebidosDaApi) {
      _exibirDadosRecebidosDaApi(
        context,
        nsu,
        bandeira,
        dateAndHour,
        codAutorizacao,
        valor / 100,
        parcelas,
      );
    }
    return DadosVendaStruct(
      codAutorizacao: codAutorizacao,
      nsu: nsu,
      bandeira: bandeira,
      dataHoraTransacao: dateAndHour,
    );
  } catch (_) {
    return null;
  }
}

Future<void> _exibirDadosRecebidosDaApi(
  BuildContext context,
  String nsu,
  String bandeira,
  String dateAndHour,
  String codAutorizacao,
  double valor,
  int parcelas,
) async {
  showDialog(
    context: context,
    builder: (context) => Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CloseButton(),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Informações da Transação:',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text('Valor: ${valor.toStringAsFixed(2)}'),
            const SizedBox(
              height: 8,
            ),
            Text('Parcelas: $parcelas'),
            const SizedBox(
              height: 32,
            ),
            const SizedBox(
              height: 32,
            ),
            Text('Codigo da autorização: $codAutorizacao'),
            const SizedBox(
              height: 16,
            ),
            Text('Bandeira: $bandeira'),
            const SizedBox(
              height: 16,
            ),
            Text('NSU: $nsu'),
            const SizedBox(
              height: 16,
            ),
            Text('Data e Hora: $dateAndHour'),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    ),
  );
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
