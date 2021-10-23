import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gxp/src/designsystem/design_system.dart';

abstract class BrandLogos {
  Widget loadLogo(String name, [Color? color, double? width, double? heigth]) {
    final String assetName = './lib/assets/logo/svg/$name.svg';
    final Widget image = SvgPicture.asset(
      assetName,
      width: width,
      height: heigth,
      color: color,
      semanticsLabel: "Logo tipo",
    );
    return image;
  }

  Widget loadLogoPng(String name, [Color? color, double? width, double? heigth]) {
    final String assetName = './lib/assets/logo/$name.png';
    final Widget image = Image(
      image: AssetImage(assetName),
      width: width,
      height: heigth,
      color: color,
    );
    return image;
  }

  Widget aCustom({Color? color, double? width, double? height});
  Widget aOfficial({Color? color, double? width, double? height});
  Widget bCustom({Color? color, double? width, double? height});
  Widget bOfficial({Color? color, double? width, double? height});
}

class NaturaBrandLogos extends BrandLogos {
  NaturaBrandLogos(DesignSystem naturaCoDS);

  @override
  Widget aCustom({Color? color, double? width, double? height}) {
    return loadLogo('natura-a-custom', color, width, height);
  }

  @override
  Widget aOfficial({Color? color, double? width, double? height}) {
    return loadLogoPng('1.5x/natura-a-official', color, width, height);
  }

  @override
  Widget bCustom({Color? color, double? width, double? height}) {
    return loadLogo('natura-a-custom', color, width, height);
  }

  @override
  Widget bOfficial({Color? color, double? width, double? height}) {
    return loadLogo('natura-a-official', color, width, height);
  }
}

class NaturaBrandLogosDark extends BrandLogos {
  NaturaBrandLogosDark(NaturaDSDark naturaDSDark);

  @override
  Widget aCustom({Color? color, double? width, double? height}) {
    return loadLogo('natura-a-custom', color, width, height);
  }

  @override
  Widget aOfficial({Color? color, double? width, double? height}) {
    return loadLogoPng('1.5x/natura-a-official-dark', color, width, height);
  }

  @override
  Widget bCustom({Color? color, double? width, double? height}) {
    return loadLogo('natura-a-custom', color, width, height);
  }

  @override
  Widget bOfficial({Color? color, double? width, double? height}) {
    return loadLogo('natura-a-official-dark', color, width, height);
  }
}

class TheBodyShopBrandLogos extends BrandLogos {
  TheBodyShopBrandLogos(TheBodyShopDS theBodyShopDS);

  @override
  Widget aCustom({Color? color, double? width, double? height}) {
    return loadLogo('thebodyshop-a-custom', color, width, height);
  }

  @override
  Widget aOfficial({Color? color, double? width, double? height}) {
    return loadLogo('thebodyshop-a-official', color, width, height);
  }

  @override
  Widget bCustom({Color? color, double? width, double? height}) {
    return loadLogo('thebodyshop-a-custom', color, width, height);
  }

  @override
  Widget bOfficial({Color? color, double? width, double? height}) {
    return loadLogo('thebodyshop-a-official', color, width, height);
  }
}

class AvonBrandLogos extends BrandLogos {
  AvonBrandLogos(AvonDS avonDS);

  @override
  Widget aCustom({Color? color, double? width, double? height}) {
    return loadLogo('avon-a-custom', color, width, height);
  }

  @override
  Widget aOfficial({Color? color, double? width, double? height}) {
    return loadLogoPng('avon-a-official', color, width, height);
  }

  @override
  Widget bCustom({Color? color, double? width, double? height}) {
    return loadLogo('avon-a-custom', color, width, height);
  }

  @override
  Widget bOfficial({Color? color, double? width, double? height}) {
    return loadLogo('avon-a-official', color, width, height);
  }
}

class AesopBrandLogos extends BrandLogos {
  AesopBrandLogos(AesopDS aesopDS);

  @override
  Widget aCustom({Color? color, double? width, double? height}) {
    return loadLogo('aesop-a-custom', color, width, height);
  }

  @override
  Widget aOfficial({Color? color, double? width, double? height}) {
    return loadLogo('aesop-a-official', color, width, height);
  }

  @override
  Widget bCustom({Color? color, double? width, double? height}) {
    return loadLogo('aesop-a-custom', color, width, height);
  }

  @override
  Widget bOfficial({Color? color, double? width, double? height}) {
    return loadLogo('aesop-a-official', color, width, height);
  }
}
