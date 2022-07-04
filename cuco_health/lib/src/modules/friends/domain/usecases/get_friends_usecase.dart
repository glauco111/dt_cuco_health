import 'package:cuco_health/src/modules/friends/domain/i_friends_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/domain/entities/person_entities.dart';
import '../../../../core/error/failures.dart';

class GetFriendsUsecase {
  final IFriendsRepository _friendsRepository;
  GetFriendsUsecase(IFriendsRepository friendsRepository)
      : _friendsRepository = friendsRepository;

  Future<Either<IFailure, List<Person>>> call() async {
    var personOrFailure = await _friendsRepository.getFriends();
    return personOrFailure;
  }
}
