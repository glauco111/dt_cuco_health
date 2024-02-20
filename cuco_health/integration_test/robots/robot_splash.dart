import 'package:cuco_health/src/app_widget.dart';
import 'package:cuco_health/src/core/theme/store/theme_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:patrol/patrol.dart';
import 'package:provider/provider.dart';

class SplashRobot {
  final PatrolIntegrationTester $;
  SplashRobot(this.$);

  Future<void> initializeApp() async {
    final themeStore = ThemeStore();
    await themeStore.init();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    runApp(Provider(
      create: (_) => themeStore,
      child: const AppWidget(),
    ));
  }
}
