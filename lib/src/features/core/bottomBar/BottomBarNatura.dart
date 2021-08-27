import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gxp/src/helpers/NatDSIcons.dart';
import 'package:gxp/src/helpers/NavigatorNatura.dart';
import 'package:page_transition/page_transition.dart';

class BottomBarNatura extends StatefulWidget {
  final int currentIndex;

  BottomBarNatura({required this.currentIndex});

  @override
  State<StatefulWidget> createState() => _BottomBarNaturaState();
}

class _BottomBarNaturaState extends State<BottomBarNatura> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black87,
          ),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: colorScheme.surface,
        iconSize: 175,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.orange.shade300,
        selectedLabelStyle: textTheme.caption,
        unselectedLabelStyle: textTheme.caption,
        enableFeedback: true,
        currentIndex: widget.currentIndex,
        onTap: (value) {
          if (value == widget.currentIndex) {
            return;
          }
          if (value == 0) {
            NavigatorNatura.pushHome(context);
          }
          if (value == 1) {
            NavigatorNatura.pushOrder(context);
          }
          if (value == 2) {
            NavigatorNatura.pushProfile(context);
          }
          if (value == 4) {
            NavigatorNatura.pushMenu(context, type: PageTransitionType.bottomToTop, duration: Duration(milliseconds: 200));
          }
          if (value == 5) {
            NavigatorNatura.pushLogin(context);
          }
        },
        items: [
          BottomNavigationBarItem(label: 'Inicio', icon: NatDSIcons.outlinedNavigationHome(color: Colors.grey.shade400, width: 30, height: 30)),
          BottomNavigationBarItem(label: 'Mis Pedidos', icon: NatDSIcons.outlinedActionNewrequest(color: Colors.grey.shade400, width: 30, height: 30)),
          BottomNavigationBarItem(label: 'Perfil', icon: NatDSIcons.outlinedSocialPerson(color: Colors.grey.shade400, width: 30, height: 30)),
          BottomNavigationBarItem(label: 'Mis Posteos', icon: NatDSIcons.outlinedContentDivulgation(color: Colors.grey.shade400, width: 30, height: 30)),
          BottomNavigationBarItem(label: 'Menu', icon: NatDSIcons.outlinedNavigationMenu(color: Colors.grey.shade400, width: 30, height: 30))
        ],
      ),
    );
  }
}
