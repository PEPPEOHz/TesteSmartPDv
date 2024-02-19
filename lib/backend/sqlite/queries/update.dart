import 'package:sqflite/sqflite.dart';

/// BEGIN UPDATEPRODUTO
Future performUpdateProduto(
  Database database, {
  String? prodnome,
  int? idpk,
  double? precoVenda,
  double? precoCusto,
  double? custoMedio,
  int? empIdpk,
}) {
  final query = '''
insert into produto (proDescricao, proIdpk, proPrecoVenda, proPrecoCusto, proCustoMedio, pro_empresa_idpk) 
values ($prodnome, $idpk, $precoVenda, $precoCusto, $custoMedio, $empIdpk)
''';
  return database.rawQuery(query);
}

/// END UPDATEPRODUTO

/// BEGIN INSERT VENDA ITENS
Future performInsertVendaItens(
  Database database, {
  int? veiVendaIdpk,
  double? veiQuantidade,
  double? veiCustoMedio,
  double? veiValorCusto,
  double? veiValorUnitario,
  double? veiValorTotal,
  int? veiProdutoIdpk,
}) {
  final query = '''
insert into venda_itens (vei_venda_idpk, vei_quantidade, vei_custo_medio, vei_valor_custo, vei_valor_unitario, vei_valor_total, vei_produto_idpk)
 values ($veiVendaIdpk, $veiQuantidade, $veiCustoMedio, $veiValorCusto, $veiValorUnitario, $veiValorTotal, $veiProdutoIdpk)
''';
  return database.rawQuery(query);
}

/// END INSERT VENDA ITENS

/// BEGIN INSERT VENDA
Future performInsertVenda(
  Database database, {
  int? empIdpk,
  int? venNumero,
  String? venTipo,
  String? venStatus,
  DateTime? venData,
  double? venValorTotal,
}) {
  final query = '''
insert into venda (ven_empresa_idpk, ven_numero, ven_tipo, ven_status, ven_data, ven_valor_total)
 values ($empIdpk, $venNumero, $venTipo, $venStatus, $venData, $venValorTotal)
''';
  return database.rawQuery(query);
}

/// END INSERT VENDA

/// BEGIN DELETE VENDA ITENS
Future performDeleteVendaItens(
  Database database, {
  int? venIdpk,
}) {
  final query = '''
delete from venda_itens where vei_venda_idpk = $venIdpk
''';
  return database.rawQuery(query);
}

/// END DELETE VENDA ITENS

/// BEGIN DELETE ITEM
Future performDeleteItem(
  Database database, {
  int? prodIdpk,
  int? vendaIdpk,
}) {
  final query = '''
delete from venda_itens WHERE vei_produto_idpk = $prodIdpk AND vei_venda_idpk = $vendaIdpk;
''';
  return database.rawQuery(query);
}

/// END DELETE ITEM

/// BEGIN UPDATE VENDA
Future performUpdateVenda(
  Database database, {
  String? venTipo,
  String? venStatus,
  double? venValorTotal,
  int? venIdpk,
}) {
  final query = '''
update venda set
 ven_tipo = '$venTipo', 
 ven_status = '$venStatus', 
 ven_valor_total = $venValorTotal 
 where ven_idpk = $venIdpk
''';
  return database.rawQuery(query);
}

/// END UPDATE VENDA

/// BEGIN INSERT VENDA FORMPGTO
Future performInsertVendaFormPgto(
  Database database, {
  int? vfpIdpk,
  int? vfpClassificacao,
  String? vfpDescicao,
  int? vfpParcelas,
}) {
  final query = '''
insert into venda_forma_pagamento (vfp_venda_idpk, vfp_classificacao, vfp_forma_pagamento_descricao, vfp_fixar_parcelas)
values ($vfpIdpk, $vfpClassificacao, '$vfpDescicao', $vfpParcelas)
''';
  return database.rawQuery(query);
}

/// END INSERT VENDA FORMPGTO
