import 'package:flutter/material.dart';
import 'package:gxp/src/designsystem/ds.dart';
import 'package:gxp/src/features/commons/entities/commons_entities.dart';
import 'package:gxp/src/features/commons/entities/config.dart';
import 'package:gxp/src/features/core/cards/CardArguments.dart';
import 'package:gxp/src/features/core/cards/CardDetail.dart';
import 'package:gxp/src/features/core/home/HomeSimple.dart';
import 'package:gxp/src/features/core/login/Login.dart';
import 'package:gxp/src/features/core/menu/menu.dart';
import 'package:gxp/src/features/core/menu/view/menu_widget.dart';
import 'package:gxp/src/features/desenvolvimento/profile/profile_page.dart';
import 'package:gxp/src/features/experienciaCompras/OrderWebView.dart';
import 'package:gxp/src/helpers/my_app.dart';
import 'package:page_transition/page_transition.dart';

abstract class Natvigator {
  DesignSystem designSystem;

  Natvigator(this.designSystem);

  static Natvigator flavors(String flavor, DesignSystem ds, Config config) {
    if (flavor == "natura" || flavor == "none") {
      return NatvigatorNatura(designSystem: ds);
    } else {
      return NatvigatorNatura(designSystem: ds);
    }
  }

  Widget initialRoute() {
    return Login(designSystem: designSystem, natvigator: this);
  }

  Widget root() {
    return MyApp(designSystem: designSystem, natvigator: this);
  }

  bool Function(Route<dynamic> route) removeUntilHome = (Route<dynamic> route) {
    PageTransition pageTransition = route as PageTransition;

    if (pageTransition.child.runtimeType == HomeSimple) {
      return true;
    }
    return false;
  };

  push({Widget? route, required BuildContext context, PageTransitionType? type, Duration? duration, PageTransition? transition, Object? arguments, bool? removeAllRoutes, bool Function(Route<dynamic> route)? removeUntil}) {
    //assert(transition == null && route == null);

    PageTransition? transitionAplly;

    if (transition != null) {
      transitionAplly = transition;
    } else if (transition == null && route != null) {
      transitionAplly = PageTransition(
        child: route,
        type: type == null ? PageTransitionType.rightToLeftWithFade : type,
        duration: duration == null ? Duration(milliseconds: 500) : duration,
      );
    }

    if (removeAllRoutes != null && removeAllRoutes) {
      Navigator.of(context).pushAndRemoveUntil(transitionAplly!, (route) => false);
    } else if (removeUntil != null) {
      Navigator.of(context).pushAndRemoveUntil(transitionAplly!, removeUntil);
    } else {
      Navigator.of(context).push(transitionAplly!);
    }
  }

  pushLogin(BuildContext context) {
    push(
      route: Login(designSystem: this.designSystem, natvigator: this),
      context: context,
      type: PageTransitionType.bottomToTop,
      duration: Duration(milliseconds: 700),
      removeAllRoutes: true,
    );
  }

  pushHome(BuildContext context) {
    push(
      route: HomeSimple(
        designSystem: designSystem,
        natvigator: this,
      ),
      context: context,
      type: PageTransitionType.fade,
      duration: Duration(milliseconds: 1),
      removeUntil: (Route<dynamic> route) {
        PageTransition pageTransition = route as PageTransition;

        if (pageTransition.child.runtimeType == Login) {
          return true;
        }
        return false;
      },
    );
  }

  pushHomeStart(BuildContext context) {
    push(
      context: context,
      transition: PageTransition(
        child: HomeSimple(
          designSystem: designSystem,
          natvigator: this,
        ),
        curve: Curves.linear,
        type: PageTransitionType.scale,
        alignment: Alignment.center,
        duration: Duration(milliseconds: 1000),
      ),
    );
  }

  pushMenu(BuildContext context, BusinessUnit bu, {PageTransitionType? type, Duration? duration}) {
    push(
      route: MenuWidget(bu, LoadMenuImpl(repository: MenuRepositoryHardCoded()), designSystem: designSystem, natvigator: this),
      context: context,
      type: type,
      duration: duration,
    );
  }

  pushOrder(BuildContext context) {
    push(
      route: OrderWebView(
        ds: designSystem,
        natvigator: this,
      ),
      context: context,
      removeUntil: removeUntilHome,
    );
  }

  pushProfile(BuildContext context) {
    push(
        route: ProfilePage(
          designSystem,
          natvigator: this,
        ),
        context: context,
        removeUntil: removeUntilHome);
  }

  pushCardDetail(BuildContext context, {required CardArguments arguments}) {
    push(
        context: context,
        transition: PageTransition(
          child: CardDetail(
            arguments: arguments,
            designSystem: designSystem,
            natvigator: this,
          ),
          type: PageTransitionType.fade,
          duration: Duration(milliseconds: 500),
        ));
  }
}

class NatvigatorNatura extends Natvigator {
  NatvigatorNatura({required DesignSystem designSystem}) : super(designSystem);
}
