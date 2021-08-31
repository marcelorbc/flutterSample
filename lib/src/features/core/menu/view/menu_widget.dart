import 'package:flutter/material.dart';
import 'package:gxp/src/components/templates/widgets_core/stateful_widget_nat.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/features/commons/commons.dart';
import 'package:gxp/src/features/core/menu/menu.dart';
import 'package:gxp/src/helpers/nativigator.dart';
import 'menu_tiles_widget.dart';

class MenuWidget extends StatefullWidgetNatura {
  MenuWidget(this.businessUnit, this.loadMenu, {required this.designSystem, required this.natvigator}) : super(designSystem: designSystem);

  final BusinessUnit businessUnit;
  final LoadMenu loadMenu;
  final DesignSystem designSystem;
  final Natvigator natvigator;

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: widget.designSystem.getColors().navigationAppBarButton, //change your color here
        ),
        title: Text(
          "Menu",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontFamily: "Roboto"),
        ),
        backgroundColor: Colors.grey.shade100,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              child: MenuTilesWidget(
                natvigator: widget.natvigator,
                designSystem: widget.designSystem,
                businessUnit: widget.businessUnit,
                generateListView: true,
                loadMenu: widget.loadMenu,
              ),
            )
          ],
        ),
      ),
    );
  }
}
