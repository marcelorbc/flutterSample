import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Globals {
  static SharedPreferences? localStorage;
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  static Future init() async {
    Intl.defaultLocale = 'en';
    localStorage = await SharedPreferences.getInstance();
  }
}
