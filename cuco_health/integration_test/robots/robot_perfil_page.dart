import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

class PerfilRobot {
  PerfilRobot(this.$);
  final PatrolIntegrationTester $;

  Future<void> findPerfilLabels() async {
    await Future.delayed(const Duration(seconds: 3));

    expect($(#photoPerfil), findsOneWidget);
    expect($(#namePerfil), findsOneWidget);
    expect($(#emailPerfil), findsOneWidget);
    expect($(#phonePerfil), findsOneWidget);
    expect($(#localPerfil), findsOneWidget);
    expect($(#idadePerfil), findsOneWidget);
    expect($(#friendsSelected), findsNothing);
  }

  Future<void> buttonDarkTheme() async {
    await Future.delayed(const Duration(seconds: 5));
    expect($(#lightTheme), findsNothing);
    await $(#buttonTheme).tap();
    await Future.delayed(const Duration(seconds: 5));
    expect($(#lightTheme), findsOneWidget);
    await $(#buttonTheme).tap();
    expect($(#lightTheme), findsNothing);
    await Future.delayed(const Duration(seconds: 5));
  }

  Future<void> friendsButton() async {
    expect($(#friendsSelected), findsNothing);
    await $('Amigos').tap();
    await $.pumpAndSettle();
  }
}
