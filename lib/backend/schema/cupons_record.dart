import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuponsRecord extends FirestoreRecord {
  CuponsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "aaaaaaaaaaaaaa" field.
  double? _aaaaaaaaaaaaaa;
  double get aaaaaaaaaaaaaa => _aaaaaaaaaaaaaa ?? 0.0;
  bool hasAaaaaaaaaaaaaa() => _aaaaaaaaaaaaaa != null;

  void _initializeFields() {
    _aaaaaaaaaaaaaa = castToType<double>(snapshotData['aaaaaaaaaaaaaa']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cupons');

  static Stream<CuponsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CuponsRecord.fromSnapshot(s));

  static Future<CuponsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CuponsRecord.fromSnapshot(s));

  static CuponsRecord fromSnapshot(DocumentSnapshot snapshot) => CuponsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CuponsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CuponsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CuponsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CuponsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCuponsRecordData({
  double? aaaaaaaaaaaaaa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'aaaaaaaaaaaaaa': aaaaaaaaaaaaaa,
    }.withoutNulls,
  );

  return firestoreData;
}

class CuponsRecordDocumentEquality implements Equality<CuponsRecord> {
  const CuponsRecordDocumentEquality();

  @override
  bool equals(CuponsRecord? e1, CuponsRecord? e2) {
    return e1?.aaaaaaaaaaaaaa == e2?.aaaaaaaaaaaaaa;
  }

  @override
  int hash(CuponsRecord? e) => const ListEquality().hash([e?.aaaaaaaaaaaaaa]);

  @override
  bool isValidKey(Object? o) => o is CuponsRecord;
}
