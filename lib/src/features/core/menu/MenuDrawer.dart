import 'package:flutter/material.dart';
import 'package:natura_on_track/src/features/core/menu/MenuTiles.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              '',
              style: TextStyle(color: Colors.black87, fontSize: 25),
            ),
            decoration: BoxDecoration(color: Colors.orange.shade50, image: DecorationImage(fit: BoxFit.contain, image: AssetImage('./lib/assets/images/natura-logo.png'))),
          ),
          MenuTiles(
            generateListView: false,
          )
        ],
      ),
    );
  }
}
