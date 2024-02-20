import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';

import 'robots/robot_friends_page.dart';
import 'robots/robot_perfil_page.dart';
import 'robots/robot_splash.dart';

void main() {
  group(
    'Perfil Page - ',
    () {
      patrolTest(
        'Validar elementos da página',
        nativeAutomation: true,
        tags: 'perfilElements',
        ($) async {
          final perfilRobot = PerfilRobot($);
          final splashRobot = SplashRobot($);

          splashRobot.initializeApp();
          await $.pumpAndSettle();

          await perfilRobot.findPerfilLabels();
          await $.pumpAndSettle();
        },
      );
      patrolTest(
        'Faz a verificação e acionamento do botão de alternar o tema.',
        nativeAutomation: true,
        tags: 'buttonTheme',
        ($) async {
          final perfilRobot = PerfilRobot($);

          final splashRobot = SplashRobot($);

          splashRobot.initializeApp();
          await $.pumpAndSettle();

          await perfilRobot.buttonDarkTheme();
          await $.pumpAndSettle();
        },
      );

      patrolTest(
        'Botão Amigos',
        nativeAutomation: true,
        tags: 'friendsButton',
        ($) async {
          final perfilRobot = PerfilRobot($);

          final splashRobot = SplashRobot($);

          splashRobot.initializeApp();
          await $.pumpAndSettle();

          await perfilRobot.friendsButton();
          await $.pumpAndTrySettle();
        },
      );
    },
  );

  group(
    'Friends Page - ',
    () {
      patrolTest(
        'Verificar se existe card no gridView',
        nativeAutomation: true,
        tags: 'tapGridView',
        ($) async {
          final perfilRobot = PerfilRobot($);
          final friendsRobot = FriendsRobot($);
          final splashRobot = SplashRobot($);

          splashRobot.initializeApp();
          await $.pumpAndSettle();

          await perfilRobot.friendsButton();
          await friendsRobot.existFriendCard();
          await $.pumpAndSettle();
        },
      );
      patrolTest(
        'Clicar em elemento do gridView',
        nativeAutomation: true,
        tags: 'tapGridView',
        ($) async {
          final perfilRobot = PerfilRobot($);
          final friendsRobot = FriendsRobot($);
          final splashRobot = SplashRobot($);

          splashRobot.initializeApp();
          await $.pumpAndSettle();

          await perfilRobot.friendsButton();
          await friendsRobot.tapFriendCard();
          await $.pumpAndSettle();
        },
      );
    },
  );
}
