import 'package:flutter/material.dart';
import 'package:gxp/src/helpers/MyApp.dart';

class AppLifecycleReactor extends StatefulWidget {
  @override
  _AppLifecycleReactorState createState() => _AppLifecycleReactorState();
}

class _AppLifecycleReactorState extends State<AppLifecycleReactor> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  late AppLifecycleState _notification;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print("$state");
    setState(() {
      _notification = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyApp();
  }
}
