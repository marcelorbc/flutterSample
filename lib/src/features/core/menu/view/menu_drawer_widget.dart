import 'package:flutter/material.dart';
import 'package:gxp/src/components/templates/widgets_core/stateless_widget_nat.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/features/commons/commons.dart';
import 'package:gxp/src/features/core/menu/Menu.dart';
import 'package:gxp/src/helpers/local_storage.dart';
import 'package:gxp/src/helpers/nativigator.dart';
import 'menu_tiles_widget.dart';

class MenuDrawer extends StatelessWidgetNatura {
  final Natvigator natvigator;
  final BusinessUnit businessUnit;
  final LoadMenu loadMenu;
  final DesignSystem designSystem;

  MenuDrawer(this.businessUnit, this.loadMenu, {required this.designSystem, required this.natvigator}) : super(designSystem: designSystem);

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
                  color: designSystem.getColors().drawerheaderBackground,
                ),
                accountName: Text(
                  authResponse == null ? 'Sem nome' : authResponse.name,
                  style: TextStyle(color: designSystem.getColors().drawerheaderText),
                ),
                accountEmail: Text(
                  authResponse == null ? 'Sem nome' : authResponse.email,
                  style: TextStyle(color: designSystem.getColors().drawerheaderText),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 15.0,
                  backgroundImage: authResponse != null && authResponse.image.isNotEmpty ? NetworkImage(authResponse.image) : null,
                  backgroundColor: Colors.white,
                  child: authResponse == null || authResponse.image.isEmpty ? Text(authResponse!.name.substring(0, 1)) : null,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: MenuTilesWidget(
                  natvigator: natvigator,
                  designSystem: designSystem,
                  businessUnit: businessUnit,
                  loadMenu: loadMenu,
                  generateListView: false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
