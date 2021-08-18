import 'package:flutter/material.dart';
import 'package:natura_on_track/src/components/core/CardDetail.dart';
import 'package:natura_on_track/src/features/core/home/HomeSimple.dart';
import 'package:natura_on_track/src/features/core/login/Login.dart';
import 'package:natura_on_track/src/features/core/menu/Menu.dart';
import 'package:natura_on_track/src/features/desenvolvimento/profile/ProfilePage.dart';
import 'package:natura_on_track/src/features/experienciaCompras/OrderWebView.dart';
import 'package:page_transition/page_transition.dart';

class NavigatorNatura {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => Login(),
    '/home': (context) => HomeSimple(),
    '/menu': (context) => Menu(),
    '/order': (context) => OrderWebView(),
    '/profile': (context) => ProfilePage(),
    '/cardDetail': (context) => CardDetail(),
  };

  //static NavigatorNatura cleanToHome(BuildContext context) => Navigator.of(context).pushAndRemoveUntil('', (route) {});
  static pushLogin(BuildContext context) => push(route: '/', context: context, type: PageTransitionType.bottomToTop, duration: Duration(milliseconds: 1000));
  static pushHome(BuildContext context) => push(route: '/home', context: context, type: PageTransitionType.fade, duration: Duration(milliseconds: 1));
  static pushHomeStart(BuildContext context) => push(
        route: '/home',
        context: context,
        transition: PageTransition(
          child: NavigatorNatura.routes['/home']!(context),
          curve: Curves.linear,
          type: PageTransitionType.scale,
          alignment: Alignment.center,
          duration: Duration(milliseconds: 700),
        ),
      );
  static pushMenu(BuildContext context, {PageTransitionType? type, Duration? duration}) => push(route: '/menu', context: context, type: type, duration: duration);
  static pushOrder(BuildContext context) => push(route: '/order', context: context);
  static pushProfile(BuildContext context) => push(route: '/profile', context: context);
  static pushCardDetail(BuildContext context) => push(route: '/cardDetail', context: context);

  static push({required String route, required BuildContext context, PageTransitionType? type, Duration? duration, PageTransition? transition}) {
    if (null != routes[route]) {
      Navigator.of(context).push(transition == null
          ? PageTransition(
              child: routes[route]!(context),
              type: type == null ? PageTransitionType.rightToLeftWithFade : type,
              duration: duration == null ? Duration(milliseconds: 500) : duration,
            )
          : transition);
    } else {
      print("Rota não cadastrada");
    }
  }
}
