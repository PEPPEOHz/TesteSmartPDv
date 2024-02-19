import 'package:flutter/foundation.dart';

import '/backend/sqlite/init.dart';
import 'queries/read.dart';
import 'queries/update.dart';

import 'package:sqflite/sqflite.dart';
export 'queries/read.dart';
export 'queries/update.dart';

class SQLiteManager {
  SQLiteManager._();

  static SQLiteManager? _instance;
  static SQLiteManager get instance => _instance ??= SQLiteManager._();

  static late Database _database;
  Database get database => _database;

  static Future initialize() async {
    if (kIsWeb) {
      return;
    }
    _database = await initializeDatabaseFromDbFile(
      'base',
      'database3101.db',
    );
  }

  /// START READ QUERY CALLS

  Future<List<ProdutoRow>> produto() => performProduto(
        _database,
      );

  Future<List<SelectSomaRow>> selectSoma({
    int? venIdpk,
  }) =>
      performSelectSoma(
        _database,
        venIdpk: venIdpk,
      );

  Future<List<SelectQuantidadeRow>> selectQuantidade({
    String? venIdpk,
  }) =>
      performSelectQuantidade(
        _database,
        venIdpk: venIdpk,
      );

  Future<List<QntdeItemRow>> qntdeItem({
    int? prodIdpk,
    int? vendaIdpk,
  }) =>
      performQntdeItem(
        _database,
        prodIdpk: prodIdpk,
        vendaIdpk: vendaIdpk,
      );

  Future<List<ProdutoFotoRow>> produtoFoto({
    int? prodIdpk,
  }) =>
      performProdutoFoto(
        _database,
        prodIdpk: prodIdpk,
      );

  Future<List<ProdutosFavoritosRow>> produtosFavoritos() =>
      performProdutosFavoritos(
        _database,
      );

  Future<List<PesquisaProdutoRow>> pesquisaProduto({
    String? pesquisa,
  }) =>
      performPesquisaProduto(
        _database,
        pesquisa: pesquisa,
      );

  Future<List<SelectVendaIdpkRow>> selectVendaIdpk() => performSelectVendaIdpk(
        _database,
      );

  /// END READ QUERY CALLS

  /// START UPDATE QUERY CALLS

  Future updateProduto({
    String? prodnome,
    int? idpk,
    double? precoVenda,
    double? precoCusto,
    double? custoMedio,
    int? empIdpk,
  }) =>
      performUpdateProduto(
        _database,
        prodnome: prodnome,
        idpk: idpk,
        precoVenda: precoVenda,
        precoCusto: precoCusto,
        custoMedio: custoMedio,
        empIdpk: empIdpk,
      );

  Future insertVendaItens({
    int? veiVendaIdpk,
    double? veiQuantidade,
    double? veiCustoMedio,
    double? veiValorCusto,
    double? veiValorUnitario,
    double? veiValorTotal,
    int? veiProdutoIdpk,
  }) =>
      performInsertVendaItens(
        _database,
        veiVendaIdpk: veiVendaIdpk,
        veiQuantidade: veiQuantidade,
        veiCustoMedio: veiCustoMedio,
        veiValorCusto: veiValorCusto,
        veiValorUnitario: veiValorUnitario,
        veiValorTotal: veiValorTotal,
        veiProdutoIdpk: veiProdutoIdpk,
      );

  Future insertVenda({
    int? empIdpk,
    int? venNumero,
    String? venTipo,
    String? venStatus,
    DateTime? venData,
    double? venValorTotal,
  }) =>
      performInsertVenda(
        _database,
        empIdpk: empIdpk,
        venNumero: venNumero,
        venTipo: venTipo,
        venStatus: venStatus,
        venData: venData,
        venValorTotal: venValorTotal,
      );

  Future deleteVendaItens({
    int? venIdpk,
  }) =>
      performDeleteVendaItens(
        _database,
        venIdpk: venIdpk,
      );

  Future deleteItem({
    int? prodIdpk,
    int? vendaIdpk,
  }) =>
      performDeleteItem(
        _database,
        prodIdpk: prodIdpk,
        vendaIdpk: vendaIdpk,
      );

  Future updateVenda({
    String? venTipo,
    String? venStatus,
    double? venValorTotal,
    int? venIdpk,
  }) =>
      performUpdateVenda(
        _database,
        venTipo: venTipo,
        venStatus: venStatus,
        venValorTotal: venValorTotal,
        venIdpk: venIdpk,
      );

  Future insertVendaFormPgto({
    int? vfpIdpk,
    int? vfpClassificacao,
    String? vfpDescicao,
    int? vfpParcelas,
  }) =>
      performInsertVendaFormPgto(
        _database,
        vfpIdpk: vfpIdpk,
        vfpClassificacao: vfpClassificacao,
        vfpDescicao: vfpDescicao,
        vfpParcelas: vfpParcelas,
      );

  /// END UPDATE QUERY CALLS
}
