import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Globals {
  static SharedPreferences? globalLocalStorage;
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  static Future init() async {
    Intl.defaultLocale = 'en';
    globalLocalStorage = await SharedPreferences.getInstance();
  }
}
