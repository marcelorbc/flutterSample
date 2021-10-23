import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gxp/src/features/commons/entities/commons_entities.dart';
import 'package:gxp/src/features/core/menu/menu.dart';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'load_menu_test.mocks.dart';

@GenerateMocks([MenuRepository])
main() {
  final repo = MockMenuRepository();
  final useCase = LoadMenuImpl(repository: repo);

  final company = Company(uid: '', name: '');
  final country = Country(uid: '', name: '', initials: '', lang: '');

  test('Test load menu successfully ', () async {
    final businessModel = BusinessModel(sequence: 1, uid: '', name: '');
    final businessUnit = BusinessUnit(company: company, country: country, businessModel: businessModel);

    when(repo.loadMenu(businessUnit)).thenAnswer(
      (_) async => Right(
        Menu(
          businessUnit: businessUnit,
          me: MenuItem(
            id: 0,
            label: 'Menu',
            position: 0,
            route: '/',
            children: [
              MenuItem(id: 1, label: 'home', position: 1, route: '/home'),
              MenuItem(id: 1, label: 'pedidos', position: 1, route: '/pedidos', children: [
                MenuItem(id: 1, label: 'orders', position: 1, route: '/orders'),
                MenuItem(id: 1, label: 'newOrder', position: 1, route: '/newOrder'),
              ])
            ],
          ),
        ),
      ),
    );

    var result = (await useCase(businessUnit)).fold(id, id);

    expect(result, isA<Menu>());
  });
  test('Test when business model sequence is 2 ', () async {
    final businessModel = BusinessModel(sequence: 2, uid: '', name: '');
    final businessUnit = BusinessUnit(company: company, country: country, businessModel: businessModel);

    when(repo.loadMenu(businessUnit)).thenAnswer((_) async => Left(InvalidBusinessUnit()));

    var result = (await useCase(businessUnit)).fold(id, id);

    expect(result, isA<InvalidBusinessUnit>());
  });
}
