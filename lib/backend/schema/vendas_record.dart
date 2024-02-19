import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VendasRecord extends FirestoreRecord {
  VendasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "parcelas" field.
  int? _parcelas;
  int get parcelas => _parcelas ?? 0;
  bool hasParcelas() => _parcelas != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "webhook" field.
  String? _webhook;
  String get webhook => _webhook ?? '';
  bool hasWebhook() => _webhook != null;

  // "webhookToken" field.
  String? _webhookToken;
  String get webhookToken => _webhookToken ?? '';
  bool hasWebhookToken() => _webhookToken != null;

  // "clienteNome" field.
  String? _clienteNome;
  String get clienteNome => _clienteNome ?? '';
  bool hasClienteNome() => _clienteNome != null;

  // "clienteDocumento" field.
  String? _clienteDocumento;
  String get clienteDocumento => _clienteDocumento ?? '';
  bool hasClienteDocumento() => _clienteDocumento != null;

  // "formaPgto" field.
  int? _formaPgto;
  int get formaPgto => _formaPgto ?? 0;
  bool hasFormaPgto() => _formaPgto != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "usuarioEmail" field.
  String? _usuarioEmail;
  String get usuarioEmail => _usuarioEmail ?? '';
  bool hasUsuarioEmail() => _usuarioEmail != null;

  void _initializeFields() {
    _parcelas = castToType<int>(snapshotData['parcelas']);
    _valor = castToType<double>(snapshotData['valor']);
    _webhook = snapshotData['webhook'] as String?;
    _webhookToken = snapshotData['webhookToken'] as String?;
    _clienteNome = snapshotData['clienteNome'] as String?;
    _clienteDocumento = snapshotData['clienteDocumento'] as String?;
    _formaPgto = castToType<int>(snapshotData['formaPgto']);
    _descricao = snapshotData['descricao'] as String?;
    _usuarioEmail = snapshotData['usuarioEmail'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Vendas');

  static Stream<VendasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VendasRecord.fromSnapshot(s));

  static Future<VendasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VendasRecord.fromSnapshot(s));

  static VendasRecord fromSnapshot(DocumentSnapshot snapshot) => VendasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VendasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VendasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VendasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VendasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVendasRecordData({
  int? parcelas,
  double? valor,
  String? webhook,
  String? webhookToken,
  String? clienteNome,
  String? clienteDocumento,
  int? formaPgto,
  String? descricao,
  String? usuarioEmail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'parcelas': parcelas,
      'valor': valor,
      'webhook': webhook,
      'webhookToken': webhookToken,
      'clienteNome': clienteNome,
      'clienteDocumento': clienteDocumento,
      'formaPgto': formaPgto,
      'descricao': descricao,
      'usuarioEmail': usuarioEmail,
    }.withoutNulls,
  );

  return firestoreData;
}

class VendasRecordDocumentEquality implements Equality<VendasRecord> {
  const VendasRecordDocumentEquality();

  @override
  bool equals(VendasRecord? e1, VendasRecord? e2) {
    return e1?.parcelas == e2?.parcelas &&
        e1?.valor == e2?.valor &&
        e1?.webhook == e2?.webhook &&
        e1?.webhookToken == e2?.webhookToken &&
        e1?.clienteNome == e2?.clienteNome &&
        e1?.clienteDocumento == e2?.clienteDocumento &&
        e1?.formaPgto == e2?.formaPgto &&
        e1?.descricao == e2?.descricao &&
        e1?.usuarioEmail == e2?.usuarioEmail;
  }

  @override
  int hash(VendasRecord? e) => const ListEquality().hash([
        e?.parcelas,
        e?.valor,
        e?.webhook,
        e?.webhookToken,
        e?.clienteNome,
        e?.clienteDocumento,
        e?.formaPgto,
        e?.descricao,
        e?.usuarioEmail
      ]);

  @override
  bool isValidKey(Object? o) => o is VendasRecord;
}
