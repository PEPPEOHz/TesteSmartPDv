// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosPDVStruct extends FFFirebaseStruct {
  ProdutosPDVStruct({
    int? qntdProd,
    String? fotoProd,
    double? valorProd,
    String? nomeProd,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _qntdProd = qntdProd,
        _fotoProd = fotoProd,
        _valorProd = valorProd,
        _nomeProd = nomeProd,
        super(firestoreUtilData);

  // "QntdProd" field.
  int? _qntdProd;
  int get qntdProd => _qntdProd ?? 0;
  set qntdProd(int? val) => _qntdProd = val;
  void incrementQntdProd(int amount) => _qntdProd = qntdProd + amount;
  bool hasQntdProd() => _qntdProd != null;

  // "fotoProd" field.
  String? _fotoProd;
  String get fotoProd => _fotoProd ?? '';
  set fotoProd(String? val) => _fotoProd = val;
  bool hasFotoProd() => _fotoProd != null;

  // "ValorProd" field.
  double? _valorProd;
  double get valorProd => _valorProd ?? 0.0;
  set valorProd(double? val) => _valorProd = val;
  void incrementValorProd(double amount) => _valorProd = valorProd + amount;
  bool hasValorProd() => _valorProd != null;

  // "NomeProd" field.
  String? _nomeProd;
  String get nomeProd => _nomeProd ?? '';
  set nomeProd(String? val) => _nomeProd = val;
  bool hasNomeProd() => _nomeProd != null;

  static ProdutosPDVStruct fromMap(Map<String, dynamic> data) =>
      ProdutosPDVStruct(
        qntdProd: castToType<int>(data['QntdProd']),
        fotoProd: data['fotoProd'] as String?,
        valorProd: castToType<double>(data['ValorProd']),
        nomeProd: data['NomeProd'] as String?,
      );

  static ProdutosPDVStruct? maybeFromMap(dynamic data) => data is Map
      ? ProdutosPDVStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'QntdProd': _qntdProd,
        'fotoProd': _fotoProd,
        'ValorProd': _valorProd,
        'NomeProd': _nomeProd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'QntdProd': serializeParam(
          _qntdProd,
          ParamType.int,
        ),
        'fotoProd': serializeParam(
          _fotoProd,
          ParamType.String,
        ),
        'ValorProd': serializeParam(
          _valorProd,
          ParamType.double,
        ),
        'NomeProd': serializeParam(
          _nomeProd,
          ParamType.String,
        ),
      }.withoutNulls;

  static ProdutosPDVStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdutosPDVStruct(
        qntdProd: deserializeParam(
          data['QntdProd'],
          ParamType.int,
          false,
        ),
        fotoProd: deserializeParam(
          data['fotoProd'],
          ParamType.String,
          false,
        ),
        valorProd: deserializeParam(
          data['ValorProd'],
          ParamType.double,
          false,
        ),
        nomeProd: deserializeParam(
          data['NomeProd'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ProdutosPDVStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutosPDVStruct &&
        qntdProd == other.qntdProd &&
        fotoProd == other.fotoProd &&
        valorProd == other.valorProd &&
        nomeProd == other.nomeProd;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([qntdProd, fotoProd, valorProd, nomeProd]);
}

ProdutosPDVStruct createProdutosPDVStruct({
  int? qntdProd,
  String? fotoProd,
  double? valorProd,
  String? nomeProd,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProdutosPDVStruct(
      qntdProd: qntdProd,
      fotoProd: fotoProd,
      valorProd: valorProd,
      nomeProd: nomeProd,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProdutosPDVStruct? updateProdutosPDVStruct(
  ProdutosPDVStruct? produtosPDV, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    produtosPDV
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProdutosPDVStructData(
  Map<String, dynamic> firestoreData,
  ProdutosPDVStruct? produtosPDV,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (produtosPDV == null) {
    return;
  }
  if (produtosPDV.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && produtosPDV.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final produtosPDVData =
      getProdutosPDVFirestoreData(produtosPDV, forFieldValue);
  final nestedData =
      produtosPDVData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = produtosPDV.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProdutosPDVFirestoreData(
  ProdutosPDVStruct? produtosPDV, [
  bool forFieldValue = false,
]) {
  if (produtosPDV == null) {
    return {};
  }
  final firestoreData = mapToFirestore(produtosPDV.toMap());

  // Add any Firestore field values
  produtosPDV.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProdutosPDVListFirestoreData(
  List<ProdutosPDVStruct>? produtosPDVs,
) =>
    produtosPDVs?.map((e) => getProdutosPDVFirestoreData(e, true)).toList() ??
    [];
