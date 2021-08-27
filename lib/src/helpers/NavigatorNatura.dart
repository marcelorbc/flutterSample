import 'package:flutter/material.dart';
import 'package:gxp/src/features/core/cards/CardArguments.dart';
import 'package:gxp/src/features/core/cards/CardDetail.dart';
import 'package:gxp/src/features/core/home/HomeSimple.dart';
import 'package:gxp/src/features/core/login/Login.dart';
import 'package:gxp/src/features/core/menu/menu.dart';
import 'package:gxp/src/features/desenvolvimento/profile/ProfilePage.dart';
import 'package:gxp/src/features/experienciaCompras/OrderWebView.dart';
import 'package:gxp/src/helpers/LocalStorage.dart';
import 'package:page_transition/page_transition.dart';

class NavigatorNatura {
  static Map<String, Widget Function(BuildContext, Object?)> routes = {
    '/': (context, arguments) => Login(),
    '/home': (context, arguments) => HomeSimple(),
    '/menu': (context, arguments) => MenuWidget(LocalStorage.getBusinessUnit()!, LoadMenuImpl(repository: MenuRepositoryHardCoded())),
    '/order': (context, arguments) => OrderWebView(),
    '/profile': (context, arguments) => ProfilePage(),
    '/cardDetail': (context, arguments) => CardDetail(arguments: arguments as CardArguments),
  };

  static final bool Function(Route<dynamic> route) removeUntilHome = (Route<dynamic> route) {
    PageTransition pageTransition = route as PageTransition;

    if (pageTransition.child.runtimeType == HomeSimple) {
      return true;
    }
    return false;
  };

  //static NavigatorNatura cleanToHome(BuildContext context) => Navigator.of(context).pushAndRemoveUntil('', (route) {});
  static pushLogin(BuildContext context) => push(route: '/', context: context, type: PageTransitionType.bottomToTop, duration: Duration(milliseconds: 700), removeAllRoutes: true);
  static pushHome(BuildContext context) => push(
        route: '/home',
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
  static pushHomeStart(BuildContext context) => push(
        route: '/home',
        context: context,
        transition: PageTransition(
          child: NavigatorNatura.routes['/home']!(context, null),
          curve: Curves.linear,
          type: PageTransitionType.scale,
          alignment: Alignment.center,
          duration: Duration(milliseconds: 1000),
        ),
      );
  static pushMenu(BuildContext context, {PageTransitionType? type, Duration? duration}) => push(route: '/menu', context: context, type: type, duration: duration);
  static pushOrder(BuildContext context) => push(route: '/order', context: context, removeUntil: removeUntilHome);
  static pushProfile(BuildContext context) => push(route: '/profile', context: context, removeUntil: removeUntilHome);
  static pushCardDetail(BuildContext context, {CardArguments? arguments}) => push(
      route: '/cardDetail',
      context: context,
      transition: PageTransition(
        child: NavigatorNatura.routes['/cardDetail']!(context, arguments),
        type: PageTransitionType.fade,
        duration: Duration(milliseconds: 500),
      ));

  static push({required String route, required BuildContext context, PageTransitionType? type, Duration? duration, PageTransition? transition, Object? arguments, bool? removeAllRoutes, bool Function(Route<dynamic> route)? removeUntil}) {
    if (null != routes[route]) {
      var transitionAplly = transition == null
          ? PageTransition(
              child: routes[route]!(context, arguments),
              type: type == null ? PageTransitionType.rightToLeftWithFade : type,
              duration: duration == null ? Duration(milliseconds: 500) : duration,
            )
          : transition;

      if (removeAllRoutes != null && removeAllRoutes) {
        Navigator.of(context).pushAndRemoveUntil(transitionAplly, (route) => false);
      } else if (removeUntil != null) {
        Navigator.of(context).pushAndRemoveUntil(transitionAplly, removeUntil);
      } else {
        Navigator.of(context).push(transitionAplly);
      }
    } else {
      print("Rota não cadastrada");
    }
  }
}
