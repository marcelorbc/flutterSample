import 'package:flutter/material.dart';
import 'package:gxp/src/features/commons/commons.dart';
import 'package:gxp/src/features/core/menu/menu.dart';
import 'menu_tiles_widget.dart';

class MenuWidget extends StatefulWidget {
  MenuWidget(this.businessUnit, this.loadMenu);

  final BusinessUnit businessUnit;
  final LoadMenu loadMenu;

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
          color: Colors.orange.shade300, //change your color here
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
