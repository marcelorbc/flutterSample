import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:natura_on_track/src/components/core/CardTemplateNatura.dart';
import 'package:natura_on_track/src/components/templates/body/BodyWithShortcuts.dart';
import 'package:natura_on_track/src/components/templates/pages/PageWithTopAndBottomBars.dart';
import 'package:natura_on_track/src/features/core/menu/MenuDrawer.dart';
import 'package:natura_on_track/src/helpers/DialogNatura.dart';
import 'package:natura_on_track/src/helpers/LocalStorage.dart';

class HomeSimple extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeSimpleState();
}

class _HomeSimpleState extends State<HomeSimple> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    var localStorage = new LocalStorage();
    var pais = localStorage.getValueString('country');

    return PageWithTopAndBottomBars(
      showButtonBar: true,
      bottomSelectedIndex: 0,
      drawer: MenuDrawer(),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () async => await DialogNatura.showDialogNatura(
              context: context,
              title: 'Tem certeza que deseja fechar sua sessão?',
              cancel: () => Navigator.of(context).pop(false),
              confirm: () => Navigator.of(context).popAndPushNamed("/"),
            ),
            child: Icon(Icons.logout_outlined, size: 16.0, color: Colors.grey.shade500),
          ),
        ),
      ],
      child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification t) {
          setState(() {
            if (1 - (t.metrics.pixels / 100) < 0) {
              opacityLevel = 1;
            } else if (1 - (t.metrics.pixels / 100) <= 0.8) {
              opacityLevel = 0.2;
            } else if (1 - (t.metrics.pixels / 100) <= 0.6) {
              opacityLevel = 0.1;
            } else if (1 - (t.metrics.pixels / 100) <= 0.4) {
              opacityLevel = 0.1;
            } else {
              opacityLevel = (1 - (t.metrics.pixels / 100));
            }
          });
          return true;
        },
        child: BodyWithShortcuts(
          child: Column(
            children: [
              CardTemplateNatura(id: 1, title: "Natura e você !", subTitle: "Seja bem vindo.", image: './lib/assets/images/flags/${pais!.toLowerCase()}.png', text: "neste aplicativo você irá conseguir bla bla bla bla bla bla bla bla bla bla bla bla "),
              CardTemplateNatura(id: 2, title: "Natura e você !", subTitle: "Seja bem vindo.", image: './lib/assets/images/flags/${pais.toLowerCase()}.png', text: "neste aplicativo você irá conseguir bla bla bla bla bla bla bla bla bla bla bla bla "),
              CardTemplateNatura(id: 3, title: "Natura e você !", subTitle: "Seja bem vindo.", image: './lib/assets/images/flags/${pais.toLowerCase()}.png', text: "neste aplicativo você irá conseguir bla bla bla bla bla bla bla bla bla bla bla bla "),
              CardTemplateNatura(id: 4, title: "Natura e você !", subTitle: "Seja bem vindo.", image: './lib/assets/images/flags/${pais.toLowerCase()}.png', text: "neste aplicativo você irá conseguir bla bla bla bla bla bla bla bla bla bla bla bla "),
              CardTemplateNatura(id: 5, title: "Natura e você !", subTitle: "Seja bem vindo.", image: './lib/assets/images/flags/${pais.toLowerCase()}.png', text: "neste aplicativo você irá conseguir bla bla bla bla bla bla bla bla bla bla bla bla "),
              CardTemplateNatura(id: 6, title: "Natura e você !", subTitle: "Seja bem vindo.", image: './lib/assets/images/flags/${pais.toLowerCase()}.png', text: "neste aplicativo você irá conseguir bla bla bla bla bla bla bla bla bla bla bla bla "),
              CardTemplateNatura(id: 8, title: "Natura e você !", subTitle: "Seja bem vindo.", image: './lib/assets/images/flags/${pais.toLowerCase()}.png', text: "neste aplicativo você irá conseguir bla bla bla bla bla bla bla bla bla bla bla bla "),
              CardTemplateNatura(id: 9, title: "Natura e você !", subTitle: "Seja bem vindo.", image: './lib/assets/images/flags/${pais.toLowerCase()}.png', text: "neste aplicativo você irá conseguir bla bla bla bla bla bla bla bla bla bla bla bla "),
              CardTemplateNatura(id: 10, title: "Natura e você !", subTitle: "Seja bem vindo.", image: './lib/assets/images/flags/${pais.toLowerCase()}.png', text: "neste aplicativo você irá conseguir bla bla bla bla bla bla bla bla bla bla bla bla "),
            ],
          ),
        ),
      ),
    );
  }
}
