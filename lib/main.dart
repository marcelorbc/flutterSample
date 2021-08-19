import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:natura_on_track/generated/l10n.dart';
import 'package:natura_on_track/src/features/core/login/Login.dart';
import 'package:natura_on_track/src/helpers/NavigatorNatura.dart';
import 'src/helpers/Globals.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Globals.init();
  runApp(AppLifecycleReactor());
}

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

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Natura e Co",
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        S.delegate, // 2
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: Login(),
    );
  }
}
