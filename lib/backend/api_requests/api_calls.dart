import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start GetProdutos Group Code

class GetProdutosGroup {
  static String baseUrl =
      '[Servidor]/api/v1/Produto/Produto?empresa_idpk=[emp_idpk]';
  static Map<String, String> headers = {
    'Authorization': 'Bearer [token]',
  };
}

/// End GetProdutos Group Code

class WebhookMercurioNovoCall {
  static Future<ApiCallResponse> call({
    String? ref = '',
    String? codTransacao = '',
    String? bandeira = '',
    String? cnpjCliente = '',
    String? nomeCliente = '',
    String? cnpjCredenciador = '',
    double? valor,
    String? rede = '',
    String? nsu = '',
    String? emailCliente = '',
    String? dataHoraTransacao = '',
    String? weebhook = '',
    String? webhooktoken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "projects/posapp-1d5d5/databases/(default)/documents/VendasPagas/$ref",
  "fields": {
    "valor": {
      "doubleValue": $valor
    },
    "clienteEmail": {
      "stringValue": "$emailCliente"
    },
    "nsu": {
      "stringValue": "$nsu"
    },
    "cnpjCredenciador": {
      "stringValue": "$cnpjCredenciador"
    },
    "dataHoraTransacao": {
      "stringValue": "$dataHoraTransacao"
    },
    "rede": {
      "stringValue": "$rede"
    },
    "codTransacao": {
      "stringValue": "$codTransacao"
    },
    "bandeira": {
      "stringValue": "$bandeira"
    },
    "clienteDocumento": {
      "stringValue": "$cnpjCliente"
    },
    "clienteNome": {
      "stringValue": "$nomeCliente"
    }
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'webhookMercurioNovo',
      apiUrl: '$weebhook?identificador=$ref',
      callType: ApiCallType.POST,
      headers: {
        'x-api-key': '$webhooktoken',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetprodutoCall {
  static Future<ApiCallResponse> call({
    String? servidor = 'https://api.tecno.mobi',
    String? token = '',
    String? empresaIdpk = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Getproduto',
      apiUrl: '$servidor/api/v1/Produto/Produto?empresa_idpk=$empresaIdpk',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $token',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static int? fav(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.registros[:].pro_favorito''',
      ));
  static int? custoMedio(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.registros[:].pro_custo_medio''',
      ));
  static int? precoCusto(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.registros[:].pro_preco_custo''',
      ));
  static int? idpk(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.registros[:].pro_idpk''',
      ));
  static String? nome(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.registros[:].pro_descricao''',
      ));
  static int? precoVenda(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.registros[:].pro_preco_venda''',
      ));
}

class ApiLoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "senha": "$senha"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ApiLogin',
      apiUrl: 'https://api.tecno.mobi/api/v1/Login/Logar',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token''',
      ));
  static String? tokenexp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.token_exp''',
      ));
  static int? idpk(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.usuario_empresa[:].empresa[:].emp_idpk''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
