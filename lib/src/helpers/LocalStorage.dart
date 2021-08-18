import 'Globals.dart';

class LocalStorage {
  String? getValueString(String key) {
    final prefs = Globals.globalLocalStorage;
    return prefs!.getString(key);
  }

  void setValueString(String key, String value) {
    final prefs = Globals.globalLocalStorage;
    prefs!.setString(key, value);
  }

  void remove(String key) {
    final prefs = Globals.globalLocalStorage;
    prefs!.remove(key);
  }
}
