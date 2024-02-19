import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosPDVRecord extends FirestoreRecord {
  ProdutosPDVRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nomeprod" field.
  String? _nomeprod;
  String get nomeprod => _nomeprod ?? '';
  bool hasNomeprod() => _nomeprod != null;

  // "fotoprod" field.
  String? _fotoprod;
  String get fotoprod => _fotoprod ?? '';
  bool hasFotoprod() => _fotoprod != null;

  // "valorprod" field.
  double? _valorprod;
  double get valorprod => _valorprod ?? 0.0;
  bool hasValorprod() => _valorprod != null;

  // "QntdProd" field.
  int? _qntdProd;
  int get qntdProd => _qntdProd ?? 0;
  bool hasQntdProd() => _qntdProd != null;

  // "EmailCliente" field.
  String? _emailCliente;
  String get emailCliente => _emailCliente ?? '';
  bool hasEmailCliente() => _emailCliente != null;

  // "codigoProd" field.
  String? _codigoProd;
  String get codigoProd => _codigoProd ?? '';
  bool hasCodigoProd() => _codigoProd != null;

  void _initializeFields() {
    _nomeprod = snapshotData['nomeprod'] as String?;
    _fotoprod = snapshotData['fotoprod'] as String?;
    _valorprod = castToType<double>(snapshotData['valorprod']);
    _qntdProd = castToType<int>(snapshotData['QntdProd']);
    _emailCliente = snapshotData['EmailCliente'] as String?;
    _codigoProd = snapshotData['codigoProd'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ProdutosPDV');

  static Stream<ProdutosPDVRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutosPDVRecord.fromSnapshot(s));

  static Future<ProdutosPDVRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutosPDVRecord.fromSnapshot(s));

  static ProdutosPDVRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutosPDVRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutosPDVRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutosPDVRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutosPDVRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutosPDVRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutosPDVRecordData({
  String? nomeprod,
  String? fotoprod,
  double? valorprod,
  int? qntdProd,
  String? emailCliente,
  String? codigoProd,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeprod': nomeprod,
      'fotoprod': fotoprod,
      'valorprod': valorprod,
      'QntdProd': qntdProd,
      'EmailCliente': emailCliente,
      'codigoProd': codigoProd,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutosPDVRecordDocumentEquality implements Equality<ProdutosPDVRecord> {
  const ProdutosPDVRecordDocumentEquality();

  @override
  bool equals(ProdutosPDVRecord? e1, ProdutosPDVRecord? e2) {
    return e1?.nomeprod == e2?.nomeprod &&
        e1?.fotoprod == e2?.fotoprod &&
        e1?.valorprod == e2?.valorprod &&
        e1?.qntdProd == e2?.qntdProd &&
        e1?.emailCliente == e2?.emailCliente &&
        e1?.codigoProd == e2?.codigoProd;
  }

  @override
  int hash(ProdutosPDVRecord? e) => const ListEquality().hash([
        e?.nomeprod,
        e?.fotoprod,
        e?.valorprod,
        e?.qntdProd,
        e?.emailCliente,
        e?.codigoProd
      ]);

  @override
  bool isValidKey(Object? o) => o is ProdutosPDVRecord;
}
