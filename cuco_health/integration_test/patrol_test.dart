import 'package:cuco_health/src/app_widget.dart';
import 'package:cuco_health/src/core/theme/store/theme_store.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:provider/provider.dart';

import 'robots/robot_friends_page.dart';
import 'robots/robot_perfil_page.dart';

void main() {
  group(
    'Perfil Page - ',
    () {
      patrolTest(
        'Validar elementos da página',
        nativeAutomation: true,
        tags: 'perfilElements',
        ($) async {
          final themeStore = ThemeStore();
          await themeStore.init();
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
          await $.pumpWidgetAndSettle(Provider(
            create: (_) => themeStore,
            child: const AppWidget(),
          ));
          final perfilRobot = PerfilRobot($);

          await perfilRobot.findPerfilLabels();
          await $.pumpAndSettle();
        },
      );
      patrolTest(
        'Faz a verificação e acionamento do botão de alternar o tema.',
        nativeAutomation: true,
        tags: 'buttonTheme',
        ($) async {
          final themeStore = ThemeStore();
          await themeStore.init();
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
          await $.pumpWidgetAndSettle(Provider(
            create: (_) => themeStore,
            child: const AppWidget(),
          ));
          final perfilRobot = PerfilRobot($);
          await perfilRobot.buttonDarkTheme();
          await $.pumpAndSettle();
        },
      );

      patrolTest(
        'Botão Amigos',
        nativeAutomation: true,
        tags: 'friendsButton',
        ($) async {
          final themeStore = ThemeStore();
          await themeStore.init();
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
          await $.pumpWidgetAndSettle(Provider(
            create: (_) => themeStore,
            child: const AppWidget(),
          ));
          final perfilRobot = PerfilRobot($);
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
          final themeStore = ThemeStore();
          await themeStore.init();
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
          await $.pumpWidgetAndSettle(Provider(
            create: (_) => themeStore,
            child: const AppWidget(),
          ));
          final perfilRobot = PerfilRobot($);
          final friendsRobot = FriendsRobot($);

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
          final themeStore = ThemeStore();
          await themeStore.init();
          SystemChrome.setPreferredOrientations([
            DeviceOrientation.portraitUp,
            DeviceOrientation.portraitDown,
          ]);
          await $.pumpWidgetAndSettle(Provider(
            create: (_) => themeStore,
            child: const AppWidget(),
          ));
          final perfilRobot = PerfilRobot($);
          final friendsRobot = FriendsRobot($);

          await perfilRobot.friendsButton();
          await friendsRobot.tapFriendCard();
          await $.pumpAndSettle();
        },
      );
    },
  );
}
