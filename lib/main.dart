import 'package:flutter/material.dart';
import 'package:gxp/src/helpers/AppLifecycleReactor.dart';
import 'src/helpers/Globals.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Globals.init();
  runApp(AppLifecycleReactor());
}
