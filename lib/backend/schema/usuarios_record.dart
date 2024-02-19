import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuariosRecord extends FirestoreRecord {
  UsuariosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "Cnpj" field.
  int? _cnpj;
  int get cnpj => _cnpj ?? 0;
  bool hasCnpj() => _cnpj != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  bool hasToken() => _token != null;

  // "token_exp" field.
  String? _tokenExp;
  String get tokenExp => _tokenExp ?? '';
  bool hasTokenExp() => _tokenExp != null;

  // "empIdpk" field.
  int? _empIdpk;
  int get empIdpk => _empIdpk ?? 0;
  bool hasEmpIdpk() => _empIdpk != null;

  // "venNumero" field.
  int? _venNumero;
  int get venNumero => _venNumero ?? 0;
  bool hasVenNumero() => _venNumero != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _userName = snapshotData['user_name'] as String?;
    _cnpj = castToType<int>(snapshotData['Cnpj']);
    _phoneNumber = snapshotData['phone_number'] as String?;
    _token = snapshotData['token'] as String?;
    _tokenExp = snapshotData['token_exp'] as String?;
    _empIdpk = castToType<int>(snapshotData['empIdpk']);
    _venNumero = castToType<int>(snapshotData['venNumero']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuariosRecord.fromSnapshot(s));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuariosRecord.fromSnapshot(s));

  static UsuariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuariosRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? userName,
  int? cnpj,
  String? phoneNumber,
  String? token,
  String? tokenExp,
  int? empIdpk,
  int? venNumero,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'user_name': userName,
      'Cnpj': cnpj,
      'phone_number': phoneNumber,
      'token': token,
      'token_exp': tokenExp,
      'empIdpk': empIdpk,
      'venNumero': venNumero,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuariosRecordDocumentEquality implements Equality<UsuariosRecord> {
  const UsuariosRecordDocumentEquality();

  @override
  bool equals(UsuariosRecord? e1, UsuariosRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.userName == e2?.userName &&
        e1?.cnpj == e2?.cnpj &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.token == e2?.token &&
        e1?.tokenExp == e2?.tokenExp &&
        e1?.empIdpk == e2?.empIdpk &&
        e1?.venNumero == e2?.venNumero;
  }

  @override
  int hash(UsuariosRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.userName,
        e?.cnpj,
        e?.phoneNumber,
        e?.token,
        e?.tokenExp,
        e?.empIdpk,
        e?.venNumero
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuariosRecord;
}
