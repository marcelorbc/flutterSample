import 'package:flutter/material.dart';
import 'package:gxp/src/features/commons/commons.dart';
import 'package:gxp/src/features/core/menu/Menu.dart';
import 'package:gxp/src/helpers/LocalStorage.dart';
import 'menu_tiles_widget.dart';

class MenuDrawer extends StatelessWidget {
  final BusinessUnit businessUnit;
  final LoadMenu loadMenu;

  MenuDrawer(this.businessUnit, this.loadMenu);

  @override
  Widget build(BuildContext context) {
    var authResponse = LocalStorage.getAuthResponse();

    return Container(
      color: Colors.red,
      child: Drawer(
        child: SafeArea(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange.shade900,
                ),
                accountName: Text(authResponse == null ? 'Sem nome' : authResponse.name),
                accountEmail: Text(authResponse == null ? 'Sem nome' : authResponse.email),
                currentAccountPicture: CircleAvatar(
                  radius: 15.0,
                  backgroundImage: authResponse != null && authResponse.image.isNotEmpty ? NetworkImage(authResponse.image) : null,
                  backgroundColor: Colors.white,
                  child: authResponse == null || authResponse.image.isEmpty ? Text(authResponse!.name.substring(0, 1)) : null,
                ),
              ),
              MenuTilesWidget(
                businessUnit: businessUnit,
                loadMenu: loadMenu,
                generateListView: false,
              )
            ],
          ),
        ),
      ),
    );
  }
}
