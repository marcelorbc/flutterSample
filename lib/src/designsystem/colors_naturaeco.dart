import 'package:flutter/material.dart';
import 'package:gxp/src/designsystem/design_system.dart';

Color hex(String color) {
  color = color.replaceAll("#", "");
  if (color.length == 6) {
    return Color(int.parse("0xFF" + color));
  } else if (color.length == 8) {
    return Color(int.parse("0x" + color));
  }
  return Colors.red;
}

abstract class ColorsNaturaEco {
  Color get icons;
  Color get navigationAppBarButton;

  /* pages */
  Color get background;

  /* ScrollGlow */
  Color get scrollGlow => Colors.orange.shade300;

  /*Cards */
  Color get backgroundCard => ThemeData.light().cardColor;

  /* App Bar */
  Color get appBarBackground;
  Color get appBarBrand;
  Color get appBarText;
  Color get appBarButton;
  Color get appBarBottomline;

  /* ButtonBar */
  Color get bottomBarSelectedIcon;
  Color get bottomBarUnselectedIcon;

  /*Shortcuts */
  Color get shortcutBackground;
  Color get shortcutIcon;

  /*Menu Drawer */
  Color get drawerheaderBackground => Colors.orange;
  Color get drawerheaderText;

  /*Buttons*/
  Color get buttonDarkText => Colors.white;
  Color get buttonText => Colors.black;
}

class ColorsNatura extends ColorsNaturaEco {
  ColorsNatura(NaturaDS naturaDS);

  Color get background => Colors.grey.shade200;

  Color get icons => Colors.orange.shade800;
  Color get navigationAppBarButton => Colors.orange;
  Color get appBarText => Colors.black;
  Color get appBarBackground => Colors.grey.shade100;
  Color get appBarBottomline => Colors.grey.shade400;
  Color get shortcutBackground => Color.fromRGBO(233, 174, 78, 1);
  Color get shortcutIcon => Colors.grey.shade700;
  Color get appBarBrand => Colors.orange;
  Color get appBarButton => Colors.black;
  Color get bottomBarSelectedIcon => Colors.orange;
  Color get bottomBarUnselectedIcon => Colors.grey;
  Color get drawerheaderText => Colors.black;

/*Buttons*/
  Color get buttonDarkText => Colors.white;
  Color get buttonText => Colors.orange.shade900;
}

class ColorsNaturaDark extends ColorsNaturaEco {
  ColorsNaturaDark(NaturaDSDark naturaDSDark);

  Color get background => ThemeData.dark().canvasColor;
  Color get backgroundCard => ThemeData.dark().cardColor;

  Color get icons => ThemeData.dark().buttonColor;
  Color get navigationAppBarButton => ThemeData.dark().buttonColor;
  Color get appBarBackground => ThemeData.dark().bottomAppBarColor;
  Color get appBarBottomline => ThemeData.dark().canvasColor;
  Color get appBarText => Colors.black;
  Color get shortcutBackground => Colors.grey;
  Color get shortcutIcon => Colors.grey.shade700;
  Color get appBarBrand => Colors.orange;
  Color get appBarButton => Colors.white;
  Color get bottomBarSelectedIcon => Colors.orange;
  Color get bottomBarUnselectedIcon => Colors.grey;
  Color get drawerheaderText => ThemeData.dark().textTheme.bodyText1!.color!;

/*Buttons*/
  Color get buttonDarkText => Colors.white;
  Color get buttonText => Colors.orange.shade900;
}

class ColorsNaturaCo extends ColorsNaturaEco {
  ColorsNaturaCo(DesignSystem naturaCoDS);

  Color get background => Colors.red;

  Color get icons => Colors.black;
  Color get navigationAppBarButton => Colors.white;
  Color get appBarBackground => Colors.black;
  Color get appBarBottomline => Colors.grey.shade700;
  Color get shortcutBackground => Colors.black;
  Color get appBarText => Colors.black;
  Color get shortcutIcon => Colors.white;
  Color get appBarBrand => Colors.white;
  Color get appBarButton => Colors.white;
  Color get bottomBarSelectedIcon => Colors.black;
  Color get bottomBarUnselectedIcon => Colors.white;
  Color get drawerheaderText => Colors.white;
}

class ColorsAvon extends ColorsNaturaEco {
  ColorsAvon(AvonDS avonDS);

  Color get background => hex("F3F3F3");
  Color get icons => Colors.purple.shade700;
  Color get navigationAppBarButton => Colors.purple.shade700;

  /* App Bar */
  Color get appBarBackground => Colors.white;
  Color get appBarBottomline => Colors.grey.shade700;
  Color get appBarBrand => Colors.white;
  Color get appBarText => Colors.purple.shade900;
  Color get appBarButton => Colors.black;
  Color get bottomBarSelectedIcon => Colors.purple;
  Color get bottomBarUnselectedIcon => Colors.purple.shade100;

  /* ScrollGlow */
  Color get scrollGlow => Colors.purple.shade300;

  /* Shortcut */
  Color get shortcutBackground => hex("7E29C5");
  Color get shortcutIcon => Colors.white;

  /* App Drawer */
  Color get drawerheaderBackground => Colors.purple.shade900;
  Color get drawerheaderText => Colors.white;

  /*Buttons*/
  Color get buttonDarkText => Colors.white;
  Color get buttonText => Colors.purple.shade900;
}

class ColorsTheBodyShop extends ColorsNaturaEco {
  ColorsTheBodyShop(TheBodyShopDS theBodyShopDS);

  Color get background => Colors.white;

  Color get icons => Colors.green.shade700;
  Color get navigationAppBarButton => Colors.red;

  Color get appBarBackground => Colors.green.shade900;
  Color get appBarBottomline => Colors.black;
  Color get shortcutBackground => Colors.green.shade700;
  Color get shortcutIcon => Colors.white;
  Color get appBarText => Colors.white;
  Color get appBarBrand => Colors.white;
  Color get appBarButton => Colors.white;
  Color get bottomBarSelectedIcon => Colors.green.shade100;
  Color get bottomBarUnselectedIcon => Colors.grey.shade500;

  Color get drawerheaderText => Colors.white;
  Color get drawerheaderBackground => Colors.green.shade900;

  /* ScrollGlow */
  Color get scrollGlow => Colors.green.shade300;

  /*Buttons*/
  Color get buttonDarkText => Colors.white;
  Color get buttonText => Colors.green.shade900;
}

class ColorsAesop extends ColorsNaturaEco {
  ColorsAesop(AesopDS aesopDS);

  Color get background => Colors.red;

  Color get icons => Colors.green.shade700;
  Color get navigationAppBarButton => Colors.green;
  Color get appBarText => Colors.black;
  Color get appBarBackground => Colors.black54;
  Color get appBarBottomline => Colors.grey.shade700;
  Color get shortcutBackground => Colors.black;
  Color get shortcutIcon => Colors.white;
  Color get appBarBrand => Colors.white;
  Color get appBarButton => Colors.white;
  Color get bottomBarSelectedIcon => Colors.black;
  Color get bottomBarUnselectedIcon => Colors.white;
  Color get drawerheaderText => Colors.white;
}
