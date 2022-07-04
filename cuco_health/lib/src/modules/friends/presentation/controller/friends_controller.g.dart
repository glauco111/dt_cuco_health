// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friends_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FriendsController on _FriendsControllerBase, Store {
  Computed<List<Person>>? _$friendsComputed;

  @override
  List<Person> get friends =>
      (_$friendsComputed ??= Computed<List<Person>>(() => super.friends,
              name: '_FriendsControllerBase.friends'))
          .value;

  late final _$searchAtom =
      Atom(name: '_FriendsControllerBase.search', context: context);

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  late final _$_friendsAtom =
      Atom(name: '_FriendsControllerBase._friends', context: context);

  @override
  List<Person> get _friends {
    _$_friendsAtom.reportRead();
    return super._friends;
  }

  @override
  set _friends(List<Person> value) {
    _$_friendsAtom.reportWrite(value, super._friends, () {
      super._friends = value;
    });
  }

  late final _$stateAtom =
      Atom(name: '_FriendsControllerBase.state', context: context);

  @override
  PageState get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(PageState value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  @override
  String toString() {
    return '''
search: ${search},
state: ${state},
friends: ${friends}
    ''';
  }
}
