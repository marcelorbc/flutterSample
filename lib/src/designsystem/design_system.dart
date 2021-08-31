import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:gxp/src/designsystem/brand_logos.dart';
import 'package:gxp/src/designsystem/colors_naturaeco.dart';
import 'package:gxp/src/designsystem/icons.dart';
import 'package:gxp/src/designsystem/styles.dart';

abstract class DesignSystem {
  ColorsNaturaEco getColors();
  Styles getStyles();

  IconsNaturaEco getIcons() {
    return IconsNaturaEco();
  }

  BrandLogos getBrands();

  static DesignSystem flavors(String brand, bool disableDarkMode, bool forceDarkMode) {
    var brightness = SchedulerBinding.instance!.window.platformBrightness;
    bool isDarkMode = forceDarkMode ? true : !disableDarkMode && brightness == Brightness.dark;

    var flavors = {
      "none": NaturaCoDS(),
      "natura": NaturaDS(),
      "avon": AvonDS(),
      "aesop": AesopDS(),
      "tbs": TheBodyShopDS(),
    };

    var flavorsDark = {
      "none": NaturaCoDS(),
      "natura": NaturaDSDark(),
      "avon": AvonDS(),
      "aesop": AesopDS(),
      "tbs": TheBodyShopDS(),
    };

    return isDarkMode ? flavorsDark[brand]! : flavors[brand]!;
  }

  bool isNaturaCo() => false;
  bool isNatura() => false;
  bool isAvon() => false;
  bool isAesop() => false;
  bool isTheBodyShop() => false;
}

class NaturaCoDS extends DesignSystem {
  @override
  BrandLogos getBrands() {
    return NaturaBrandLogos(this);
  }

  @override
  ColorsNaturaEco getColors() {
    return ColorsNaturaCo(this);
  }

  @override
  Styles getStyles() {
    return StylesNaturaCo(this);
  }

  bool isNaturaCo() => true;
}

class NaturaDS extends DesignSystem {
  @override
  BrandLogos getBrands() {
    return NaturaBrandLogos(this);
  }

  @override
  ColorsNaturaEco getColors() {
    return ColorsNatura(this);
  }

  @override
  Styles getStyles() {
    return StylesNatura(this);
  }

  bool isNatura() => true;
}

class NaturaDSDark extends DesignSystem {
  @override
  BrandLogos getBrands() {
    return NaturaBrandLogosDark(this);
  }

  @override
  ColorsNaturaEco getColors() {
    return ColorsNaturaDark(this);
  }

  @override
  Styles getStyles() {
    return StylesNaturaDark(this);
  }

  bool isNatura() => true;
}

class AvonDS extends DesignSystem {
  @override
  BrandLogos getBrands() {
    return AvonBrandLogos(this);
  }

  @override
  ColorsNaturaEco getColors() {
    return ColorsAvon(this);
  }

  @override
  Styles getStyles() {
    return StylesAvon(this);
  }

  bool isAvon() => true;
}

class TheBodyShopDS extends DesignSystem {
  @override
  BrandLogos getBrands() {
    return TheBodyShopBrandLogos(this);
  }

  @override
  ColorsNaturaEco getColors() {
    return ColorsTheBodyShop(this);
  }

  @override
  Styles getStyles() {
    return StylesTheBodyShop(this);
  }

  bool isTheBodyShop() => true;
}

class AesopDS extends DesignSystem {
  @override
  BrandLogos getBrands() {
    return AesopBrandLogos(this);
  }

  @override
  ColorsNaturaEco getColors() {
    return ColorsAesop(this);
  }

  @override
  Styles getStyles() {
    return StylesAesop(this);
  }

  bool isAesop() => true;
}
