import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN PRODUTO
Future<List<ProdutoRow>> performProduto(
  Database database,
) {
  const query = '''
select proDescricao, proIdpk, proPrecoVenda, proPrecoCusto, proCustoMedio from produto
''';
  return _readQuery(database, query, (d) => ProdutoRow(d));
}

class ProdutoRow extends SqliteRow {
  ProdutoRow(super.data);

  String? get proDescricao => data['proDescricao'] as String?;
  int? get proIdpk => data['proIdpk'] as int?;
  double? get proPrecoVenda => data['proPrecoVenda'] as double?;
  double? get proCustoMedio => data['proCustoMedio'] as double?;
  double? get proPrecoCusto => data['proPrecoCusto'] as double?;
}

/// END PRODUTO

/// BEGIN SELECT SOMA
Future<List<SelectSomaRow>> performSelectSoma(
  Database database, {
  int? venIdpk,
}) {
  final query = '''
SELECT SUM(vei_valor_total)  as valorTotal from venda_itens where vei_venda_idpk = $venIdpk
''';
  return _readQuery(database, query, (d) => SelectSomaRow(d));
}

class SelectSomaRow extends SqliteRow {
  SelectSomaRow(super.data);

  double get valorTotal => data['valorTotal'] as double;
}

/// END SELECT SOMA

/// BEGIN SELECT QUANTIDADE
Future<List<SelectQuantidadeRow>> performSelectQuantidade(
  Database database, {
  String? venIdpk,
}) {
  final query = '''
SELECT COALESCE(SUM(vei_quantidade), 0) as valorTotal from venda_itens where vei_venda_idpk = $venIdpk
''';
  return _readQuery(database, query, (d) => SelectQuantidadeRow(d));
}

class SelectQuantidadeRow extends SqliteRow {
  SelectQuantidadeRow(super.data);

  double? get valorTotal => data['valorTotal'] as double?;
}

/// END SELECT QUANTIDADE

/// BEGIN QNTDE ITEM
Future<List<QntdeItemRow>> performQntdeItem(
  Database database, {
  int? prodIdpk,
  int? vendaIdpk,
}) {
  final query = '''
SELECT COALESCE(SUM(vei_quantidade), 0) as valorTotal
FROM venda_itens
WHERE vei_produto_idpk = $prodIdpk AND vei_venda_idpk = $vendaIdpk

''';
  return _readQuery(database, query, (d) => QntdeItemRow(d));
}

class QntdeItemRow extends SqliteRow {
  QntdeItemRow(super.data);

  double? get valorTotal => data['valorTotal'] as double?;
}

/// END QNTDE ITEM

/// BEGIN PRODUTO FOTO
Future<List<ProdutoFotoRow>> performProdutoFoto(
  Database database, {
  int? prodIdpk,
}) {
  final query = '''
select prf_foto_path as fotopath
from produto_foto where prf_produto_idpk = $prodIdpk
''';
  return _readQuery(database, query, (d) => ProdutoFotoRow(d));
}

class ProdutoFotoRow extends SqliteRow {
  ProdutoFotoRow(super.data);

  String? get fotopath => data['fotopath'] as String?;
}

/// END PRODUTO FOTO

/// BEGIN PRODUTOSFAVORITOS
Future<List<ProdutosFavoritosRow>> performProdutosFavoritos(
  Database database,
) {
  const query = '''
select proDescricao, proIdpk, proPrecoVenda, proPrecoCusto, proCustoMedio from produto where pro_favorito = 0
''';
  return _readQuery(database, query, (d) => ProdutosFavoritosRow(d));
}

class ProdutosFavoritosRow extends SqliteRow {
  ProdutosFavoritosRow(super.data);

  String? get proDescricao => data['proDescricao'] as String?;
  int? get proIdpk => data['proIdpk'] as int?;
  double? get proPrecoVenda => data['proPrecoVenda'] as double?;
  double? get proCustoMedio => data['proCustoMedio'] as double?;
  double? get proPrecoCusto => data['proPrecoCusto'] as double?;
}

/// END PRODUTOSFAVORITOS

/// BEGIN PESQUISA PRODUTO
Future<List<PesquisaProdutoRow>> performPesquisaProduto(
  Database database, {
  String? pesquisa,
}) {
  final query = '''
select proDescricao, proIdpk, proPrecoVenda, proPrecoCusto, proCustoMedio from produto
 where proDescricao like '%$pesquisa%'
''';
  return _readQuery(database, query, (d) => PesquisaProdutoRow(d));
}

class PesquisaProdutoRow extends SqliteRow {
  PesquisaProdutoRow(super.data);

  String? get proDescricao => data['proDescricao'] as String?;
  int? get proIdpk => data['proIdpk'] as int?;
  double? get proPrecoVenda => data['proPrecoVenda'] as double?;
  double? get proPrecoCusto => data['proPrecoCusto'] as double?;
  double? get proCustoMedio => data['proCustoMedio'] as double?;
}

/// END PESQUISA PRODUTO

/// BEGIN SELECT VENDAIDPK
Future<List<SelectVendaIdpkRow>> performSelectVendaIdpk(
  Database database,
) {
  const query = '''
select ven_idpk as venIdpk from venda
''';
  return _readQuery(database, query, (d) => SelectVendaIdpkRow(d));
}

class SelectVendaIdpkRow extends SqliteRow {
  SelectVendaIdpkRow(super.data);

  List<int>? get venIdpk => data['venIdpk'] as List<int>?;
}

/// END SELECT VENDAIDPK
