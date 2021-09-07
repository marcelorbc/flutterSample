import 'package:flutter/material.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/helpers/nativigator.dart';

class ShortcutsNatura extends StatelessWidget {
  final DesignSystem designSystem;
  final Natvigator natvigator;
  final double opacityLevel;

  const ShortcutsNatura({Key? key, required this.natvigator, required this.designSystem, required this.opacityLevel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var shortcut = (text, icon, onTap) => Column(
          children: [
            ElevatedButton(
              onPressed: onTap,
              child: icon,
              style: designSystem.getStyles().shortcutStyle,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Text(
                text,
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
              ),
            )
          ],
        );

    var shortcutsContainer = opacityLevel <= 0
        ? Container()
        : Opacity(
            opacity: opacityLevel,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    shortcut("Novo Pedido", designSystem.getIcons().outlinedActionNewrequest(color: designSystem.getColors().shortcutIcon), () => natvigator.pushOrder(context)),
                    shortcut("Divulgação", designSystem.getIcons().outlinedProductChildish(color: designSystem.getColors().shortcutIcon), () => natvigator.pushOrder(context)),
                    shortcut("Perfil", designSystem.getIcons().outlinedSocialPerson(color: designSystem.getColors().shortcutIcon), () => natvigator.pushProfile(context)),
                    shortcut("Entretenimento", designSystem.getIcons().outlinedContentExchangereports(color: designSystem.getColors().shortcutIcon), () => natvigator.pushOrder(context)),
                  ],
                ),
              ),
            ),
          );

    return shortcutsContainer;
  }
}
