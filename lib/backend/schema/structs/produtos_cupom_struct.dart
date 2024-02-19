// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosCupomStruct extends FFFirebaseStruct {
  ProdutosCupomStruct({
    String? nomeprod,
    int? qntdeprod,
    double? valorProd,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nomeprod = nomeprod,
        _qntdeprod = qntdeprod,
        _valorProd = valorProd,
        super(firestoreUtilData);

  // "Nomeprod" field.
  String? _nomeprod;
  String get nomeprod => _nomeprod ?? '';
  set nomeprod(String? val) => _nomeprod = val;
  bool hasNomeprod() => _nomeprod != null;

  // "Qntdeprod" field.
  int? _qntdeprod;
  int get qntdeprod => _qntdeprod ?? 0;
  set qntdeprod(int? val) => _qntdeprod = val;
  void incrementQntdeprod(int amount) => _qntdeprod = qntdeprod + amount;
  bool hasQntdeprod() => _qntdeprod != null;

  // "ValorProd" field.
  double? _valorProd;
  double get valorProd => _valorProd ?? 0.0;
  set valorProd(double? val) => _valorProd = val;
  void incrementValorProd(double amount) => _valorProd = valorProd + amount;
  bool hasValorProd() => _valorProd != null;

  static ProdutosCupomStruct fromMap(Map<String, dynamic> data) =>
      ProdutosCupomStruct(
        nomeprod: data['Nomeprod'] as String?,
        qntdeprod: castToType<int>(data['Qntdeprod']),
        valorProd: castToType<double>(data['ValorProd']),
      );

  static ProdutosCupomStruct? maybeFromMap(dynamic data) => data is Map
      ? ProdutosCupomStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Nomeprod': _nomeprod,
        'Qntdeprod': _qntdeprod,
        'ValorProd': _valorProd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Nomeprod': serializeParam(
          _nomeprod,
          ParamType.String,
        ),
        'Qntdeprod': serializeParam(
          _qntdeprod,
          ParamType.int,
        ),
        'ValorProd': serializeParam(
          _valorProd,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProdutosCupomStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdutosCupomStruct(
        nomeprod: deserializeParam(
          data['Nomeprod'],
          ParamType.String,
          false,
        ),
        qntdeprod: deserializeParam(
          data['Qntdeprod'],
          ParamType.int,
          false,
        ),
        valorProd: deserializeParam(
          data['ValorProd'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProdutosCupomStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutosCupomStruct &&
        nomeprod == other.nomeprod &&
        qntdeprod == other.qntdeprod &&
        valorProd == other.valorProd;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nomeprod, qntdeprod, valorProd]);
}

ProdutosCupomStruct createProdutosCupomStruct({
  String? nomeprod,
  int? qntdeprod,
  double? valorProd,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProdutosCupomStruct(
      nomeprod: nomeprod,
      qntdeprod: qntdeprod,
      valorProd: valorProd,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProdutosCupomStruct? updateProdutosCupomStruct(
  ProdutosCupomStruct? produtosCupom, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    produtosCupom
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProdutosCupomStructData(
  Map<String, dynamic> firestoreData,
  ProdutosCupomStruct? produtosCupom,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (produtosCupom == null) {
    return;
  }
  if (produtosCupom.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && produtosCupom.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final produtosCupomData =
      getProdutosCupomFirestoreData(produtosCupom, forFieldValue);
  final nestedData =
      produtosCupomData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = produtosCupom.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProdutosCupomFirestoreData(
  ProdutosCupomStruct? produtosCupom, [
  bool forFieldValue = false,
]) {
  if (produtosCupom == null) {
    return {};
  }
  final firestoreData = mapToFirestore(produtosCupom.toMap());

  // Add any Firestore field values
  produtosCupom.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProdutosCupomListFirestoreData(
  List<ProdutosCupomStruct>? produtosCupoms,
) =>
    produtosCupoms
        ?.map((e) => getProdutosCupomFirestoreData(e, true))
        .toList() ??
    [];
