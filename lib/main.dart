import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:gxp/src/designsystem/design_system.dart';
import 'package:gxp/src/helpers/app_lifecycle_reactor.dart';
import 'package:gxp/src/helpers/nativigator.dart';
import 'src/features/commons/entities/config.dart';
import 'src/helpers/globals.dart';

void main() async {
  /*Carrega as variaveis de ambiente */
  await dotenv.load(fileName: ".env");
  var config = Config(
    flavor: dotenv.env['FLAVOR']!,
    isDisabledDarkMode: (dotenv.env['DISABLED_DARK_MODE'] != null && dotenv.env['DISABLED_DARK_MODE'] == 'true' ? true : false),
    isForceDarkMode: (dotenv.env['FORCE_DARK_MODE'] != null && dotenv.env['FORCE_DARK_MODE'] == 'true' ? true : false),
  );

  /* Inicia as dependencias do widgets*/
  WidgetsFlutterBinding.ensureInitialized();
  await Globals.init();

  var designSystem = DesignSystem.flavors(config.flavor, config.isDisabledDarkMode, config.isForceDarkMode);
  var natvigator = Natvigator.flavors(config.flavor, designSystem, config);

  runApp(AppLifecycleReactor(designSystem: designSystem, natvigator: natvigator, config: config));
}
