import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gxp/generated/l10n.dart';
import 'package:gxp/src/features/core/splash/NaturaECoSimpleSplash.dart';

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
      home: NaturaECoSimpleSplash(),
    );
  }
}
