import 'package:cuco_health/src/core/error/failures.dart';
import 'package:cuco_health/src/core/domain/entities/person_entities.dart';
import 'package:cuco_health/src/modules/friends/data/data_source/i_friends_data_source.dart';
import 'package:cuco_health/src/modules/friends/domain/i_friends_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class FriendsRepository implements IFriendsRepository {
  final IFriendsDataSource _dataSource;

  FriendsRepository(this._dataSource);

  @override
  Future<Either<IFailure, List<Person>>> getFriends() async {
    try {
      var friends = await _dataSource.getPeople();
      return Right(friends.map((person) => person.toEntity()).toList());
    } catch (e) {
      debugPrint(e.toString());
      return Left(ServerFailure(details: e.toString()));
    }
  }
}
