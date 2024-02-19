import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VendasPagasRecord extends FirestoreRecord {
  VendasPagasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "codTransacao" field.
  String? _codTransacao;
  String get codTransacao => _codTransacao ?? '';
  bool hasCodTransacao() => _codTransacao != null;

  // "bandeira" field.
  String? _bandeira;
  String get bandeira => _bandeira ?? '';
  bool hasBandeira() => _bandeira != null;

  // "cnpjCredenciador" field.
  String? _cnpjCredenciador;
  String get cnpjCredenciador => _cnpjCredenciador ?? '';
  bool hasCnpjCredenciador() => _cnpjCredenciador != null;

  // "nomeCliente" field.
  String? _nomeCliente;
  String get nomeCliente => _nomeCliente ?? '';
  bool hasNomeCliente() => _nomeCliente != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "cnpjCliente" field.
  String? _cnpjCliente;
  String get cnpjCliente => _cnpjCliente ?? '';
  bool hasCnpjCliente() => _cnpjCliente != null;

  // "rede" field.
  String? _rede;
  String get rede => _rede ?? '';
  bool hasRede() => _rede != null;

  // "nsu" field.
  String? _nsu;
  String get nsu => _nsu ?? '';
  bool hasNsu() => _nsu != null;

  // "dataHoraTransacao" field.
  String? _dataHoraTransacao;
  String get dataHoraTransacao => _dataHoraTransacao ?? '';
  bool hasDataHoraTransacao() => _dataHoraTransacao != null;

  // "emailCliente" field.
  String? _emailCliente;
  String get emailCliente => _emailCliente ?? '';
  bool hasEmailCliente() => _emailCliente != null;

  void _initializeFields() {
    _codTransacao = snapshotData['codTransacao'] as String?;
    _bandeira = snapshotData['bandeira'] as String?;
    _cnpjCredenciador = snapshotData['cnpjCredenciador'] as String?;
    _nomeCliente = snapshotData['nomeCliente'] as String?;
    _valor = castToType<double>(snapshotData['valor']);
    _cnpjCliente = snapshotData['cnpjCliente'] as String?;
    _rede = snapshotData['rede'] as String?;
    _nsu = snapshotData['nsu'] as String?;
    _dataHoraTransacao = snapshotData['dataHoraTransacao'] as String?;
    _emailCliente = snapshotData['emailCliente'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('VendasPagas');

  static Stream<VendasPagasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VendasPagasRecord.fromSnapshot(s));

  static Future<VendasPagasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VendasPagasRecord.fromSnapshot(s));

  static VendasPagasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      VendasPagasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VendasPagasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VendasPagasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VendasPagasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VendasPagasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVendasPagasRecordData({
  String? codTransacao,
  String? bandeira,
  String? cnpjCredenciador,
  String? nomeCliente,
  double? valor,
  String? cnpjCliente,
  String? rede,
  String? nsu,
  String? dataHoraTransacao,
  String? emailCliente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'codTransacao': codTransacao,
      'bandeira': bandeira,
      'cnpjCredenciador': cnpjCredenciador,
      'nomeCliente': nomeCliente,
      'valor': valor,
      'cnpjCliente': cnpjCliente,
      'rede': rede,
      'nsu': nsu,
      'dataHoraTransacao': dataHoraTransacao,
      'emailCliente': emailCliente,
    }.withoutNulls,
  );

  return firestoreData;
}

class VendasPagasRecordDocumentEquality implements Equality<VendasPagasRecord> {
  const VendasPagasRecordDocumentEquality();

  @override
  bool equals(VendasPagasRecord? e1, VendasPagasRecord? e2) {
    return e1?.codTransacao == e2?.codTransacao &&
        e1?.bandeira == e2?.bandeira &&
        e1?.cnpjCredenciador == e2?.cnpjCredenciador &&
        e1?.nomeCliente == e2?.nomeCliente &&
        e1?.valor == e2?.valor &&
        e1?.cnpjCliente == e2?.cnpjCliente &&
        e1?.rede == e2?.rede &&
        e1?.nsu == e2?.nsu &&
        e1?.dataHoraTransacao == e2?.dataHoraTransacao &&
        e1?.emailCliente == e2?.emailCliente;
  }

  @override
  int hash(VendasPagasRecord? e) => const ListEquality().hash([
        e?.codTransacao,
        e?.bandeira,
        e?.cnpjCredenciador,
        e?.nomeCliente,
        e?.valor,
        e?.cnpjCliente,
        e?.rede,
        e?.nsu,
        e?.dataHoraTransacao,
        e?.emailCliente
      ]);

  @override
  bool isValidKey(Object? o) => o is VendasPagasRecord;
}
