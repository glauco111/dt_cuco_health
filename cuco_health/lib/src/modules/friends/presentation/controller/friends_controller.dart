import 'dart:async';

import 'package:cuco_health/src/core/widgets/error_modal.dart';
import 'package:cuco_health/src/modules/friends/domain/usecases/get_friends_usecase.dart';
import 'package:flutter/cupertino.dart';

import '../../../../core/domain/entities/person_entities.dart';
import '../../../../core/domain/enums/page_state.dart';
import '../../../../core/error/failures.dart';
import 'package:mobx/mobx.dart';
part 'friends_controller.g.dart';

class FriendsController = _FriendsControllerBase with _$FriendsController;

abstract class _FriendsControllerBase with Store {
  final GetFriendsUsecase _getFriends;

  _FriendsControllerBase({
    required GetFriendsUsecase getFriends,
  }) : _getFriends = getFriends;

  @observable
  late String search = '';

  @observable
  List<Person> _friends = [];

  @observable
  PageState state = PageState.start;

  Future<void> pipeline(BuildContext context) async {
    setState(PageState.loading);

    var friendsOrFailure = await _getFriends();
    return friendsOrFailure.fold((failure) => setError(context, failure),
        (friends) {
      _friends = friends;
      _friends.isEmpty
          ? setState(PageState.empty)
          : setState(PageState.success);
    });
  }

  @computed
  List<Person> get friends {
    if (search != '') {          
      return _friends
          .where((person) => person.name.toLowerCase().contains(search))
          .toList();
    }
    return _friends;
  }

  void setError(context, IFailure failure) {
    debugPrint(failure.details);
    ErrorModal().show(context, () => pipeline(context));
    setState(PageState.error);
  }

  void setState(PageState state) => this.state = state;

  void setSearch(text) => search = text.toLowerCase();
}
