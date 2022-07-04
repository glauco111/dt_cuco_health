import '../../../core/error/failures.dart';
import 'package:dartz/dartz.dart';

import '../../../core/domain/entities/person_entities.dart';

abstract class IPerfilRepository {
  Future<Either<IFailure,Person>> getPerson();
}