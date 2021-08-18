import 'package:flutter/material.dart';
import 'package:natura_on_track/src/helpers/DialogNatura.dart';
import 'package:natura_on_track/src/helpers/Globals.dart';
import 'package:natura_on_track/src/helpers/NatDSIcons.dart';
import 'package:natura_on_track/src/helpers/NavigatorNatura.dart';

class MenuTiles extends StatefulWidget {
  const MenuTiles({Key? key, required this.generateListView}) : super(key: key);
  final bool generateListView;

  @override
  _MenuTilesState createState() => _MenuTilesState();
}

class _MenuTilesState extends State<MenuTiles> {
  @override
  Widget build(BuildContext context) {
    var menus = [
      {"id": 1, "icon": NatDSIcons.outlinedNavigationHome(), "text": "Home", "route": "/home"},
      {"id": 2, "icon": NatDSIcons.outlinedSocialPerson(), "text": "Perfil", "route": "/profile"},
      {"id": 3, "icon": NatDSIcons.outlinedContentHealth(), "text": "Saude e bem estar", "route": "/"},
      {"id": 4, "icon": NatDSIcons.outlinedActionHelp(), "text": "Ajuda", "route": "/"},
      {"id": 5, "icon": NatDSIcons.outlinedActionAdd(), "text": "Novo Pedido", "route": "/"},
      {"id": 99, "icon": NatDSIcons.outlinedNavigationExit(), "text": "Sair", "route": "/"},
    ];

    var onTapActions = (element, index) async {
      if (element['id'] == 99) {
        await DialogNatura.showDialogNatura(
          context: context,
          title: 'Tem certeza que deseja fechar sua sessão?',
          cancel: () => Navigator.of(context).pop(false),
          confirm: () => NavigatorNatura.pushLogin(context),
        );
      } else if (element['id'] == 1) {
        NavigatorNatura.pushHome(context);
      } else {
        NavigatorNatura.push(route: element['route'], context: context);
      }
      Scaffold.of(context).openEndDrawer();
    };

    if (!widget.generateListView) {
      var result = [];

      menus.forEach((element) {
        result.add(Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
            child: ListTile(
              leading: element['icon'] as Widget,
              tileColor: Colors.white,
              onTap: () => onTapActions(element, menus.indexOf(element)),
              title: Text(element['text'].toString()),
            )));
      });

      return Column(children: result.cast<Widget>());
    } else {
      return ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: menus.length,
          itemBuilder: (BuildContext context, int index) {
            Widget? icon = menus[index]['icon'] as Widget;

            return Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
              child: ListTile(
                leading: icon,
                tileColor: Colors.white,
                title: Text(
                  menus[index]['text'].toString(),
                ),
                onTap: () => onTapActions(menus[index], index),
              ),
            );
          });
    }
  }
}
