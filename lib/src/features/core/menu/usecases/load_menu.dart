import 'package:dartz/dartz.dart';
import 'package:gxp/src/features/commons/entities/commons_entities.dart';
import 'package:gxp/src/features/core/menu/Menu.dart';
import 'package:gxp/src/features/core/menu/repository/menu_repository.dart';

abstract class LoadMenu {
  Future<Either<FailureLoadMenu, Menu>> call(BusinessUnit company);
}

class LoadMenuImpl implements LoadMenu {
  final MenuRepository repository;
  LoadMenuImpl({required this.repository});

  Future<Either<FailureLoadMenu, Menu>> call(BusinessUnit company) async {
    if (company.businessModel.sequence == 2) {
      return Left(InvalidBusinessUnit());
    } else {
      return repository.loadMenu(company);
    }
  }
}
