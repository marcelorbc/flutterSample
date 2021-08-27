import 'dart:convert';

import 'package:gxp/src/features/commons/commons.dart';
import 'package:gxp/src/features/core/login/auth/LoginNativo.dart';

import 'Globals.dart';

class _KeysEnum {
  // ignore: non_constant_identifier_names
  static final String AUTH_RESPONSE = 'authResponse';
  // ignore: non_constant_identifier_names
  static final String BUSINESS_UNIT = 'businessUnit';
}

class LocalStorage {
  static void setAuthResponse(AuthResponse value) {
    final prefs = Globals.localStorage;
    prefs!.setString(_KeysEnum.AUTH_RESPONSE, jsonEncode(value));
  }

  static AuthResponse? getAuthResponse() {
    return AuthResponse.fromJson(jsonDecode(Globals.localStorage!.getString(_KeysEnum.AUTH_RESPONSE)!));
  }

  static void setBusinessUnit(BusinessUnit value) {
    final prefs = Globals.localStorage;
    prefs!.setString(_KeysEnum.BUSINESS_UNIT, jsonEncode(value));
  }

  static BusinessUnit? getBusinessUnit() {
    final value = Globals.localStorage!.getString(_KeysEnum.BUSINESS_UNIT)!;
    final jsonMap = jsonDecode(value);
    return BusinessUnit.fromJson(jsonMap);
  }

  static String? getValueString(String key) {
    final prefs = Globals.localStorage;
    return prefs!.getString(key);
  }

  static void setValueString(String key, String value) {
    final prefs = Globals.localStorage;
    prefs!.setString(key, value);
  }

  static void remove(String key) {
    final prefs = Globals.localStorage;
    prefs!.remove(key);
  }
}
