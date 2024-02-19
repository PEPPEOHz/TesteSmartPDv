// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuponsStruct extends FFFirebaseStruct {
  CuponsStruct({
    String? formaPgto,
    double? valor,
    String? codTransacao,
    String? dataHoraTransacao,
    ProdTransacaoStruct? produtos,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _formaPgto = formaPgto,
        _valor = valor,
        _codTransacao = codTransacao,
        _dataHoraTransacao = dataHoraTransacao,
        _produtos = produtos,
        super(firestoreUtilData);

  // "formaPgto" field.
  String? _formaPgto;
  String get formaPgto => _formaPgto ?? '';
  set formaPgto(String? val) => _formaPgto = val;
  bool hasFormaPgto() => _formaPgto != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  // "codTransacao" field.
  String? _codTransacao;
  String get codTransacao => _codTransacao ?? '';
  set codTransacao(String? val) => _codTransacao = val;
  bool hasCodTransacao() => _codTransacao != null;

  // "dataHoraTransacao" field.
  String? _dataHoraTransacao;
  String get dataHoraTransacao => _dataHoraTransacao ?? '';
  set dataHoraTransacao(String? val) => _dataHoraTransacao = val;
  bool hasDataHoraTransacao() => _dataHoraTransacao != null;

  // "produtos" field.
  ProdTransacaoStruct? _produtos;
  ProdTransacaoStruct get produtos => _produtos ?? ProdTransacaoStruct();
  set produtos(ProdTransacaoStruct? val) => _produtos = val;
  void updateProdutos(Function(ProdTransacaoStruct) updateFn) =>
      updateFn(_produtos ??= ProdTransacaoStruct());
  bool hasProdutos() => _produtos != null;

  static CuponsStruct fromMap(Map<String, dynamic> data) => CuponsStruct(
        formaPgto: data['formaPgto'] as String?,
        valor: castToType<double>(data['valor']),
        codTransacao: data['codTransacao'] as String?,
        dataHoraTransacao: data['dataHoraTransacao'] as String?,
        produtos: ProdTransacaoStruct.maybeFromMap(data['produtos']),
      );

  static CuponsStruct? maybeFromMap(dynamic data) =>
      data is Map ? CuponsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'formaPgto': _formaPgto,
        'valor': _valor,
        'codTransacao': _codTransacao,
        'dataHoraTransacao': _dataHoraTransacao,
        'produtos': _produtos?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'formaPgto': serializeParam(
          _formaPgto,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'codTransacao': serializeParam(
          _codTransacao,
          ParamType.String,
        ),
        'dataHoraTransacao': serializeParam(
          _dataHoraTransacao,
          ParamType.String,
        ),
        'produtos': serializeParam(
          _produtos,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CuponsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CuponsStruct(
        formaPgto: deserializeParam(
          data['formaPgto'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        codTransacao: deserializeParam(
          data['codTransacao'],
          ParamType.String,
          false,
        ),
        dataHoraTransacao: deserializeParam(
          data['dataHoraTransacao'],
          ParamType.String,
          false,
        ),
        produtos: deserializeStructParam(
          data['produtos'],
          ParamType.DataStruct,
          false,
          structBuilder: ProdTransacaoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CuponsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CuponsStruct &&
        formaPgto == other.formaPgto &&
        valor == other.valor &&
        codTransacao == other.codTransacao &&
        dataHoraTransacao == other.dataHoraTransacao &&
        produtos == other.produtos;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([formaPgto, valor, codTransacao, dataHoraTransacao, produtos]);
}

CuponsStruct createCuponsStruct({
  String? formaPgto,
  double? valor,
  String? codTransacao,
  String? dataHoraTransacao,
  ProdTransacaoStruct? produtos,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CuponsStruct(
      formaPgto: formaPgto,
      valor: valor,
      codTransacao: codTransacao,
      dataHoraTransacao: dataHoraTransacao,
      produtos: produtos ?? (clearUnsetFields ? ProdTransacaoStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CuponsStruct? updateCuponsStruct(
  CuponsStruct? cupons, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cupons
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCuponsStructData(
  Map<String, dynamic> firestoreData,
  CuponsStruct? cupons,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cupons == null) {
    return;
  }
  if (cupons.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cupons.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cuponsData = getCuponsFirestoreData(cupons, forFieldValue);
  final nestedData = cuponsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cupons.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCuponsFirestoreData(
  CuponsStruct? cupons, [
  bool forFieldValue = false,
]) {
  if (cupons == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cupons.toMap());

  // Handle nested data for "produtos" field.
  addProdTransacaoStructData(
    firestoreData,
    cupons.hasProdutos() ? cupons.produtos : null,
    'produtos',
    forFieldValue,
  );

  // Add any Firestore field values
  cupons.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCuponsListFirestoreData(
  List<CuponsStruct>? cuponss,
) =>
    cuponss?.map((e) => getCuponsFirestoreData(e, true)).toList() ?? [];
