import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosCupomRecord extends FirestoreRecord {
  ProdutosCupomRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "NomeProd" field.
  String? _nomeProd;
  String get nomeProd => _nomeProd ?? '';
  bool hasNomeProd() => _nomeProd != null;

  // "QntdeProd" field.
  int? _qntdeProd;
  int get qntdeProd => _qntdeProd ?? 0;
  bool hasQntdeProd() => _qntdeProd != null;

  // "ValorProd" field.
  double? _valorProd;
  double get valorProd => _valorProd ?? 0.0;
  bool hasValorProd() => _valorProd != null;

  // "EmailCliente" field.
  String? _emailCliente;
  String get emailCliente => _emailCliente ?? '';
  bool hasEmailCliente() => _emailCliente != null;

  void _initializeFields() {
    _nomeProd = snapshotData['NomeProd'] as String?;
    _qntdeProd = castToType<int>(snapshotData['QntdeProd']);
    _valorProd = castToType<double>(snapshotData['ValorProd']);
    _emailCliente = snapshotData['EmailCliente'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProdutosCupom');

  static Stream<ProdutosCupomRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosCupomRecord.fromSnapshot(s));

  static Future<ProdutosCupomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosCupomRecord.fromSnapshot(s));

  static ProdutosCupomRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosCupomRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosCupomRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosCupomRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutosCupomRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosCupomRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosCupomRecordData({
  String? nomeProd,
  int? qntdeProd,
  double? valorProd,
  String? emailCliente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NomeProd': nomeProd,
      'QntdeProd': qntdeProd,
      'ValorProd': valorProd,
      'EmailCliente': emailCliente,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosCupomRecordDocumentEquality
    implements Equality<ProdutosCupomRecord> {
  const ProdutosCupomRecordDocumentEquality();

  @override
  bool equals(ProdutosCupomRecord? e1, ProdutosCupomRecord? e2) {
    return e1?.nomeProd == e2?.nomeProd &&
        e1?.qntdeProd == e2?.qntdeProd &&
        e1?.valorProd == e2?.valorProd &&
        e1?.emailCliente == e2?.emailCliente;
  }

  @override
  int hash(ProdutosCupomRecord? e) => const ListEquality()
      .hash([e?.nomeProd, e?.qntdeProd, e?.valorProd, e?.emailCliente]);

  @override
  bool isValidKey(Object? o) => o is ProdutosCupomRecord;
}
