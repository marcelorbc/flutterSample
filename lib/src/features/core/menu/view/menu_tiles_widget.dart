import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:gxp/src/features/commons/commons.dart';
import 'package:gxp/src/features/core/menu/Menu.dart';
import 'package:gxp/src/helpers/DialogNatura.dart';
import 'package:gxp/src/helpers/NatDSIcons.dart';
import 'package:gxp/src/helpers/NavigatorNatura.dart';

class MenuTilesWidget extends StatefulWidget {
  const MenuTilesWidget({required this.generateListView, required this.loadMenu, required this.businessUnit});
  final bool generateListView;
  final LoadMenu loadMenu;
  final BusinessUnit businessUnit;

  _MenuTilesWidgetState createState() => _MenuTilesWidgetState();
}

class _MenuTilesWidgetState extends State<MenuTilesWidget> {
  bool menuLoaded = false;
  Menu? menu;

  void onTapActions(context, element, index) async {
    if (element['id'] == 99) {
      await DialogNatura.showDialogNatura(
        context: context,
        title: 'Tem certeza que deseja fechar sua sessão?',
        cancel: () => Navigator.of(context).pop(false),
        confirm: () => NavigatorNatura.pushLogin(context),
      );
    } else if (element['id'] == 1) {
      NavigatorNatura.pushHome(context);
    } else if (element['id'] == 2) {
      NavigatorNatura.pushProfile(context);
    } else {
      NavigatorNatura.push(route: element['route'], context: context);
    }
    Scaffold.of(context).openEndDrawer();
  }

  @override
  void initState() {
    widget.loadMenu(widget.businessUnit).then((result) {
      final value = result.fold(dartz.id, dartz.id);
      if (result.isRight()) {
        setState(() {
          menu = value as Menu;
          menuLoaded = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!menuLoaded) {
      return Container(child: Text("Menu carregando ..."));
    } else if (menuLoaded && widget.generateListView) {
      return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: menu!.me.children!.length,
        itemBuilder: (BuildContext context, int index) {
          MenuItem menuItem = menu!.me.children![index];

          Widget? icon;
          if (menuItem.icon != null) {
            icon = NatDSIcons.load(menuItem.icon!, Colors.orange.shade700);
          } else {
            icon = null;
          }

          return Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
            child: ListTile(
              leading: icon,
              tileColor: Colors.white,
              title: Text(
                menuItem.label,
              ),
              onTap: () => onTapActions(context, menuItem, index),
            ),
          );
        },
      );
    } else {
      return Container(child: Text("Menu error"));
    }
/*
    if (!widget.generateListView) {
      var result = [];

      menus.forEach((element) {
        result.add(Container(
            decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
            child: ListTile(
              leading: element['icon'] as Widget,
              tileColor: Colors.white,
              onTap: () => onTapActions(context, element, menus.indexOf(element)),
              title: Text(element['text'].toString()),
            )));
      });

      return Column(children: result.cast<Widget>());
    } else {
      return 
    }*/
  }
}
