import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage(){
    return _instance;
  }
  TLocalStorage._internal();

  final _storage = GetStorage();

  //generic method to save data
  Future<void> saveData<T>(String key,T value)async{
    await _storage.write(key, value);
  }

   //generic method to read data
  T? readData<T>
}