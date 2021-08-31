import 'package:flutter/material.dart';
import 'package:gxp/src/designsystem/design_system.dart';
import 'package:gxp/src/features/commons/entities/config.dart';
import 'package:gxp/src/helpers/nativigator.dart';

class AppLifecycleReactor extends StatefulWidget {
  final DesignSystem designSystem;
  final Natvigator natvigator;
  final Config config;

  const AppLifecycleReactor({Key? key, required this.designSystem, required this.natvigator, required this.config}) : super(key: key);
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
    return widget.natvigator.root();
  }
}
