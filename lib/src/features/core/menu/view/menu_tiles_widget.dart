import 'package:dartz/dartz.dart' as dartz;
import 'package:flutter/material.dart';
import 'package:gxp/src/components/templates/widgets_core/stateful_widget_nat.dart';
import 'package:gxp/src/designsystem/design_system.dart';
import 'package:gxp/src/features/commons/commons.dart';
import 'package:gxp/src/features/core/menu/Menu.dart';
import 'package:gxp/src/helpers/dialog_natura.dart';
import 'package:gxp/src/helpers/nativigator.dart';

class MenuTilesWidget extends StatefullWidgetNatura {
  MenuTilesWidget({required this.generateListView, required this.loadMenu, required this.businessUnit, required this.designSystem, required this.natvigator}) : super(designSystem: designSystem);
  final bool generateListView;
  final LoadMenu loadMenu;
  final BusinessUnit businessUnit;
  final DesignSystem designSystem;
  final Natvigator natvigator;

  _MenuTilesWidgetState createState() => _MenuTilesWidgetState();
}

class _MenuTilesWidgetState extends State<MenuTilesWidget> {
  bool menuLoaded = false;
  Menu? menu;

  void onTapActions(context, MenuItem element, index) async {
    if (element.id == 99) {
      await DialogNatura(widget.designSystem, context).showDialogExitApp(() => widget.natvigator.pushLogin(context));
    } else if (element.id == 1) {
      widget.natvigator.pushHome(context);
    } else if (element.id == 2) {
      widget.natvigator.pushProfile(context);
    } else {
      //widget.natvigator.push(route: element.route context: context);
    }
    if (Scaffold.of(context).isDrawerOpen) {
      Scaffold.of(context).openEndDrawer();
    }
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
            icon = widget.designSystem.getIcons().load(menuItem.icon!, widget.designSystem.getColors().icons);
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
      var result = [];
      menu!.me.children!.forEach((MenuItem element) {
        if (element.icon == null) {
          result.add(Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
              child: ListTile(
                tileColor: Colors.white,
                onTap: () => onTapActions(context, element, menu!.me.children!.indexOf(element)),
                title: Text(element.label),
              )));
        } else {
          result.add(Container(
              decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
              child: ListTile(
                leading: widget.designSystem.getIcons().load(element.icon!, widget.designSystem.getColors().icons),
                tileColor: Colors.white,
                onTap: () => onTapActions(context, element, menu!.me.children!.indexOf(element)),
                title: Text(element.label),
              )));
        }
      });

      return Column(children: result.cast<Widget>());
    }
  }
}
