import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:natura_on_track/src/helpers/Globals.dart';
import 'package:natura_on_track/src/helpers/NavigatorNatura.dart';
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
        selectedItemColor: Colors.orange.shade300,
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
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
            NavigatorNatura.pushMenu(context, type: PageTransitionType.bottomToTop, duration: Duration(milliseconds: 300));
          }
          if (value == 5) {
            NavigatorNatura.pushLogin(context);
          }
        },
        items: [
          BottomNavigationBarItem(
            label: 'Inicio',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Mis Pedidos',
            icon: Icon(Icons.all_inbox_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Perfil',
            icon: Icon(Icons.account_circle_sharp),
          ),
          BottomNavigationBarItem(
            label: 'Mis Posteos',
            icon: Icon(Icons.photo_library),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.list),
          )
        ],
      ),
    );
  }
}
