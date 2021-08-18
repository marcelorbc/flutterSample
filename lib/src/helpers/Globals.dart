import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:natura_on_track/src/helpers/NavigatorNatura.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Globals {
  static SharedPreferences? globalLocalStorage;
  static GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  /*Routes Mapping*/
  static String initialRoute = '/';
  static Map<String, Widget Function(BuildContext)> routes = NavigatorNatura.routes;

  static Future init() async {
    Intl.defaultLocale = 'en';
    globalLocalStorage = await SharedPreferences.getInstance();
  }
}
