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
          id: 0,
          label: 'Menu',
          position: 0,
          route: '/',
          children: [
            MenuItem(id: 1, label: 'Inicio', position: 1, route: '/home', icon: 'outlined-navigation-home'),
            MenuItem(id: 2, label: 'Perfil', position: 1, route: '/profile', icon: 'outlined-social-person'),
            MenuItem(id: 2, label: 'Fale com a Nat', position: 1, route: '/profile', icon: 'outlined-social-person'),
            MenuItem(id: 22, label: 'Novo Pedido', position: 1, route: '/newOrder', icon: 'outlined-action-newrequest'),
            MenuItem(id: 2, label: 'Pedidos', position: 1, route: '/pedidos', icon: 'outlined-action-request', children: [
              MenuItem(id: 21, label: 'orders', position: 1, route: '/orders'),
              MenuItem(id: 22, label: 'newOrder', position: 1, route: '/newOrder'),
            ]),
            MenuItem(id: 1, label: 'Ciclos', position: 1, route: '/home', icon: "outlined-action-cycle"),
            MenuItem(id: 1, label: 'Revistas Natura', position: 1, route: '/home'),
            MenuItem(id: 1, label: 'Caminho de crescimento', position: 1, route: '/home'),
            MenuItem(id: 1, label: 'home', position: 1, route: '/home'),
            MenuItem(id: 99, label: 'Sair', position: 1, route: '/home', icon: 'outlined-navigation-exit')
          ],
        ),
      ),
    );
  }
}
