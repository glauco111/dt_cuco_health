import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

class FriendsRobot {
  FriendsRobot(
    this.$,
  );
  final PatrolIntegrationTester $;

  Future<void> existFriendCard() async {
    final gridViewFinder = $(GridView);
    expect(gridViewFinder, findsOneWidget);
    expect($(#friendCard), findsWidgets);
    await $.pump();
  }

  Future<void> tapFriendCard() async {
    final gridViewFinder = $(GridView);
    expect(gridViewFinder, findsOneWidget);
    await $.pumpAndSettle();
    await $.tap($(#friendCard).at(0));
    await $.pump();
  }
}
