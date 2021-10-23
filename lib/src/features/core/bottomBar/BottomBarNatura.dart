import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gxp/src/components/templates/widgets_core/stateful_widget_nat.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/helpers/local_storage.dart';
import 'package:gxp/src/helpers/nativigator.dart';
import 'package:page_transition/page_transition.dart';

class BottomBarNatura extends StatefullWidgetNatura {
  final int currentIndex;
  final Natvigator natvigator;

  BottomBarNatura(DesignSystem designSystem, {required this.currentIndex, required this.natvigator}) : super(designSystem: designSystem);

  @override
  State<StatefulWidget> createState() => _BottomBarNaturaState();
}

class _BottomBarNaturaState extends State<BottomBarNatura> {
  Color _getColor(int index) => widget.currentIndex == index ? widget.designSystem.getColors().bottomBarSelectedIcon : widget.designSystem.getColors().bottomBarUnselectedIcon;

  @override
  Widget build(BuildContext context) {
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
        backgroundColor: widget.designSystem.getColors().appBarBackground,
        selectedItemColor: widget.designSystem.getColors().bottomBarSelectedIcon,
        selectedLabelStyle: TextStyle(
          color: Colors.red,
        ),
        unselectedLabelStyle: TextStyle(color: Colors.red),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        enableFeedback: true,
        currentIndex: widget.currentIndex,
        onTap: (value) {
          if (value == widget.currentIndex) {
            return;
          }
          if (value == 0) {
            widget.natvigator.pushHome(context);
          }
          if (value == 1) {
            widget.natvigator.pushOrder(context);
          }
          if (value == 2) {
            widget.natvigator.pushProfile(context);
          }
          if (value == 4) {
            widget.natvigator.pushMenu(context, LocalStorage.getBusinessUnit()!, type: PageTransitionType.bottomToTop, duration: Duration(milliseconds: 200));
          }
          if (value == 5) {
            widget.natvigator.pushLogin(context);
          }
        },
        items: [
          BottomNavigationBarItem(label: 'Inicio', icon: widget.designSystem.getIcons().outlinedNavigationHome(color: _getColor(0), width: 30, height: 30)),
          BottomNavigationBarItem(label: 'Mis Pedidos', icon: widget.designSystem.getIcons().outlinedActionNewrequest(color: _getColor(1), width: 30, height: 30)),
          BottomNavigationBarItem(label: 'Perfil', icon: widget.designSystem.getIcons().outlinedSocialPerson(color: _getColor(2), width: 30, height: 30)),
          BottomNavigationBarItem(label: 'Mis Posteos', icon: widget.designSystem.getIcons().outlinedContentDivulgation(color: _getColor(3), width: 30, height: 30)),
          BottomNavigationBarItem(label: 'Menu', icon: widget.designSystem.getIcons().outlinedNavigationMenu(color: _getColor(4), width: 30, height: 30))
        ],
      ),
    );
  }
}
