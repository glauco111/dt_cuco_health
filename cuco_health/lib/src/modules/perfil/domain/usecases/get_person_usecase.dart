import 'package:dartz/dartz.dart';

import '../../../../core/domain/entities/person_entities.dart';
import '../../../../core/error/failures.dart';
import '../i_perfil_repository.dart';

class GetPersonUsecase {
  final IPerfilRepository _perfilRepository;
  GetPersonUsecase(IPerfilRepository perfilRepository)
      : _perfilRepository = perfilRepository;

  Future<Either<IFailure, Person>> call() async {
    var personOrFailure = await _perfilRepository.getPerson();
    return personOrFailure;
  }
}
