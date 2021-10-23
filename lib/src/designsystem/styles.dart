import 'package:flutter/material.dart';
import 'package:gxp/src/designsystem/design_system.dart';

abstract class Styles {
  DesignSystem designSystem;

  Styles(this.designSystem);

  ButtonStyle get elevatedButtonPrimary;

  /* Dialog exit */
  ButtonStyle get dialogExitSessionElevatedButtonCancel =>
      ElevatedButton.styleFrom(
          primary: Colors.black, textStyle: TextStyle(color: Colors.white));
  ButtonStyle get dialogExitSessionElevatedButtonConfirm =>
      ElevatedButton.styleFrom(
          primary: Colors.white, textStyle: TextStyle(color: Colors.black));

  /*Shortcut Text Style */
  ButtonStyle get shortcutStyle => ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: designSystem.getColors().shortcutBackground,
        padding: EdgeInsets.all(14),
        shadowColor: Colors.black,
        elevation: 1,
      );
}

class StylesNatura extends Styles {
  StylesNatura(DesignSystem naturaDS) : super(naturaDS);

  ButtonStyle get elevatedButtonPrimary => ElevatedButton.styleFrom(
      primary: Colors.amber[800],
      onPrimary: Colors.white,
      textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold));
  ButtonStyle get dialogExitSessionElevatedButtonCancel =>
      ElevatedButton.styleFrom(primary: Colors.orange.shade800);
  ButtonStyle get dialogExitSessionElevatedButtonConfirm =>
      ElevatedButton.styleFrom(primary: Colors.white);
}

class StylesNaturaDark extends Styles {
  StylesNaturaDark(DesignSystem naturaDSDark) : super(naturaDSDark);

  ButtonStyle get elevatedButtonPrimary => ElevatedButton.styleFrom(
        primary: Colors.white70,
        onPrimary: Colors.white,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      );
  ButtonStyle get dialogExitSessionElevatedButtonCancel =>
      ElevatedButton.styleFrom(primary: Colors.black);
  ButtonStyle get dialogExitSessionElevatedButtonConfirm =>
      ElevatedButton.styleFrom(primary: Colors.white);
}

class StylesNaturaCo extends Styles {
  StylesNaturaCo(DesignSystem naturaCoDS) : super(naturaCoDS);

  ButtonStyle get elevatedButtonPrimary => ElevatedButton.styleFrom(
        primary: Colors.amber[800],
        onPrimary: Colors.white,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      );
}

class StylesAvon extends Styles {
  StylesAvon(DesignSystem avonDS) : super(avonDS);

  ButtonStyle get elevatedButtonPrimary => ElevatedButton.styleFrom(
        primary: Colors.purpleAccent.shade700,
        onPrimary: Colors.white,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      );
  ButtonStyle get dialogExitSessionElevatedButtonCancel =>
      ElevatedButton.styleFrom(primary: Colors.purple.shade800);
  ButtonStyle get dialogExitSessionElevatedButtonConfirm =>
      ElevatedButton.styleFrom(primary: Colors.white);
}

class StylesTheBodyShop extends Styles {
  StylesTheBodyShop(DesignSystem theBodyShopDS) : super(theBodyShopDS);

  ButtonStyle get elevatedButtonPrimary => ElevatedButton.styleFrom(
        primary: Colors.green.shade900,
        onPrimary: Colors.white,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      );

  ButtonStyle get dialogExitSessionElevatedButtonCancel =>
      ElevatedButton.styleFrom(primary: Colors.green.shade800);
  ButtonStyle get dialogExitSessionElevatedButtonConfirm =>
      ElevatedButton.styleFrom(primary: Colors.white);
}

class StylesAesop extends Styles {
  StylesAesop(DesignSystem aesopDS) : super(aesopDS);

  ButtonStyle get elevatedButtonPrimary => ElevatedButton.styleFrom(
        primary: Colors.black,
        onPrimary: Colors.white,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      );
}
