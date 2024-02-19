import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _AddProd = await secureStorage.getBool('ff_AddProd') ?? _AddProd;
    });
    await _safeInitAsync(() async {
      _ProdutosPDV = (await secureStorage.getStringList('ff_ProdutosPDV'))
              ?.map((x) {
                try {
                  return ProdutosPDVStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ProdutosPDV;
    });
    await _safeInitAsync(() async {
      if (await secureStorage.read(key: 'ff_Login') != null) {
        try {
          final serializedData =
              await secureStorage.getString('ff_Login') ?? '{}';
          _Login = LoginStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    await _safeInitAsync(() async {
      _codVenda = await secureStorage.getInt('ff_codVenda') ?? _codVenda;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _AddProd = true;
  bool get AddProd => _AddProd;
  set AddProd(bool value) {
    _AddProd = value;
    secureStorage.setBool('ff_AddProd', value);
  }

  void deleteAddProd() {
    secureStorage.delete(key: 'ff_AddProd');
  }

  List<ProdutosCupomStruct> _produtosCupom = [];
  List<ProdutosCupomStruct> get produtosCupom => _produtosCupom;
  set produtosCupom(List<ProdutosCupomStruct> value) {
    _produtosCupom = value;
  }

  void addToProdutosCupom(ProdutosCupomStruct value) {
    _produtosCupom.add(value);
  }

  void removeFromProdutosCupom(ProdutosCupomStruct value) {
    _produtosCupom.remove(value);
  }

  void removeAtIndexFromProdutosCupom(int index) {
    _produtosCupom.removeAt(index);
  }

  void updateProdutosCupomAtIndex(
    int index,
    ProdutosCupomStruct Function(ProdutosCupomStruct) updateFn,
  ) {
    _produtosCupom[index] = updateFn(_produtosCupom[index]);
  }

  void insertAtIndexInProdutosCupom(int index, ProdutosCupomStruct value) {
    _produtosCupom.insert(index, value);
  }

  List<ProdutosPDVStruct> _ProdutosPDV = [
    ProdutosPDVStruct.fromSerializableMap(jsonDecode(
        '{"QntdProd":"1","fotoProd":"https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.receitasnestle.com.br%2Freceitas%2Farroz-basico&psig=AOvVaw1mmOIb5JP_meM8UOP_K811&ust=1694627011615000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCKDMxtrPpYEDFQAAAAAdAAAAABAE","ValorProd":"20","NomeProd":"Arroz"}')),
    ProdutosPDVStruct.fromSerializableMap(jsonDecode(
        '{"QntdProd":"1","fotoProd":"https://picsum.photos/seed/202/600","ValorProd":"30","NomeProd":"Feijão"}'))
  ];
  List<ProdutosPDVStruct> get ProdutosPDV => _ProdutosPDV;
  set ProdutosPDV(List<ProdutosPDVStruct> value) {
    _ProdutosPDV = value;
    secureStorage.setStringList(
        'ff_ProdutosPDV', value.map((x) => x.serialize()).toList());
  }

  void deleteProdutosPDV() {
    secureStorage.delete(key: 'ff_ProdutosPDV');
  }

  void addToProdutosPDV(ProdutosPDVStruct value) {
    _ProdutosPDV.add(value);
    secureStorage.setStringList(
        'ff_ProdutosPDV', _ProdutosPDV.map((x) => x.serialize()).toList());
  }

  void removeFromProdutosPDV(ProdutosPDVStruct value) {
    _ProdutosPDV.remove(value);
    secureStorage.setStringList(
        'ff_ProdutosPDV', _ProdutosPDV.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProdutosPDV(int index) {
    _ProdutosPDV.removeAt(index);
    secureStorage.setStringList(
        'ff_ProdutosPDV', _ProdutosPDV.map((x) => x.serialize()).toList());
  }

  void updateProdutosPDVAtIndex(
    int index,
    ProdutosPDVStruct Function(ProdutosPDVStruct) updateFn,
  ) {
    _ProdutosPDV[index] = updateFn(_ProdutosPDV[index]);
    secureStorage.setStringList(
        'ff_ProdutosPDV', _ProdutosPDV.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProdutosPDV(int index, ProdutosPDVStruct value) {
    _ProdutosPDV.insert(index, value);
    secureStorage.setStringList(
        'ff_ProdutosPDV', _ProdutosPDV.map((x) => x.serialize()).toList());
  }

  CuponsStruct _cupomState = CuponsStruct();
  CuponsStruct get cupomState => _cupomState;
  set cupomState(CuponsStruct value) {
    _cupomState = value;
  }

  void updateCupomStateStruct(Function(CuponsStruct) updateFn) {
    updateFn(_cupomState);
  }

  bool _MaisMenos = true;
  bool get MaisMenos => _MaisMenos;
  set MaisMenos(bool value) {
    _MaisMenos = value;
  }

  LoginStruct _Login = LoginStruct();
  LoginStruct get Login => _Login;
  set Login(LoginStruct value) {
    _Login = value;
    secureStorage.setString('ff_Login', value.serialize());
  }

  void deleteLogin() {
    secureStorage.delete(key: 'ff_Login');
  }

  void updateLoginStruct(Function(LoginStruct) updateFn) {
    updateFn(_Login);
    secureStorage.setString('ff_Login', _Login.serialize());
  }

  bool _ProdFavorito = false;
  bool get ProdFavorito => _ProdFavorito;
  set ProdFavorito(bool value) {
    _ProdFavorito = value;
  }

  int _codVenda = 0;
  int get codVenda => _codVenda;
  set codVenda(int value) {
    _codVenda = value;
    secureStorage.setInt('ff_codVenda', value);
  }

  void deleteCodVenda() {
    secureStorage.delete(key: 'ff_codVenda');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
