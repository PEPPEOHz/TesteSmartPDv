import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ItensCupomRecord extends FirestoreRecord {
  ItensCupomRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "nomeProd" field.
  String? _nomeProd;
  String get nomeProd => _nomeProd ?? '';
  bool hasNomeProd() => _nomeProd != null;

  // "valorProd" field.
  double? _valorProd;
  double get valorProd => _valorProd ?? 0.0;
  bool hasValorProd() => _valorProd != null;

  // "codProd" field.
  String? _codProd;
  String get codProd => _codProd ?? '';
  bool hasCodProd() => _codProd != null;

  // "codCupom" field.
  String? _codCupom;
  String get codCupom => _codCupom ?? '';
  bool hasCodCupom() => _codCupom != null;

  void _initializeFields() {
    _nomeProd = snapshotData['nomeProd'] as String?;
    _valorProd = castToType<double>(snapshotData['valorProd']);
    _codProd = snapshotData['codProd'] as String?;
    _codCupom = snapshotData['codCupom'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ItensCupom');

  static Stream<ItensCupomRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ItensCupomRecord.fromSnapshot(s));

  static Future<ItensCupomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ItensCupomRecord.fromSnapshot(s));

  static ItensCupomRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ItensCupomRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ItensCupomRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ItensCupomRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ItensCupomRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ItensCupomRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createItensCupomRecordData({
  String? nomeProd,
  double? valorProd,
  String? codProd,
  String? codCupom,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeProd': nomeProd,
      'valorProd': valorProd,
      'codProd': codProd,
      'codCupom': codCupom,
    }.withoutNulls,
  );

  return firestoreData;
}

class ItensCupomRecordDocumentEquality implements Equality<ItensCupomRecord> {
  const ItensCupomRecordDocumentEquality();

  @override
  bool equals(ItensCupomRecord? e1, ItensCupomRecord? e2) {
    return e1?.nomeProd == e2?.nomeProd &&
        e1?.valorProd == e2?.valorProd &&
        e1?.codProd == e2?.codProd &&
        e1?.codCupom == e2?.codCupom;
  }

  @override
  int hash(ItensCupomRecord? e) => const ListEquality()
      .hash([e?.nomeProd, e?.valorProd, e?.codProd, e?.codCupom]);

  @override
  bool isValidKey(Object? o) => o is ItensCupomRecord;
}
