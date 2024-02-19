// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdTransacaoStruct extends FFFirebaseStruct {
  ProdTransacaoStruct({
    String? nomeProd,
    double? valorProd,
    String? codProduto,
    int? qntdProd,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nomeProd = nomeProd,
        _valorProd = valorProd,
        _codProduto = codProduto,
        _qntdProd = qntdProd,
        super(firestoreUtilData);

  // "nomeProd" field.
  String? _nomeProd;
  String get nomeProd => _nomeProd ?? '';
  set nomeProd(String? val) => _nomeProd = val;
  bool hasNomeProd() => _nomeProd != null;

  // "valorProd" field.
  double? _valorProd;
  double get valorProd => _valorProd ?? 0.0;
  set valorProd(double? val) => _valorProd = val;
  void incrementValorProd(double amount) => _valorProd = valorProd + amount;
  bool hasValorProd() => _valorProd != null;

  // "codProduto" field.
  String? _codProduto;
  String get codProduto => _codProduto ?? '';
  set codProduto(String? val) => _codProduto = val;
  bool hasCodProduto() => _codProduto != null;

  // "qntdProd" field.
  int? _qntdProd;
  int get qntdProd => _qntdProd ?? 0;
  set qntdProd(int? val) => _qntdProd = val;
  void incrementQntdProd(int amount) => _qntdProd = qntdProd + amount;
  bool hasQntdProd() => _qntdProd != null;

  static ProdTransacaoStruct fromMap(Map<String, dynamic> data) =>
      ProdTransacaoStruct(
        nomeProd: data['nomeProd'] as String?,
        valorProd: castToType<double>(data['valorProd']),
        codProduto: data['codProduto'] as String?,
        qntdProd: castToType<int>(data['qntdProd']),
      );

  static ProdTransacaoStruct? maybeFromMap(dynamic data) => data is Map
      ? ProdTransacaoStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nomeProd': _nomeProd,
        'valorProd': _valorProd,
        'codProduto': _codProduto,
        'qntdProd': _qntdProd,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nomeProd': serializeParam(
          _nomeProd,
          ParamType.String,
        ),
        'valorProd': serializeParam(
          _valorProd,
          ParamType.double,
        ),
        'codProduto': serializeParam(
          _codProduto,
          ParamType.String,
        ),
        'qntdProd': serializeParam(
          _qntdProd,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProdTransacaoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdTransacaoStruct(
        nomeProd: deserializeParam(
          data['nomeProd'],
          ParamType.String,
          false,
        ),
        valorProd: deserializeParam(
          data['valorProd'],
          ParamType.double,
          false,
        ),
        codProduto: deserializeParam(
          data['codProduto'],
          ParamType.String,
          false,
        ),
        qntdProd: deserializeParam(
          data['qntdProd'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProdTransacaoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdTransacaoStruct &&
        nomeProd == other.nomeProd &&
        valorProd == other.valorProd &&
        codProduto == other.codProduto &&
        qntdProd == other.qntdProd;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nomeProd, valorProd, codProduto, qntdProd]);
}

ProdTransacaoStruct createProdTransacaoStruct({
  String? nomeProd,
  double? valorProd,
  String? codProduto,
  int? qntdProd,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProdTransacaoStruct(
      nomeProd: nomeProd,
      valorProd: valorProd,
      codProduto: codProduto,
      qntdProd: qntdProd,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProdTransacaoStruct? updateProdTransacaoStruct(
  ProdTransacaoStruct? prodTransacao, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    prodTransacao
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProdTransacaoStructData(
  Map<String, dynamic> firestoreData,
  ProdTransacaoStruct? prodTransacao,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (prodTransacao == null) {
    return;
  }
  if (prodTransacao.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && prodTransacao.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final prodTransacaoData =
      getProdTransacaoFirestoreData(prodTransacao, forFieldValue);
  final nestedData =
      prodTransacaoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = prodTransacao.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProdTransacaoFirestoreData(
  ProdTransacaoStruct? prodTransacao, [
  bool forFieldValue = false,
]) {
  if (prodTransacao == null) {
    return {};
  }
  final firestoreData = mapToFirestore(prodTransacao.toMap());

  // Add any Firestore field values
  prodTransacao.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProdTransacaoListFirestoreData(
  List<ProdTransacaoStruct>? prodTransacaos,
) =>
    prodTransacaos
        ?.map((e) => getProdTransacaoFirestoreData(e, true))
        .toList() ??
    [];
