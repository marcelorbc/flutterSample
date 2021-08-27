import 'package:dartz/dartz.dart';
import 'package:gxp/src/features/commons/entities/commons_entities.dart';

import '../errors/errors.dart';
import '../entities/menu.dart';
import '../menu.dart';

abstract class MenuRepository {
  Future<Either<FailureLoadMenu, Menu>> loadMenu(BusinessUnit businessUnit);
}

class MenuRepositoryHardCoded implements MenuRepository {
  Future<Either<FailureLoadMenu, Menu>> loadMenu(BusinessUnit businessUnit) async {
    return Right(
      Menu(
        businessUnit: businessUnit,
        me: MenuItem(
          label: 'Menu',
          position: 0,
          route: '/',
          children: [
            MenuItem(label: 'home', position: 1, route: '/home'),
            MenuItem(label: 'pedidos', position: 1, route: '/pedidos', icon: 'outlined-action-add', children: [
              MenuItem(label: 'orders', position: 1, route: '/orders'),
              MenuItem(label: 'newOrder', position: 1, route: '/newOrder'),
            ]),
            MenuItem(label: 'home', position: 1, route: '/home'),
            MenuItem(label: 'home', position: 1, route: '/home'),
            MenuItem(label: 'home', position: 1, route: '/home'),
            MenuItem(label: 'home', position: 1, route: '/home')
          ],
        ),
      ),
    );
  }
}
