import 'package:flutter/material.dart';
import 'package:natura_on_track/src/components/core/CardArguments.dart';
import 'package:natura_on_track/src/components/core/CardDetail.dart';
import 'package:natura_on_track/src/features/core/home/HomeSimple.dart';
import 'package:natura_on_track/src/features/core/login/Login.dart';
import 'package:natura_on_track/src/features/core/menu/Menu.dart';
import 'package:natura_on_track/src/features/desenvolvimento/profile/ProfilePage.dart';
import 'package:natura_on_track/src/features/experienciaCompras/OrderWebView.dart';
import 'package:page_transition/page_transition.dart';

class NavigatorNatura {
  static Map<String, Widget Function(BuildContext, Object?)> routes = {
    '/': (context, arguments) => Login(),
    '/home': (context, arguments) => HomeSimple(),
    '/menu': (context, arguments) => Menu(),
    '/order': (context, arguments) => OrderWebView(),
    '/profile': (context, arguments) => ProfilePage(),
    '/cardDetail': (context, arguments) => CardDetail(arguments: arguments as CardArguments),
  };

  //static NavigatorNatura cleanToHome(BuildContext context) => Navigator.of(context).pushAndRemoveUntil('', (route) {});
  static pushLogin(BuildContext context) => push(route: '/', context: context, type: PageTransitionType.bottomToTop, duration: Duration(milliseconds: 1000));
  static pushHome(BuildContext context) => push(route: '/home', context: context, type: PageTransitionType.fade, duration: Duration(milliseconds: 1));
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
  static pushOrder(BuildContext context) => push(route: '/order', context: context);
  static pushProfile(BuildContext context) => push(route: '/profile', context: context);
  static pushCardDetail(BuildContext context, {CardArguments? arguments}) => push(
      route: '/cardDetail',
      context: context,
      transition: PageTransition(
        child: NavigatorNatura.routes['/cardDetail']!(context, arguments),
        type: PageTransitionType.fade,
        duration: Duration(milliseconds: 500),
      ));

  static push({required String route, required BuildContext context, PageTransitionType? type, Duration? duration, PageTransition? transition, Object? arguments}) {
    if (null != routes[route]) {
      Navigator.of(context).push(
        transition == null
            ? PageTransition(
                child: routes[route]!(context, arguments),
                type: type == null ? PageTransitionType.rightToLeftWithFade : type,
                duration: duration == null ? Duration(milliseconds: 500) : duration,
              )
            : transition,
      );
    } else {
      print("Rota não cadastrada");
    }
  }
}
