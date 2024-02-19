// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DadosVendaStruct extends FFFirebaseStruct {
  DadosVendaStruct({
    String? nsu,
    String? bandeira,
    String? codAutorizacao,
    String? dataHoraTransacao,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nsu = nsu,
        _bandeira = bandeira,
        _codAutorizacao = codAutorizacao,
        _dataHoraTransacao = dataHoraTransacao,
        super(firestoreUtilData);

  // "Nsu" field.
  String? _nsu;
  String get nsu => _nsu ?? '';
  set nsu(String? val) => _nsu = val;
  bool hasNsu() => _nsu != null;

  // "bandeira" field.
  String? _bandeira;
  String get bandeira => _bandeira ?? '';
  set bandeira(String? val) => _bandeira = val;
  bool hasBandeira() => _bandeira != null;

  // "codAutorizacao" field.
  String? _codAutorizacao;
  String get codAutorizacao => _codAutorizacao ?? '';
  set codAutorizacao(String? val) => _codAutorizacao = val;
  bool hasCodAutorizacao() => _codAutorizacao != null;

  // "dataHoraTransacao" field.
  String? _dataHoraTransacao;
  String get dataHoraTransacao => _dataHoraTransacao ?? '';
  set dataHoraTransacao(String? val) => _dataHoraTransacao = val;
  bool hasDataHoraTransacao() => _dataHoraTransacao != null;

  static DadosVendaStruct fromMap(Map<String, dynamic> data) =>
      DadosVendaStruct(
        nsu: data['Nsu'] as String?,
        bandeira: data['bandeira'] as String?,
        codAutorizacao: data['codAutorizacao'] as String?,
        dataHoraTransacao: data['dataHoraTransacao'] as String?,
      );

  static DadosVendaStruct? maybeFromMap(dynamic data) => data is Map
      ? DadosVendaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'Nsu': _nsu,
        'bandeira': _bandeira,
        'codAutorizacao': _codAutorizacao,
        'dataHoraTransacao': _dataHoraTransacao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Nsu': serializeParam(
          _nsu,
          ParamType.String,
        ),
        'bandeira': serializeParam(
          _bandeira,
          ParamType.String,
        ),
        'codAutorizacao': serializeParam(
          _codAutorizacao,
          ParamType.String,
        ),
        'dataHoraTransacao': serializeParam(
          _dataHoraTransacao,
          ParamType.String,
        ),
      }.withoutNulls;

  static DadosVendaStruct fromSerializableMap(Map<String, dynamic> data) =>
      DadosVendaStruct(
        nsu: deserializeParam(
          data['Nsu'],
          ParamType.String,
          false,
        ),
        bandeira: deserializeParam(
          data['bandeira'],
          ParamType.String,
          false,
        ),
        codAutorizacao: deserializeParam(
          data['codAutorizacao'],
          ParamType.String,
          false,
        ),
        dataHoraTransacao: deserializeParam(
          data['dataHoraTransacao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DadosVendaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DadosVendaStruct &&
        nsu == other.nsu &&
        bandeira == other.bandeira &&
        codAutorizacao == other.codAutorizacao &&
        dataHoraTransacao == other.dataHoraTransacao;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nsu, bandeira, codAutorizacao, dataHoraTransacao]);
}

DadosVendaStruct createDadosVendaStruct({
  String? nsu,
  String? bandeira,
  String? codAutorizacao,
  String? dataHoraTransacao,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DadosVendaStruct(
      nsu: nsu,
      bandeira: bandeira,
      codAutorizacao: codAutorizacao,
      dataHoraTransacao: dataHoraTransacao,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DadosVendaStruct? updateDadosVendaStruct(
  DadosVendaStruct? dadosVenda, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dadosVenda
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDadosVendaStructData(
  Map<String, dynamic> firestoreData,
  DadosVendaStruct? dadosVenda,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dadosVenda == null) {
    return;
  }
  if (dadosVenda.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dadosVenda.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dadosVendaData = getDadosVendaFirestoreData(dadosVenda, forFieldValue);
  final nestedData = dadosVendaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dadosVenda.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDadosVendaFirestoreData(
  DadosVendaStruct? dadosVenda, [
  bool forFieldValue = false,
]) {
  if (dadosVenda == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dadosVenda.toMap());

  // Add any Firestore field values
  dadosVenda.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDadosVendaListFirestoreData(
  List<DadosVendaStruct>? dadosVendas,
) =>
    dadosVendas?.map((e) => getDadosVendaFirestoreData(e, true)).toList() ?? [];
