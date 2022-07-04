import '../../../core/data/model/person_model.dart';
import '../../../core/domain/entities/person_entities.dart';
import '../../../core/error/failures.dart';
import '../domain/i_perfil_repository.dart';
import 'package:dartz/dartz.dart';

import 'data_source/i_perfil_data_source.dart';

class PerfilRepository implements IPerfilRepository {
  final IPerfilDataSource _perfilDataSource;

  PerfilRepository(IPerfilDataSource perfilDataSource)
      : _perfilDataSource = perfilDataSource;

  @override
  Future<Either<IFailure, Person>> getPerson() async {
    try {
      PersonModel person = await _perfilDataSource.getPerson();
      return Right(person.toEntity());
    } catch (e) {
      return Left(ServerFailure(details: e.toString()));
    }
  }
}
