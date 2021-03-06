// Mocks generated by Mockito 5.0.15 from annotations
// in gxp/test/src/features/core/menu/load_menu_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i4;

import 'package:dartz/dartz.dart' as _i2;
import 'package:gxp/src/features/commons/entities/commons_entities.dart' as _i7;
import 'package:gxp/src/features/core/menu/entities/menu.dart' as _i6;
import 'package:gxp/src/features/core/menu/errors/errors.dart' as _i5;
import 'package:gxp/src/features/core/menu/repository/menu_repository.dart'
    as _i3;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeEither_0<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

/// A class which mocks [MenuRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockMenuRepository extends _i1.Mock implements _i3.MenuRepository {
  MockMenuRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Either<_i5.FailureLoadMenu, _i6.Menu>> loadMenu(
          _i7.BusinessUnit? company) =>
      (super.noSuchMethod(Invocation.method(#loadMenu, [company]),
          returnValue: Future<_i2.Either<_i5.FailureLoadMenu, _i6.Menu>>.value(
              _FakeEither_0<_i5.FailureLoadMenu, _i6.Menu>())) as _i4
          .Future<_i2.Either<_i5.FailureLoadMenu, _i6.Menu>>);
  @override
  String toString() => super.toString();
}
