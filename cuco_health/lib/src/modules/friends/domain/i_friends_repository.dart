import 'package:dartz/dartz.dart';

import '../../../core/domain/entities/person_entities.dart';
import '../../../core/error/failures.dart';

abstract class IFriendsRepository {
  Future<Either<IFailure, List<Person>>> getFriends();
}
