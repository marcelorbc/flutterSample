import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gxp/generated/l10n.dart';
import 'package:gxp/src/designsystem/design_system.dart';
import 'package:gxp/src/features/core/splash/splash_screen.dart';
import 'package:gxp/src/helpers/nativigator.dart';

class MyApp extends StatelessWidget {
  final Natvigator natvigator;
  final DesignSystem designSystem;

  const MyApp({Key? key, required this.designSystem, required this.natvigator}) : super(key: key);

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
      home: SplashScreen(
        natvigator: natvigator,
        designSystem: designSystem,
      ),
    );
  }
}
